package service;

import java.util.List;
import java.util.Map;

import dao.MessageinfoDao;

public class MessageinfoService {
	private MessageinfoDao mDao;
	public void setmDao(MessageinfoDao mDao) {
		this.mDao = mDao;
	}
	public MessageinfoDao getmDao() {
		return mDao;
	}
	//查看消息
		public List<Map<String,Object>> 	queryMessage(int begin){
			return mDao.queryMessage(begin);
		}
	//共多少条消息
		public int  queryCount(){
			return mDao.queryCount();
		}
		//根据mid查看消息
		public List<Map<String,Object>> queryMessageByMid(int mid){
			return mDao.queryMessageByMid(mid);
		}
		//根据mid删除记录
		public boolean deleteMessageByMid(int mid){
			return mDao.deleteMessageByMid(mid);
		}
		//模糊搜索信息
		public List<Map<String,Object>> queryLikeMessage(String mtext){
			//解码
			
			return mDao.queryLikeMessage(mtext);
		}
}
