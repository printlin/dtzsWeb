package reptile;

import java.io.IOException;
import java.util.TimerTask;

public class ImgDownloadTimerTask extends TimerTask{
	public void run(){
		try {
			new Dtl().download();
			new DtlTt().download();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
