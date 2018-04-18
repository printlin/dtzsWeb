package action;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import bean.AdminBean;
import service.AdminService;

@Controller
public class AdminAction {
	private AdminService aS;
	@RequestMapping("reptileinfo")
	public String getReptileinfo(Model model){
		String[] re=aS.getReptileWeekData();
		model.addAttribute("day",re[0]);
		model.addAttribute("img",re[1]);
		model.addAttribute("tt",re[2]);
		return "root/reptileinfo.jsp";
	}
	//��ҳ��ʾ�û�
	@RequestMapping("/showadmin")
	public @ResponseBody Map<String,Object> showUserBypage(Model model,Integer page,int rest,int uid){
		Map<String,Object> map=new HashMap<String,Object>();
		if(rest==2){
			//��������
			boolean res=resetUserPWD(uid);
			int pagenow=(page-1)*6;
			int pageCount=0;
			int userCount=aS.selectAdminCount();
			if(userCount%6==0){
				pageCount=userCount/6;
			}else{
				pageCount=userCount/6+1;
			}
			List<AdminBean> lis=aS.showAdmin(pagenow);
			map.put("page", page);
			map.put("pagecount", pageCount);
			map.put("list", lis);
			List<AdminBean> l=aS.queryUser(uid);
			if(res)
			{	
				//��������ɹ����
				map.put("message", "�����û�"+l.get(0).getUsername()+"�ɹ�����ʼ����Ϊ123456!");
			}else{
				map.put("message", "�����û�"+l.get(0).getUsername()+"ʧ��!");
			}
			return map;
		}
		//ɾ���û�
		else if(rest==3){
			List<AdminBean> l=aS.queryUser(uid);
			boolean res=deleteUserById(uid);
			int pagenow=(page-1)*6;
			int pageCount=0;
			int userCount=aS.selectAdminCount();
			if(userCount%6==0){
				pageCount=userCount/6;
			}else{
				pageCount=userCount/6+1;
			}
			List<AdminBean> lis=aS.showAdmin(pagenow);
			map.put("page", page);
			map.put("pagecount", pageCount);
			map.put("list", lis);
			if(res)
			{	
				//ɾ���û��ɹ����
				map.put("message", "ɾ���û�"+l.get(0).getUsername()+"�ɹ���");
			}else{
				map.put("message", "ɾ���û�"+l.get(0).getUsername()+"ʧ��!");
			}
			return map;
		}
		//�޸��û�״̬
		else if(rest>4){
			List<AdminBean> l=aS.queryUser(uid);
			String state="";
			if(rest==5){
				state="admin";
			}
			if(rest==6){
				state="vip";
			}
			if(rest==7){
				state="right";
			}
			if(rest==8){
				state="limited";
			}
			if(rest==9){
				state="ban";
			}
			boolean res=updateUser(state, uid);
			int pagenow=(page-1)*6;
			int pageCount=0;
			int userCount=aS.selectAdminCount();
			
			if(userCount%6==0){
				pageCount=userCount/6;
			}else{
				pageCount=userCount/6+1;
			}
			List<AdminBean> lis=aS.showAdmin(pagenow);
			map.put("page", page);
			map.put("pagecount", pageCount);
			map.put("list", lis);
			if(res)
			{	
				//�޸��û��ɹ����
				map.put("message", "�޸��û�"+l.get(0).getUsername()+"Ϊ"+state+"�ɹ���");
			}else{
				map.put("message", "�޸��û�"+l.get(0).getUsername()+"Ϊ"+state+"ʧ��!");
			}
			return map;
		}
		else{
		int pagenow=(page-1)*6;
		int pageCount=0;
		int userCount=aS.selectAdminCount();
		
		if(userCount%6==0){
			pageCount=userCount/6;
		}else{
			pageCount=userCount/6+1;
		}
		List<AdminBean> lis=aS.showAdmin(pagenow);
		map.put("page", page);
		map.put("pagecount", pageCount);
		map.put("list", lis);
//		System.out.println(lis.get(0).getUsername());
//		System.out.println(lis.get(1).getUsername());
		return map;
		}
	}
	//ɾ���û�ͨ��uid
	@RequestMapping("/deleteuser")
	public boolean deleteUserById(int uid){
		return aS.deleteUserById(uid);
	
	}
	//�޸��û�״̬ͨ��id
	@RequestMapping("/updateUserState")
	public boolean updateUser(String state,int uid ){
		return aS.updateUser(state, uid);
	}
	//�����û������ʼ����Ϊ123456
	@RequestMapping("/resetUserPWD")
	public boolean resetUserPWD(int uid){
		return aS.resetUserPWD(uid);		
	}
	//ͨ��uid�鿴�����û�
	@RequestMapping("queryUser")
	public String selectUserByUid (Model model,int uid){
		List<AdminBean> lis=aS.queryUser(uid);
//		System.out.println(lis.get(0).getUsername());
		model.addAttribute("dyuser", lis);
		return "test.jsp";
	}
	//ģ����ѯ�û�ͨ������
	@RequestMapping("/selectUserLike")
	public @ResponseBody Map<String,Object>  selectUserLike(Model model,String username) throws UnsupportedEncodingException{
		if(username!=null&&!"".equals(username)){
			//������������н���
		username=URLDecoder.decode(username,"utf-8");
		}
//		System.out.println(username);
		List<AdminBean> li=aS.selectUserLike(username);
		Map<String,Object> mp=new HashMap<String, Object>();
		int likeUserCount=aS.likeAdminCount(username);
		mp.put("li", li);
		mp.put("likecount", likeUserCount);
//		model.addAttribute("adlist", li);
//		System.out.println(li.get(0).getUsername());
//		System.out.println(li.get(1).getUsername());
		return mp;
	}
	public AdminService getaS() {
		return aS;
	}
	public void setaS(AdminService aS) {
		this.aS = aS;
	}
}
