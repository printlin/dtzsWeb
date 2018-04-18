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

	// 分页显示用户
	public List<AdminBean> showAdmin(int adminCount) {
		return aDao.showAdmin(adminCount);

	}

	// 查询所有用户条数
	public int selectAdminCount() {
		return aDao.selectAdminCount();
	}

	// 删除用户通过uid
	public boolean deleteUserById(int uid) {
		return aDao.deleteUserById(uid);
	}

	// 修改用户的状态
	public boolean updateUser(String state, int uid) {
		return aDao.updateUser(state, uid);
	}

	// 重置密码初始密码为123456通过uid
	public boolean resetUserPWD(int uid) {
		return aDao.resetUserPWD(uid);
	}

	// 模糊查询用户通过姓名
	// public List<adminBean> selectUserLike(String username) {
	// return aDao.selectUserLike(username);
	// }
	// 通过uid查看单个用户
	public List<AdminBean> queryUser(int uid) {
		return aDao.queryUser(uid);
	}

	// 模糊查询用户通过姓名
	public List<AdminBean> selectUserLike(String username) {
		return aDao.selectUserLike(username);
	}

	// 模糊查询用户条数
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
