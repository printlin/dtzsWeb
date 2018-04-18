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
		String re = MyUse.net_getText("https://www.doutula.com/photo/list/?page=1", "utf-8");// 网页html
		String pageAllText = MyUse.text_getCenterText(re, "class=\"pagination\"", "</ul>");
		String[] allPageNub = MyUse.text_getCenterText_batch(pageAllText, "page=", "\">");
		// 得到的内容：{"2","3","4","5","6","7","8","936","937","2' rel='next "}
		int maxPage = Integer.valueOf(allPageNub[allPageNub.length - 2]);
		//获取页码上限：937
		//循环937次，获得所有的图片
		for (int page = 1; page <= maxPage && !isEnd; page++) {
			String html = MyUse.net_getText("https://www.doutula.com/photo/list/?page=" + page, "utf-8");
			List<ImgBean> list=getImgSrcs(html);
			if(list.size()>0){
				Collections.shuffle(list);//打乱顺序
				count += ib.save(list);
				System.out.println("第"+page+"页   已经爬取  "+count+"  张图片");
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
		String[] allImg = MyUse.text_getCenterText_batch(text, "<img", ">");//①获取所有图片
		for (String str : allImg) {//筛选图片
			if (str.indexOf("lazy") != -1 && str.indexOf("image_dta") != -1) {//②筛选正确图片
				String src = MyUse.text_getCenterText(str, "data-original=\"", "\"");//③获得真实路径
				String alt = MyUse.text_getCenterText(str, "alt=\"", "\"");//③获得描述
				String timesrc = MyUse.text_getCenterText(str, "data-backup=\"", "\"");//获得服务器地址（解析出时间）
				if(timeIsTrue(timesrc)){
					if (src.substring(0, 2).equals("//")) {//由于有些路径没有http前缀，此处添加
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
		thisMaxDay=thisMaxDay<thisday?thisday:thisMaxDay;//统计出最大时间
		return thisday>lastday;
	}
	public int getThisMaxDay(){
		return thisMaxDay;
	}
}
