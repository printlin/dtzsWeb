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

	// ��ѯϵ��ͼƬ���ϴ�����Ϣ
	public List<Map<String, Object>> getTtinfo(int page) {
		return tDao.getTtinfo(page);
	}

	// ��ѯϵ��ͼƬ���ж���
	public int queryTtinfoCount() {
		return tDao.queryTtinfoCount();
	}

	// ģ����ѯ��ͼ
	public List<Map<String, Object>> queryLikeTtinfo(String title,int pageNow) {
		return tDao.queryLikeTtinfo(title,pageNow);
	}
	// ģ����ѯϵ��ͼƬ���ж���
		public int queryLikeTtinfoCount(String title) {
			return tDao.queryLikeTtinfoCount(title);
		}
		//����tid ��ѯ��ͼ��Ϣ
		public  List<Map<String, Object>>  queryOneTtinfo(long tid){
			return tDao.queryOneTtinfo(tid);
		}
		//����tidɾ��taotu
		public boolean deleteTtinfo(long tid){
			return tDao.deleteTtinfo(tid);
		}
		//����tid��ѯ��Ϣ
		public List<TtinfoBean> queryTtinfoMessage(long tid){
			return tDao.queryTtinfoMessage(tid);
		}
		//�޸�taotu
		public boolean updateTtinfo(String title,String tag,long tid){
			return tDao.updateTtinfo(title, tag, tid);
		}
}
