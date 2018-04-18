package dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import bean.ImgBean;
import bean.TtImgBean;
import bean.UploadBean;

public class ImgDao {
	private SqlSessionFactory sqlSessionFactory;
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	public List<ImgBean> findByPage(int begin,int length){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String,Integer> map=new HashMap<String,Integer>();
		map.put("begin", begin);
		map.put("length", length);
		List<ImgBean> list=sqlSession.selectList("ImgBeanName.findByPage",map);
		sqlSession.close();
		return list;
	}
	
	public List<ImgBean> findByKeywordAndPage(String keyword,int begin,int length){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("keyword", "%"+keyword+"%");
		map.put("begin", begin);
		map.put("length", length);
		List<ImgBean> list=sqlSession.selectList("ImgBeanName.findByKeywordAndPage",map);
		sqlSession.close();
		return list;
	}
	
	public List<List<Map<String,Object>>> findTtByPage(int begin,int length){
		boolean isOne=true;
		long t=-1;
		List<Map<String,Object>> ttI=null;
		List<List<Map<String,Object>>> re=new ArrayList<List<Map<String,Object>>>();
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String,Integer> map=new HashMap<String,Integer>();
		map.put("begin", begin);
		map.put("length", length);
		List<Map<String,Object>> list=sqlSession.selectList("ImgBeanName.findTtByPage",map);
		for(Map<String,Object> m:list){
			long tid=(long)m.get("tid");
			
			if(tid==t){//如果是一个系列
				ttI.add(m);
			}else if(isOne){//第一次需要初始化
				t=tid;
				ttI=new ArrayList<Map<String,Object>>();
				ttI.add(m);
				isOne=false;
			}else{//如果是下一个系列，则将上一个系列的保存，再new下一个系列的对象
				re.add(ttI);
				t=tid;
				ttI=new ArrayList<Map<String,Object>>();
				ttI.add(m);
			}
		}
		re.add(ttI);//最后一个系列在上面不会被保存，此处保存
		sqlSession.close();
		return re;
	}
	
	public List<List<Map<String,Object>>> findTtByKeywordAndPage(String keyword,int begin,int length){
		boolean isOne=true;
		long t=-1;
		List<Map<String,Object>> ttI=null;
		List<List<Map<String,Object>>> re=new ArrayList<List<Map<String,Object>>>();
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("keyword", "%"+keyword+"%");
		map.put("begin", begin);
		map.put("length", length);
		List<Map<String,Object>> list=sqlSession.selectList("ImgBeanName.findTtByKeywordAndPage",map);
		for(Map<String,Object> m:list){
			long tid=(long)m.get("tid");
			if(tid==t){//如果是一个系列
				ttI.add(m);
			}else if(isOne){//第一次需要初始化
				t=tid;
				ttI=new ArrayList<Map<String,Object>>();
				ttI.add(m);
				isOne=false;
			}else{//如果是下一个系列，则将上一个系列的保存，再new下一个系列的对象
				re.add(ttI);
				t=tid;
				ttI=new ArrayList<Map<String,Object>>();
				ttI.add(m);
			}
		}
		re.add(ttI);//最后一个系列在上面不会被保存，此处保存
		sqlSession.close();
		return re;
	}
	
	public List<ImgBean> findByTtId(Long tid){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<ImgBean> list=sqlSession.selectList("ImgBeanName.findByTtId",tid);
		sqlSession.close();
		return list;
	}
	
	public int countImg(){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Object ob=sqlSession.selectOne("ImgBeanName.countImg");
		sqlSession.close();
		return (int)ob;
	}
	
	public int countImgTt(){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Object ob=sqlSession.selectOne("ImgBeanName.countImgTt");
		sqlSession.close();
		return (int)ob;
	}
	
	public int countImgByKey(String key){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Object ob=sqlSession.selectOne("ImgBeanName.countImgByKey","%"+key+"%");
		sqlSession.close();
		return (int)ob;
	}
	
	public boolean addImg(ImgBean ib){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int re=sqlSession.insert("ImgBeanName.addImg",ib);
		sqlSession.close();
		return re>0;
	}
	
	public boolean addTtImg(TtImgBean tib){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int re=sqlSession.insert("ImgBeanName.addTtImg",tib);
		sqlSession.close();
		return re>0;
	}
	
	public boolean addUpload(UploadBean ub){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int re=sqlSession.insert("ImgBeanName.addUpload",ub);
		sqlSession.close();
		return re>0;
	}
	
}
