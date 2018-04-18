package service;

import java.util.List;
import java.util.Map;

import bean.TtinfoBean;
import dao.TtinfoDao;

public class TtinfoService {
	private TtinfoDao tDao;

	public TtinfoDao gettDao() {
		return tDao;
	}

	public void settDao(TtinfoDao tDao) {
		this.tDao = tDao;
	}

	// 查询系列图片级上传者信息
	public List<Map<String, Object>> getTtinfo(int page) {
		return tDao.getTtinfo(page);
	}

	// 查询系列图片共有多少
	public int queryTtinfoCount() {
		return tDao.queryTtinfoCount();
	}

	// 模糊查询套图
	public List<Map<String, Object>> queryLikeTtinfo(String title,int pageNow) {
		return tDao.queryLikeTtinfo(title,pageNow);
	}
	// 模糊查询系列图片共有多少
		public int queryLikeTtinfoCount(String title) {
			return tDao.queryLikeTtinfoCount(title);
		}
		//根据tid 查询套图信息
		public  List<Map<String, Object>>  queryOneTtinfo(long tid){
			return tDao.queryOneTtinfo(tid);
		}
		//根据tid删除taotu
		public boolean deleteTtinfo(long tid){
			return tDao.deleteTtinfo(tid);
		}
		//根据tid查询信息
		public List<TtinfoBean> queryTtinfoMessage(long tid){
			return tDao.queryTtinfoMessage(tid);
		}
		//修改taotu
		public boolean updateTtinfo(String title,String tag,long tid){
			return tDao.updateTtinfo(title, tag, tid);
		}
}
