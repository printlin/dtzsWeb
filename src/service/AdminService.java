package service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import bean.AdminBean;
import dao.AdminDao;

public class AdminService {
	private AdminDao aDao = null;

	public String[] getReptileWeekData() {
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		Date thisTime = new Date();
		int[] imgCount = new int[7];
		int[] ttCount = new int[7];
		String[] dayA = new String[7];
		for (int i = 0; i < 7; i++) {
			String day = sf.format(new Date(thisTime.getTime() - (1000 * 60 * 60 * 24 * (6 - i))));
			imgCount[i] = aDao.getReptileDayCount(day, "img");
			ttCount[i] = aDao.getReptileDayCount(day, "tt");
			dayA[i] = day;
		}
		StringBuffer imgsb = new StringBuffer();
		StringBuffer ttsb = new StringBuffer();
		StringBuffer daysb = new StringBuffer();
		imgsb.append("[");
		ttsb.append("[");
		daysb.append("[\"");
		for (int i = 0; i < 7; i++) {
			imgsb.append(imgCount[i]);
			imgsb.append(",");
			ttsb.append(ttCount[i]);
			ttsb.append(",");
			daysb.append(dayA[i]);
			daysb.append("\",\"");
		}
		String img = imgsb.toString();
		img = img.substring(0, img.lastIndexOf(","));
		String tt = ttsb.toString();
		tt = tt.substring(0, tt.lastIndexOf(","));
		String day = daysb.toString();
		day = day.substring(0, day.lastIndexOf(",\""));
		String[] re = { day + "]", img + "]", tt + "]" };
		return re;
	}

	// ��ҳ��ʾ�û�
	public List<AdminBean> showAdmin(int adminCount) {
		return aDao.showAdmin(adminCount);

	}

	// ��ѯ�����û�����
	public int selectAdminCount() {
		return aDao.selectAdminCount();
	}

	// ɾ���û�ͨ��uid
	public boolean deleteUserById(int uid) {
		return aDao.deleteUserById(uid);
	}

	// �޸��û���״̬
	public boolean updateUser(String state, int uid) {
		return aDao.updateUser(state, uid);
	}

	// ���������ʼ����Ϊ123456ͨ��uid
	public boolean resetUserPWD(int uid) {
		return aDao.resetUserPWD(uid);
	}

	// ģ����ѯ�û�ͨ������
	// public List<adminBean> selectUserLike(String username) {
	// return aDao.selectUserLike(username);
	// }
	// ͨ��uid�鿴�����û�
	public List<AdminBean> queryUser(int uid) {
		return aDao.queryUser(uid);
	}

	// ģ����ѯ�û�ͨ������
	public List<AdminBean> selectUserLike(String username) {
		return aDao.selectUserLike(username);
	}

	// ģ����ѯ�û�����
	public int likeAdminCount(String username) {
		return aDao.likeAdminCount(username);
	}

	public AdminDao getaDao() {
		return aDao;
	}

	public void setaDao(AdminDao aDao) {
		this.aDao = aDao;
	}

}
