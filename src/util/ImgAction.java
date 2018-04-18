package util;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;


import bean.ImgBean;
import bean.UserBean;
import net.coobird.thumbnailator.Thumbnails;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import service.ImgService;

@Controller
public class ImgAction {
	private ImgService imgS;
	
	
	@RequestMapping("/index")
	public String getpageMax(Model model){
		List<List<Map<String, Object>>> ttlist=imgS.findTtToIndex();
		List<List<Map<String, Object>>> relist=new ArrayList<List<Map<String, Object>>>();
		for(List<Map<String, Object>> ttb:ttlist){//��Щ��ͼ��������4�ţ�ǰֻ̨����ʾ4�ţ��˴��и�
			if(ttb!=null){
				if(ttb.size()>4){
					List<Map<String, Object>> newimgs=new ArrayList<Map<String, Object>>();
					for(int i=0;i<4;i++){
						newimgs.add(ttb.get(i));
					}
					relist.add(newimgs);
				}else{
					relist.add(ttb);
				}
			}
		}
		model.addAttribute("ttlist", relist);
		model.addAttribute("imglist", imgS.findToIndex());
		return "index.jsp";
	}
	
	@RequestMapping("/jumptt")
	public String getTtById(Model model,Long ttId){
		if(ttId==null){return "jumpindex.html";}
		List<ImgBean> list=imgS.findByTtId(ttId);
		model.addAttribute("list",list);
		return "ttshow.jsp";
	}
	
	@RequestMapping("/upload")
	public void upload(HttpSession session,HttpServletResponse response,String title,String tag,String chackcode,String imgs){
		System.out.println(title+"  "+tag+"  "+chackcode+"  "+imgs+"  ");
		PrintWriter out=null;
		try {
			response.setContentType("text/html;charset=utf-8");
			response.setCharacterEncoding("UTF-8");
			out=response.getWriter();
		} catch (IOException e1) {
			System.out.println("��ȡ�����ʧ��");
			return;
		}
		//��֤����֤
		Object s_chackCodeOb=session.getAttribute("chackCode");
		if(s_chackCodeOb!=null){
			String s_chackCode=(String) s_chackCodeOb;
			if(chackcode==null){
				out.print("��֤�벻��Ϊ��");
				return;
			}else if(!chackcode.toLowerCase().equals(s_chackCode.toLowerCase())){
				out.print("��֤�����");
				return;
			}
		}else{
			out.print("������������֤��ʧ��,������");
			return;
		}
		//�û���¼�ж�
		Object ob=session.getAttribute("user");
		if(ob==null){
			out.print("δ��¼");
			return;
		}
		UserBean user=ob==null?null:(UserBean)ob;
		ImgBean[] ibs=null;
		int ii=0;//��ʵimgBean���±�
		 try {
	        // ���ַ���ת��ΪJSONArray����
			JSONArray jsonArray = JSONArray.fromObject(imgs);
			ibs=new ImgBean[jsonArray.size()];
	        if(jsonArray.size() > 0){
	        	// ���� jsonarray ���飬��ÿһ������ת�� json ����
	        	for(int i = 0; i < jsonArray.size(); i++){
		        	JSONObject jsonObject = jsonArray.getJSONObject(i);
		        	if(jsonObject.get("src")!=null && jsonObject.get("alt")!=null){
		        		String src=(String) jsonObject.get("src");
		        		String alt=(String) jsonObject.get("alt");
		        		if(!"".equals(src) && !"".equals(alt)){
		        			ibs[ii]=new ImgBean();
		        			ibs[ii].setSrc(src);
		        			ibs[ii].setAlt(alt);
		        			ii++;
		        		}
		        	}
	        	}
	        }
	     } catch (Exception e) {
	       e.printStackTrace();
	     }
		 boolean re=imgS.uploadImg(ibs, title, tag, user);
		 if(re){
			 out.print("�ɹ�");
			 return;
		 }else{
			 out.print("��ͼƬ������");
			 return;
		 }
	}
	
