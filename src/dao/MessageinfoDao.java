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
	//�鿴��Ϣ
	public List<Map<String,Object>> 	queryMessage(int begin){
		SqlSession sqlsession =sqlSessionFactory.openSession();
		List<Map<String,Object>>	lm=sqlsession.selectList("MessageInfoBean.queryMessage", begin);
		sqlsession.close();
		return lm;
	}
	//�鿴����
	public int queryCount(){
		SqlSession sqlsession=sqlSessionFactory.openSession();
		int queryCount=sqlsession.selectOne("MessageInfoBean.queryCount");
		sqlsession.close();
		return queryCount;
	}
	//����mid�鿴��Ϣ
	public List<Map<String,Object>> queryMessageByMid(int mid){
		SqlSession sqlseesion=sqlSessionFactory.openSession();
		List<Map<String,Object>> lm=sqlseesion.selectOne("MessageInfoBean.queryMessageByMid",mid);
		sqlseesion.close();
		return lm;
	}
	//����midɾ����¼
	public boolean deleteMessageByMid(int mid){
		SqlSession sqlsession=sqlSessionFactory.openSession();
		int i=sqlsession.delete("MessageInfoBean.deleteMessageByMid", mid);
		boolean res=i>0?true:false;
		sqlsession.close();
		return res;
	}
	//ģ��������Ϣ
	public List<Map<String,Object>> queryLikeMessage(String mtext){
		SqlSession sqlsession=sqlSessionFactory.openSession();
		Map<String,String> m=new HashMap<String, String>();
		m.put("mtext", "%"+mtext+"%");
		List<Map<String,Object>> lm=sqlsession.selectList("MessageInfoBean.queryLikeMessage",m);
		sqlsession.close();
		return lm;

	}
}
