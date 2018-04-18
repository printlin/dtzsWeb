package service;


import java.util.Date;

import bean.UserBean;
import dao.UserDao;


public class UserService {
	private UserDao uDao=null;

	public UserBean login(String username,String pwd){
		return uDao.findByUsernameAndPwd(username, pwd);
	}
	
	public boolean haveUsername(String username){
		return uDao.findUsername(username);
	}
	
	public boolean regist(String username,String pwd,String question,String answer){
		UserBean ub=new UserBean(0,username,pwd,"0.0.0.0",new Date(),0,"right",question,answer);
		return uDao.addUser(ub);
	}
	
	public boolean updateUserAtLogin(UserBean ub,String ip){
		ub.setLastip(ip);
		ub.setLasttime(new Date());
		ub.setLogintimes(ub.getLogintimes()+1);
		return uDao.updateUser(ub);
	}
	
	public UserDao getuDao() {
		return uDao;
	}

	public void setuDao(UserDao uDao) {
		this.uDao = uDao;
	}
	
	
}
