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

	// 查询系列图片级上传者信息
	public List<Map<String, Object>> getTtinfo(int page) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Map<String, Object>> lm = sqlSession.selectList("TtinfoName.getTtinfo", page);
		sqlSession.close();
		return lm;

	}

	// 查询系列图片共有多少
	public int queryTtinfoCount() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Object ob = sqlSession.selectOne("TtinfoName.queryTtinfoCount");
		sqlSession.close();
		return (int) ob;
	}

	// 模糊查询套图
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

	// 模糊查询系列图片共有多少
	public int queryLikeTtinfoCount(String title) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		title = "%" + title + "%";
		int queryCount=(int)sqlSession.selectOne("TtinfoName.queryLikeTtinfoCount", title);
		sqlSession.close();
		return queryCount;
	}
	//根据tid 查询套图信息
	public  List<Map<String, Object>>  queryOneTtinfo(long tid){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Map<String, Object>> lm =sqlSession.selectList("TtinfoName.queryOneTtinfo",tid);
		sqlSession.close();
		return lm;
	}
	//根据tid删除taotu
	public boolean deleteTtinfo(long tid){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		boolean res=sqlSession.delete("TtinfoName.deleteTtinfo", tid)>0;
		sqlSession.close();
		return res;
		
	}
	//根据tid查询信息
	public List<TtinfoBean> queryTtinfoMessage(long tid){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<TtinfoBean> lt=sqlSession.selectList("TtinfoName.queryTtinfoMessage",tid);
		sqlSession.close();
		return lt;
	}
	//修改taotu
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
