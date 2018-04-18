package dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import bean.UserBean;


public class UserDao {
	private SqlSessionFactory sqlSessionFactory;
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	public UserBean findByUsernameAndPwd(String username,String pwd){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String,String> map=new HashMap<String,String>();
		map.put("username",username);
		map.put("pwd", pwd);
		UserBean ub=sqlSession.selectOne("UserBeanName.findByUsernameAndPwd",map);
		sqlSession.close();
		return ub;
	}
	public boolean findUsername(String username){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int count=sqlSession.selectOne("UserBeanName.findUsername",username);
		sqlSession.close();
		return count>0;
	}
	public boolean addUser(UserBean ub){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int count=sqlSession.insert("UserBeanName.addUser",ub);
		sqlSession.close();
		return count>0;
	}
	public boolean updateUser(UserBean ub){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int count=sqlSession.update("UserBeanName.updateUser",ub);
		sqlSession.close();
		return count>0;
	}
}