	@RequestMapping("/uploadimgs")
	public @ResponseBody List<ImgBean> uploadimgs(Model model,@RequestParam("file") CommonsMultipartFile[] files){
		List<ImgBean> ibs=new ArrayList<ImgBean>();
		String path1=this.getClass().getClassLoader().getResource("").getPath();// /C:/apache-tomcat-8.5.11/webapps/dtzsWeb/WEB-INF/classes/
         String path=path1.substring(1, path1.lastIndexOf("/WEB-INF/classes/"));// /C:/apache-tomcat-8.5.11/webapps/dtzsWeb
	     for(CommonsMultipartFile file:files){
	    	 ImgBean ib=new ImgBean();
	    	 String filename=file.getOriginalFilename();
	    	 String name="";
	    	 String pix="jpg";
	    	 float quality=1.0f;
	    	 if(filename!=null && !"".equals(filename)){
	    		 name=filename.substring(0,filename.lastIndexOf("."));
	    		 pix=filename.substring(filename.lastIndexOf(".")+1);
	    	 }
	    	 if(file.getSize()>1024*1024){
	    		 quality=0.25f;
	    	 }else if(file.getSize()>100*1024){
	    		quality=0.5f;
	    	 }
	    	 try {
	 			Thumbnails.of(file.getInputStream()).scale(1f)  
	 			.outputQuality(quality)  
	 			.outputFormat(pix)  
	 			.toFile(path+"/imgs/userupload/"+name+new Date().getTime());
	 			ib.setSrc("imgs/userupload/"+name+new Date().getTime()+"."+pix);
	 			System.out.println("imgs/userupload/"+name+new Date().getTime()+"."+pix);
	 			ib.setAlt(name);
	 			ibs.add(ib);
	 			System.out.println(name);
	 		 } catch (IllegalStateException e) {
	 			e.printStackTrace();
	 		 } catch (IOException e) {
	 			e.printStackTrace();
	 		 }
	     }
		 return ibs;
	}
	
	@RequestMapping("/ajaximgs")
	public @ResponseBody List<ImgBean> getAjaxImgByPage(Integer page){
		if(page==null){return null;}
		List<ImgBean> list=imgS.findByPage(page);
		return list;
	}
	
	@RequestMapping("/getimgs")
	public String getImgByPage(Model model,Integer page){
		if(page==null){return "jumpindex.html";}
		List<ImgBean> list=imgS.findByPage(page);
		model.addAttribute("imgs", list);
		model.addAttribute("page", page);
		model.addAttribute("pageMax", imgS.getImgMaxPage());
		return "imgs.jsp";
	}
	@RequestMapping("/ttimgs")
	public String jumpTtImg(Model model){//��ת��ϵ��ͼƬ��ʾҳ��
		model.addAttribute("pageMax", imgS.getImgTtMaxPage());
		return "ttimgs.jsp";
	}
	@RequestMapping("/imgs")
	public String jumpImg(Model model){//��ת��ͼƬ��ʾҳ��
		model.addAttribute("pageMax", imgS.getImgMaxPage());
		return "imgs.jsp";
	}
	
	@RequestMapping("/imgsbykey")
	public String getImgByKeywordAndPage(Model model,String key,Integer page){
		if(page==null){return "jumpindex.html";}
		model.addAttribute("pageMax", imgS.getImgByKeyMaxPage(key));
		model.addAttribute("key", key);
		return "imgssearch.jsp";
	}
	
	@RequestMapping("/ajaximgsbykey")
	public @ResponseBody List<ImgBean> getAjaxImgByKeywordAndPage(String key,Integer page){
		if(page==null){return null;}
		List<ImgBean> list=imgS.findByKeywordAndPage(key,page);
		return list;
	}
	
	@RequestMapping("/ajaxttimgs")
	public @ResponseBody List<List<Map<String, Object>>> getAjaxTtImgByPage(Integer page){
		if(page==null){return null;}
		List<List<Map<String, Object>>> list=imgS.findTtByPage(page);
		List<List<Map<String, Object>>> relist=new ArrayList<List<Map<String, Object>>>();
		for(List<Map<String, Object>> ttb:list){//��Щ��ͼ��������4�ţ�ǰֻ̨����ʾ4�ţ��˴��и�
			if(ttb.size()>4){
				List<Map<String, Object>> newimgs=new ArrayList<Map<String, Object>>();
				for(int i=0;i<4;i++){
					newimgs.add(ttb.get(i));
				}
				relist.add(newimgs);
			}else{
				relist.add(ttb);
			}
		}
		return relist;
	}
	
	@RequestMapping("/getttimgs")
	public String getTtImgByPage(Model model,Integer page){
		if(page==null){return "jumpindex.html";}
		List<List<Map<String, Object>>> list=imgS.findTtByPage(page);
		model.addAttribute("imgs", list);
		model.addAttribute("page", page);
		model.addAttribute("pageMax", imgS.getImgTtMaxPage());
		return "index.jsp";
	}
	
	@RequestMapping("/ttimgsbykey")
	public String getTtImgByKeywordAndPage(Model model,String key,Integer page){
		if(page==null){return "jumpindex.html";}
		List<List<Map<String, Object>>> list=imgS.findTtByKeywordAndPage(key,page);
		model.addAttribute("imgs", list);
		model.addAttribute("page", page);
		return "index.jsp";
	}
	
	@RequestMapping("/test")
	public void gete(Model model,@RequestParam("audioData") CommonsMultipartFile file){
		FileOutputStream out=null;
		InputStream in=null;
		try {
			out= new FileOutputStream("f:/tests/a.wav");
			in=file.getInputStream();
			byte[] b=new byte[1024];
			while(in.read(b)!=-1){
				out.write(b);
			}
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				out.close();in.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
	}
	
	
	public ImgService getImgS() {
		return imgS;
	}

	public void setImgS(ImgService imgS) {
		this.imgS = imgS;
	}
}
