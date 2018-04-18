package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class MessageinfoDao {
	private SqlSessionFactory sqlSessionFactory;
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	//查看消息
	public List<Map<String,Object>> 	queryMessage(int begin){
		SqlSession sqlsession =sqlSessionFactory.openSession();
		List<Map<String,Object>>	lm=sqlsession.selectList("MessageInfoBean.queryMessage", begin);
		sqlsession.close();
		return lm;
	}
	//查看条数
	public int queryCount(){
		SqlSession sqlsession=sqlSessionFactory.openSession();
		int queryCount=sqlsession.selectOne("MessageInfoBean.queryCount");
		sqlsession.close();
		return queryCount;
	}
	//根据mid查看消息
	public List<Map<String,Object>> queryMessageByMid(int mid){
		SqlSession sqlseesion=sqlSessionFactory.openSession();
		List<Map<String,Object>> lm=sqlseesion.selectOne("MessageInfoBean.queryMessageByMid",mid);
		sqlseesion.close();
		return lm;
	}
	//根据mid删除记录
	public boolean deleteMessageByMid(int mid){
		SqlSession sqlsession=sqlSessionFactory.openSession();
		int i=sqlsession.delete("MessageInfoBean.deleteMessageByMid", mid);
		boolean res=i>0?true:false;
		sqlsession.close();
		return res;
	}
	//模糊搜索信息
	public List<Map<String,Object>> queryLikeMessage(String mtext){
		SqlSession sqlsession=sqlSessionFactory.openSession();
		Map<String,String> m=new HashMap<String, String>();
		m.put("mtext", "%"+mtext+"%");
		List<Map<String,Object>> lm=sqlsession.selectList("MessageInfoBean.queryLikeMessage",m);
		sqlsession.close();
		return lm;

	}
}
