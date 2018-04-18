package util;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.util.Random;


public class ChackCode{
	private static final int IMG_WIDTH=140;
	private static final int IMG_HEIGHT=40;
	private static final String TEXT = "qwertyuiopasdfghjklmnbvcxzQWERTYUIOPLKJHGFDSAZXCVBNM";
	Color[] color={Color.BLACK,Color.BLUE,Color.RED,Color.GREEN,Color.YELLOW};
	public ChackCode() {
		super();
	}


	public Object[] getChackCode(){
		
		BufferedImage bImg=new BufferedImage(IMG_WIDTH, IMG_HEIGHT, BufferedImage.TYPE_INT_RGB);
		Graphics gp=bImg.getGraphics();
		imgInit(gp);
		drawLine(gp);
		drawOval(gp);
		String chackCode=drawText(gp);
		return new Object[]{chackCode,bImg};
	}


	private void imgInit(Graphics gp) {
		gp.setColor(Color.WHITE);
		gp.fillRect(0, 0, IMG_WIDTH, IMG_HEIGHT);
	}
	private void drawLine(Graphics gp) {
		int nub=new Random().nextInt(5)+5;
		for(int i=0;i<nub;i++){
			gp.setColor(color[new Random().nextInt(4)]);
			int x1=new Random().nextInt(IMG_WIDTH);
			int y1=new Random().nextInt(IMG_HEIGHT);
			int x2=new Random().nextInt(IMG_WIDTH);
			int y2=new Random().nextInt(IMG_HEIGHT);
			gp.drawLine(x1, y1, x2, y2);
		}
	}
	private void drawOval(Graphics gp) {
		int nub=new Random().nextInt(10)+10;
		for(int i=0;i<nub;i++){
			gp.setColor(color[new Random().nextInt(4)]);
			int x1=new Random().nextInt(IMG_WIDTH);
			int y1=new Random().nextInt(IMG_HEIGHT);
			int width=new Random().nextInt(5);
			int height=new Random().nextInt(5);
			gp.fillOval(x1, y1, width, height);
		}
	}
	private String drawText(Graphics gp) {
		StringBuffer sb=new StringBuffer();
		String str;
		gp.setFont(new Font("ËÎÌו",0,40));
		for(int i=0;i<4;i++){
			gp.setColor(color[new Random().nextInt(4)]);
			int index=new Random().nextInt(TEXT.length());
			str=TEXT.charAt(index)+"";
			sb.append(str);
			gp.drawString(str, 5+30*i, 30);
		}
		return sb.toString();
	}

}
