package action;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.imageio.ImageIO;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import bean.UserBean;
import service.UserService;
import util.ChackCode;
import util.WebUtil;

@Controller
public class UserAction {
	private UserService uS;

	@RequestMapping("/login")
	public void login(HttpSession session,HttpServletRequest request,HttpServletResponse response,String username,String password,String chackcode,String type,String remember){
		System.out.println(username+"   "+password+"  "+chackcode+"  "+type+"  "+remember);
		HashMap<String, String> mes=loginChack(username, password);
		PrintWriter out=null;
		try {
			response.setContentType("text/html;charset=utf-8");
			response.setCharacterEncoding("UTF-8");
			out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		if(mes.size()<=0){
			Object s_chackCodeOb=session.getAttribute("chackCode");
			if(s_chackCodeOb!=null){
				String s_chackCode=(String) s_chackCodeOb;
				if(chackcode==null){
					mes.put("chackCode", "*��֤�벻��Ϊ��");
				}else if(!chackcode.toLowerCase().equals(s_chackCode.toLowerCase())){
					mes.put("chackCode", "*��֤�����");
				}else{//������֤ͨ��
					if(type!=null && type.equals("submit")){//����ǵ���ύ
						UserBean ub=uS.login(username, password);
						if(ub!=null){
							String ip=getRemoteHost(request);
							uS.updateUserAtLogin(ub, ip);
							session.setAttribute("user", ub);
							if(remember.equals("true")){
								Cookie cookie=new Cookie("isLogin",username+"&"+password);
								cookie.setMaxAge(60*60*24*7);//��������
								cookie.setPath("/");
								response.addCookie(cookie);
							}
							mes.put("susses", "��¼�ɹ�");
							System.out.println("��¼�ɹ���"+username);
						}else{
							mes.put("loginError", "�û������������");
						}
						
					}
				}
			}else{
				mes.put("chackCode", "*������������֤��ʧ��,������");
			}
		}
		out.print(WebUtil.mapToJson(mes));
	}
	@RequestMapping("/regist")
	public void regist(HttpSession session,String username,String password,String question,String answer,String chackcode,String type,HttpServletResponse response){
		System.out.println(username+"   "+password+"  "+chackcode+"  "+type+"  "+question+"  "+answer);
		HashMap<String, String> mes=registChack(username);
		PrintWriter out=null;
		try {
			response.setContentType("text/html;charset=utf-8");
			response.setCharacterEncoding("UTF-8");
			out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		if(mes.size()<=0){
			Object s_chackCodeOb=session.getAttribute("chackCode");
			if(s_chackCodeOb!=null){
				String s_chackCode=(String) s_chackCodeOb;
				if(chackcode==null){
					mes.put("chackCode", "*��֤�벻��Ϊ��");
				}else if(!chackcode.toLowerCase().equals(s_chackCode.toLowerCase())){
					mes.put("chackCode", "*��֤�����");
				}else{//������֤ͨ��
					if(type!=null && type.equals("submit")){//����ǵ���ύ
						boolean isR=uS.regist(username, password, question, answer);
						if(isR){
							mes.put("susses", "ע��ɹ�");
							System.out.println("ע��ɹ���"+username);
						}else{
							mes.put("registError", "����ϵͳԭ��ע��ʧ��");
						}
						
					}
				}
			}else{
				mes.put("chackCode", "*������������֤��ʧ��,������");
			}
		}
		out.print(WebUtil.mapToJson(mes));
	}
	
	@RequestMapping("/getuser")
	public @ResponseBody UserBean getuser(HttpSession session){
		Object ob=session.getAttribute("user");
		if(ob==null){return null;}
		return (UserBean)ob;
	}
	
	@RequestMapping("/chackcode")
	public void chackcode(HttpSession session,HttpServletResponse response){
		ChackCode cc=new ChackCode();
		response.setContentType("image/jpeg");
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		Object[] ob=cc.getChackCode();
		session.setAttribute("chackCode", ob[0]);
		try {
			ImageIO.write((BufferedImage) ob[1], "jpg", response.getOutputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	private HashMap<String,String> loginChack(String username,String password){
		HashMap<String,String> errors=new HashMap<String, String>();
		if(username!=null && !username.trim().equals("")){
				if(!uS.haveUsername(username)){
					errors.put("username", "*�û���������");
					return errors;
				}
		}else{
			errors.put("username", "*�û�������Ϊ��");
			return errors;
		}
		if(password!=null && !password.trim().equals("")){
			
		}else{
			errors.put("password", "*���벻��Ϊ��");
			return errors;
		}
		if(uS.login(username, password)==null){
			errors.put("password", "*�������");
			return errors;
		}
		return errors;
	}
	private HashMap<String,String> registChack(String username){
		HashMap<String,String> errors=new HashMap<String, String>();
		if(username!=null && !username.trim().equals("")){
			if(username.length()>10){
				errors.put("username", "*�û������ܳ���10���ַ�");
				return errors;
			}else if(uS.haveUsername(username)){
				errors.put("username", "*�û����Ѵ���");
				return errors;
			}
		}else{
			errors.put("username", "*�û�������Ϊ��");
			return errors;
		}
		
		return errors;
	}
	private String getRemoteHost(HttpServletRequest request){
	    String ip = request.getHeader("x-forwarded-for");
	    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
	        ip = request.getHeader("Proxy-Client-IP");
	    }
	    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
	        ip = request.getHeader("WL-Proxy-Client-IP");
	    }
	    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
	        ip = request.getRemoteAddr();
	    }
	    return ip.equals("0:0:0:0:0:0:0:1")?"127.0.0.1":ip;
	}
	public UserService getuS() {
		return uS;
	}

	public void setuS(UserService uS) {
		this.uS = uS;
	}
	
	
}
