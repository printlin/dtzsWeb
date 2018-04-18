package reptile;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;



public class Dtl {
	private int count = 0;
	private boolean isEnd = false;
	private int lastday = -1;
	private int thisMaxDay = -1;
	private ImgDao ib=new ImgDao("img");
	private Date stime=new Date();
	public Dtl() {
	}

	
	public int download() throws IOException {
		isEnd = false;
		String re = MyUse.net_getText("https://www.doutula.com/photo/list/?page=1", "utf-8");// ��ҳhtml
		String pageAllText = MyUse.text_getCenterText(re, "class=\"pagination\"", "</ul>");
		String[] allPageNub = MyUse.text_getCenterText_batch(pageAllText, "page=", "\">");
		// �õ������ݣ�{"2","3","4","5","6","7","8","936","937","2' rel='next "}
		int maxPage = Integer.valueOf(allPageNub[allPageNub.length - 2]);
		//��ȡҳ�����ޣ�937
		//ѭ��937�Σ�������е�ͼƬ
		for (int page = 1; page <= maxPage && !isEnd; page++) {
			String html = MyUse.net_getText("https://www.doutula.com/photo/list/?page=" + page, "utf-8");
			List<ImgBean> list=getImgSrcs(html);
			if(list.size()>0){
				Collections.shuffle(list);//����˳��
				count += ib.save(list);
				System.out.println("��"+page+"ҳ   �Ѿ���ȡ  "+count+"  ��ͼƬ");
			}else{
				break;
			}
		}
		Date etime=new Date();
		ib.saveReptileInfo(count,thisMaxDay,(int)(etime.getTime()-stime.getTime()));
		return count;
	}

	public List<ImgBean> getImgSrcs(String text) {
		List<ImgBean> list = new ArrayList<ImgBean>();
		String[] allImg = MyUse.text_getCenterText_batch(text, "<img", ">");//�ٻ�ȡ����ͼƬ
		for (String str : allImg) {//ɸѡͼƬ
			if (str.indexOf("lazy") != -1 && str.indexOf("image_dta") != -1) {//��ɸѡ��ȷͼƬ
				String src = MyUse.text_getCenterText(str, "data-original=\"", "\"");//�ۻ����ʵ·��
				String alt = MyUse.text_getCenterText(str, "alt=\"", "\"");//�ۻ������
				String timesrc = MyUse.text_getCenterText(str, "data-backup=\"", "\"");//��÷�������ַ��������ʱ�䣩
				if(timeIsTrue(timesrc)){
					if (src.substring(0, 2).equals("//")) {//������Щ·��û��httpǰ׺���˴����
						src = "http:" + src;
					}
					list.add(new ImgBean(src, alt));
				}
			}
		}
		return list;
	}
	
	private boolean timeIsTrue(String timesrc){
		if(this.lastday==-1){
			this.lastday=ib.getLastday();
		}
		if(timesrc==null || "".equals(timesrc)){
			return false;
		}
		//http://img.doutula.com/production/uploads/image//2017/10/11/20171011652901_GzZjWT.jpg!dta
		int i=timesrc.indexOf("uploads/image/");
		String time=timesrc.substring(i, i+11+14).replace("uploads/image/", "").replace("/", "");//20171011
		int thisday=Integer.valueOf(time);
		thisMaxDay=thisMaxDay<thisday?thisday:thisMaxDay;//ͳ�Ƴ����ʱ��
		return thisday>lastday;
	}
	public int getThisMaxDay(){
		return thisMaxDay;
	}
}
