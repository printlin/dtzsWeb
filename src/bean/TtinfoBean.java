package bean;

public class TtinfoBean {
private long tid;
private String title;
private String tag;
private int downloadtimes;
private int looktimes;
private long upid;
public TtinfoBean(long tid, String title, String tag, int downloadtimes, int looktimes, long upid) {
	super();
	this.tid = tid;
	this.title = title;
	this.tag = tag;
	this.downloadtimes = downloadtimes;
	this.looktimes = looktimes;
	this.upid = upid;
}
public TtinfoBean() {
	super();
	// TODO Auto-generated constructor stub
}
public long getTid() {
	return tid;
}
public void setTid(long tid) {
	this.tid = tid;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getTag() {
	return tag;
}
public void setTag(String tag) {
	this.tag = tag;
}
public int getDownloadtimes() {
	return downloadtimes;
}
public void setDownloadtimes(int downloadtimes) {
	this.downloadtimes = downloadtimes;
}
public int getLooktimes() {
	return looktimes;
}
public void setLooktimes(int looktimes) {
	this.looktimes = looktimes;
}
public long getUpid() {
	return upid;
}
public void setUpid(long upid) {
	this.upid = upid;
}


}
