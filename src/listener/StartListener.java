package listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import reptile.ImgDownloadTimer;


public class StartListener implements  ServletContextListener{

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		new ImgDownloadTimer();//启动时，运行图片更新程序
	}

}
