package bean;

import java.util.Date;

public class MessageInfoBean {
private  int mid;
private String mtext;
private Date mtime;
private String rmtext;
private Date rmtime;
private  int uid;
private String ip;

public MessageInfoBean() {

}

public MessageInfoBean(int mid, String mtext, Date mtime, String rmtext, Date rmtime, int uid, String ip) {
	super();
	this.mid = mid;
	this.mtext = mtext;
	this.mtime = mtime;
	this.rmtext = rmtext;
	this.rmtime = rmtime;
	this.uid = uid;
	this.ip = ip;
}

public int getMid() {
	return mid;
}
public void setMid(int mid) {
	this.mid = mid;
}
public String getMtext() {
	return mtext;
}
public void setMtext(String mtext) {
	this.mtext = mtext;
}
public Date getMtime() {
	return mtime;
}
public void setMtime(Date mtime) {
	this.mtime = mtime;
}
public String getRmtext() {
	return rmtext;
}
public void setRmtext(String rmtext) {
	this.rmtext = rmtext;
}
public Date getRmtime() {
	return rmtime;
}
public void setRmtime(Date rmtime) {
	this.rmtime = rmtime;
}
public int getUid() {
	return uid;
}
public void setUid(int uid) {
	this.uid = uid;
}
public String getIp() {
	return ip;
}
public void setIp(String ip) {
	this.ip = ip;
}

}
