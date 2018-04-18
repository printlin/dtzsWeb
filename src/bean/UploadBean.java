package bean;

import java.util.Date;

public class UploadBean {
	private long upid;
	private Date uptime;
	private String uptype;// img tt
	private String state;//正常    审核中   下架
	private int uid;
	public UploadBean() {
		super();
	}
	public UploadBean(long upid, Date uptime, String uptype, String state, int uid) {
		super();
		this.upid = upid;
		this.uptime = uptime;
		this.uptype = uptype;
		this.state = state;
		this.uid = uid;
	}
	public long getUpid() {
		return upid;
	}
	public void setUpid(long upid) {
		this.upid = upid;
	}
	public Date getUptime() {
		return uptime;
	}
	public void setUptime(Date uptime) {
		this.uptime = uptime;
	}
	public String getUptype() {
		return uptype;
	}
	public void setUptype(String uptype) {
		this.uptype = uptype;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
}
