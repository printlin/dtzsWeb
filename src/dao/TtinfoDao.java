package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import bean.TtinfoBean;

public class TtinfoDao {
	private SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	// ��ѯϵ��ͼƬ���ϴ�����Ϣ
	public List<Map<String, Object>> getTtinfo(int page) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Map<String, Object>> lm = sqlSession.selectList("TtinfoName.getTtinfo", page);
		sqlSession.close();
		return lm;

	}

	// ��ѯϵ��ͼƬ���ж���
	public int queryTtinfoCount() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Object ob = sqlSession.selectOne("TtinfoName.queryTtinfoCount");
		sqlSession.close();
		return (int) ob;
	}

	// ģ����ѯ��ͼ
	public List<Map<String, Object>> queryLikeTtinfo(String title,int pageNow) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		title = "%" + title + "%";
		Map<String,Object> mp=new HashMap<String, Object>();
		mp.put("title", title);
		mp.put("pageNow", pageNow);
		List<Map<String, Object>> lm = sqlSession.selectList("TtinfoName.queryLikeTtinfo", mp);
		sqlSession.close();
		return lm;
	}

	// ģ����ѯϵ��ͼƬ���ж���
	public int queryLikeTtinfoCount(String title) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		title = "%" + title + "%";
		int queryCount=(int)sqlSession.selectOne("TtinfoName.queryLikeTtinfoCount", title);
		sqlSession.close();
		return queryCount;
	}
	//����tid ��ѯ��ͼ��Ϣ
	public  List<Map<String, Object>>  queryOneTtinfo(long tid){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Map<String, Object>> lm =sqlSession.selectList("TtinfoName.queryOneTtinfo",tid);
		sqlSession.close();
		return lm;
	}
	//����tidɾ��taotu
	public boolean deleteTtinfo(long tid){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		boolean res=sqlSession.delete("TtinfoName.deleteTtinfo", tid)>0;
		sqlSession.close();
		return res;
		
	}
	//����tid��ѯ��Ϣ
	public List<TtinfoBean> queryTtinfoMessage(long tid){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<TtinfoBean> lt=sqlSession.selectList("TtinfoName.queryTtinfoMessage",tid);
		sqlSession.close();
		return lt;
	}
	//�޸�taotu
	public boolean updateTtinfo(String title,String tag,long tid){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String,Object> mp=new HashMap<String, Object>();
		mp.put("title",title);
		mp.put("tag", tag);
		mp.put("tid", tid);
		int t=sqlSession.update("TtinfoName.updateTtinfo", mp);
		sqlSession.close();
		return t>0;
	}
}
