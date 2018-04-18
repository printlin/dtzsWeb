package reptile;

import java.util.Calendar;
import java.util.Date;
import java.util.Timer;


public class ImgDownloadTimer extends Timer{
	private static final long PERIOD_DAY = 24 * 60 * 60 * 1000;

	public ImgDownloadTimer() {
		Calendar calendar = Calendar.getInstance();//设置运行时间点
		calendar.set(Calendar.HOUR_OF_DAY, 9);//小时
		calendar.set(Calendar.MINUTE, 34);//分钟
		calendar.set(Calendar.SECOND, 0);//秒
		Timer timer = new Timer();
		ImgDownloadTimerTask task = new ImgDownloadTimerTask();
		timer.schedule(task, calendar.getTime(), PERIOD_DAY);
	}

	public Date addDay(Date date, int num) {
		Calendar startDT = Calendar.getInstance();
		startDT.setTime(date);
		startDT.add(Calendar.DAY_OF_MONTH, num);
		return startDT.getTime();
	}
}
