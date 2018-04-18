package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import bean.AdminBean;


public class AdminDao {
	private SqlSessionFactory sqlSessionFactory;
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	public int getReptileDayCount(String day,String type){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("day", day+"%");
		map.put("type", type);
		List<Object> list=sqlSession.selectList("AdminName.reptileWeek",map);
		sqlSession.close();
		if(list!=null && list.size()>0){
			Object i=list.get(0);
			if(i!=null){
				return (int)i;
			}
		}
		return 0;
	}
	//��ҳ��ʾ�û�
   public List<AdminBean> showAdmin(int pagebegin ){
	   SqlSession sqlSession = sqlSessionFactory.openSession();
	   List<AdminBean> lis= sqlSession.selectList("AdminName.showAdmin", pagebegin);
	   return lis;
   }
	//��ѯ�����û�����
   public int selectAdminCount(){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Object o=sqlSession.selectOne("AdminName.selectAdminCount");
		sqlSession.close();
		return (int)o;
   }

	// ɾ���û�ͨ��uid
	public boolean deleteUserById(int uid) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		boolean res= sqlSession.delete("AdminName.deleteUserById", uid)>0;
		sqlSession.close();
		return res;
   }
	//�޸��û���״̬
	public boolean updateUser(String state,int uid){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<Object,Object> mp=new HashMap<Object, Object>();
		mp.put("state", state);
		mp.put("uid", uid);
		boolean b= sqlSession.update("AdminName.updateUser", mp)>0;
		sqlSession.close();
		return b;
	}
//	���������ʼ����Ϊ123456ͨ��uid
	public boolean resetUserPWD(int uid){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<Object,Object> mp=new HashMap<Object, Object>();
		mp.put("pwd", "123456");
		mp.put("uid", uid);
		boolean b= sqlSession.update("AdminName.resetUserPWD", mp)>0;
		sqlSession.close();
		return b;
	}
	//ͨ��uid�鿴�����û�
	public List<AdminBean>  queryUser(int uid){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<AdminBean> l=sqlSession.selectList("AdminName.queryUser",uid);
		sqlSession.close();
		return l;
	}
	//ģ����ѯ�û�ͨ������
	public List<AdminBean> selectUserLike(String username){
		username="%"+username+"%";
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<AdminBean> lis=sqlSession.selectList("AdminName.selectUserLike",username);
		sqlSession.close();
		return lis;
	}
	//ģ����ѯ�û�����
	   public int likeAdminCount(String username){
		   if(username==""||username==null){
			  username="%%"; 
		   }else{
			   username="%"+username+"%";
		   }
			SqlSession sqlSession = sqlSessionFactory.openSession();
			Object o=sqlSession.selectOne("AdminName.likeAdminCount",username);
			sqlSession.close();
			return (int)o;
	   }
}
