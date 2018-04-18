package service;


import java.util.Date;
import java.util.List;
import java.util.Map;

import bean.ImgBean;
import bean.TtImgBean;
import bean.UploadBean;
import bean.UserBean;
import dao.ImgDao;

public class ImgService {
	private static final int PL=50;
	private static final int TTPL=20;
	private int imgMaxPage=-1;
	private int imgTtMaxPage=-1;
	private int imgCount=-1;
	private int imgTtCount=-1;
	private ImgDao imgDao=null;
	public List<ImgBean> findByPage(int page){
		int begin=(page-1)*PL;
		return imgDao.findByPage(begin, PL);
	}
	
	public List<ImgBean> findToIndex(){
		return imgDao.findByPage(0, 20);
	}
	
	public List<ImgBean> findByKeywordAndPage(String keyword,int page){
		int begin=(page-1)*PL;
		return imgDao.findByKeywordAndPage(keyword,begin, PL);
	}
	
	public List<List<Map<String,Object>>> findTtByPage(int page){
		int begin=(page-1)*TTPL;
		List<List<Map<String,Object>>> list=imgDao.findTtByPage(begin, TTPL);
		return list;
	}
	
	public List<ImgBean> findByTtId(long ttId){
		List<ImgBean> list=imgDao.findByTtId(ttId);
		return list;
	}
	
	public List<List<Map<String,Object>>> findTtToIndex(){
		List<List<Map<String,Object>>> list=imgDao.findTtByPage(0, 4);
		return list;
	}
	
	public List<List<Map<String,Object>>> findTtByKeywordAndPage(String keyword,int page){
		int begin=(page-1)*TTPL;
		List<List<Map<String,Object>>> list=imgDao.findTtByKeywordAndPage(keyword,begin, TTPL);
		return list;
	}
	
	public int getImgByKeyMaxPage(String key) {
		int count=imgDao.countImgByKey(key);
		return count%PL==0?count/PL:(count/PL)+1;
	}
	
	public int getImgMaxPage() {
		if(imgMaxPage==-1){
			imgCount=imgDao.countImg();
			imgMaxPage=imgCount%PL==0?imgCount/PL:(imgCount/PL)+1;
		}
		return imgMaxPage;
	}

	public int getImgTtMaxPage() {
		if(imgTtMaxPage==-1){
			imgTtCount=imgDao.countImgTt();
			imgTtMaxPage=imgTtCount%PL==0?imgTtCount/PL:(imgTtCount/PL)+1;
		}
		return imgTtMaxPage;
	}
	
	public boolean uploadImg(ImgBean[] ibs,String title,String tag,UserBean user){
		boolean re=false;
		long upid=new Date().getTime();
		long tid=new Date().getTime();
		UploadBean upb=new UploadBean(upid,new Date(),"tt","审核中",user.getUid());
		if(!imgDao.addUpload(upb)){
			return false;
		}
		TtImgBean tib=new TtImgBean(tid,title,tag+"*用户上传",0,0,upid);
		if(!imgDao.addTtImg(tib)){
			return false;
		}
		for(ImgBean ib:ibs){
			ib.setTag(tag+"*用户上传");
			ib.setUpid(upid);
			ib.setTid(tid);
			ib.setLooktimes(0);
			if(imgDao.addImg(ib) && !re){//成功一个 就返回真
				re=true;
			}
		}
		return re;
	}
	
	public ImgDao getImgDao() {
		return imgDao;
	}
	public void setImgDao(ImgDao imgDao) {
		this.imgDao = imgDao;
	}
}
