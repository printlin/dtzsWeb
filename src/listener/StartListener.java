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
		new ImgDownloadTimer();//����ʱ������ͼƬ���³���
	}

}
