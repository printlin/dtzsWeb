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
	//�鿴��Ϣ
		public List<Map<String,Object>> 	queryMessage(int begin){
			return mDao.queryMessage(begin);
		}
	//����������Ϣ
		public int  queryCount(){
			return mDao.queryCount();
		}
		//����mid�鿴��Ϣ
		public List<Map<String,Object>> queryMessageByMid(int mid){
			return mDao.queryMessageByMid(mid);
		}
		//����midɾ����¼
		public boolean deleteMessageByMid(int mid){
			return mDao.deleteMessageByMid(mid);
		}
		//ģ��������Ϣ
		public List<Map<String,Object>> queryLikeMessage(String mtext){
			//����
			
			return mDao.queryLikeMessage(mtext);
		}
}
