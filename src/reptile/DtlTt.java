package reptile;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;


public class DtlTt extends Thread{
	private int lastday = -1;
	private int thisMaxDay = -1;
	private ImgDao ib=new ImgDao("tt");
	private Date stime=new Date();
	 public void run(){
	     try {
			download();
		} catch (IOException e) {
			e.printStackTrace();
		}
	 }

	public int download() throws IOException{
		int count=0;
		for(int i=1;i<=30;i++){
			String re=MyUse.net_getText("https://www.doutula.com/article/list/?page="+i, "utf-8");
			List<String> list=getA(re);
			Collections.shuffle(list);
			if(list.size()<=0){
				break;
			}
			for(String str:list){
				String html=MyUse.net_getText(str, "utf-8");
				String a=MyUse.text_getCenterText(html, "<h1>", "</h1>");
				String title=MyUse.text_getCenterText(a, ">", "</a>");
				List<ImgBean> lis=getImgSrcs(html);
				count+=ib.save(new TtBean(new Date().getTime(),title,lis));
				System.out.println("斗图啦已保存套图："+count);
			}
		}
		Date etime=new Date();
		ib.saveReptileInfo(count,thisMaxDay,(int)(etime.getTime()-stime.getTime()));
		return count;
	}
	public List<String> getA(String html){
		List<String> list=new ArrayList<String>();
		String[] a=MyUse.text_getCenterText_batch(html, "<a", "</a>");
		for(String aa:a){
			if(aa.indexOf("class=\"")!=-1){
				String clas=MyUse.text_getCenterText(aa, "class=\"", "\"");
				if(clas.indexOf("list-group-item")!=-1 && clas.indexOf("random_list")!=-1){
					String key=MyUse.text_getCenterText(aa, "href=\"", "\"");
					String time=MyUse.text_getCenterText(aa, "<div class=\"date\">", "</div>").replace("-", "");
					if(timeIsTrue(time)){
						list.add(key);
					}
				}
			}
		}
		return list;
	}
	public List<ImgBean> getImgSrcs(String html) {
		String text=MyUse.text_getCenterText(html, "container_", "<!--推荐 E-->");
		List<ImgBean> list = new ArrayList<ImgBean>();
		String[] allImg = MyUse.text_getCenterText_batch(text, "<img", ">");
		for (String str : allImg) {
			String src = MyUse.text_getCenterText(str, "src=\"", "\"");
			String alt = MyUse.text_getCenterText(str, "alt=\"", "\"");
			if (src.substring(0, 2).equals("//")) {//由于有些路径没有http前缀，此处添加
				src = "http:" + src;
			}
			list.add(new ImgBean(src, alt));
		}
		return list;
	}
	
	private boolean timeIsTrue(String time){
		if(this.lastday==-1){
			this.lastday=ib.getLastday();
		}
		if(time==null || "".equals(time)){
			return false;
		}
		int thisday=Integer.valueOf(time);
		thisMaxDay=thisMaxDay<thisday?thisday:thisMaxDay;//统计出最大时间
		return thisday>lastday;
	}
	public int getThisMaxDay(){
		return thisMaxDay;
	}
}
