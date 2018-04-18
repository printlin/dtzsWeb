package bean;

public class ImgBean {
	private int iid;
	private String src;
	private String alt;
	private int looktimes;
	private String tag;
	private long upid;
	private long tid;
	
	public ImgBean(){}

	

	public ImgBean(int iid, String src, String alt, int looktimes, String tag, long upid, long tId) {
		super();
		this.iid = iid;
		this.src = src;
		this.alt = alt;
		this.looktimes = looktimes;
		this.tag = tag;
		this.upid = upid;
		this.tid = tId;
	}



	public int getIid() {
		return iid;
	}



	public void setIid(int iid) {
		this.iid = iid;
	}



	public String getSrc() {
		return src;
	}



	public void setSrc(String src) {
		this.src = src;
	}



	public String getAlt() {
		return alt;
	}



	public void setAlt(String alt) {
		this.alt = alt;
	}



	public int getLooktimes() {
		return looktimes;
	}



	public void setLooktimes(int looktimes) {
		this.looktimes = looktimes;
	}



	public String getTag() {
		return tag;
	}



	public void setTag(String tag) {
		this.tag = tag;
	}



	public long getUpid() {
		return upid;
	}



	public void setUpid(long upid) {
		this.upid = upid;
	}



	public long getTid() {
		return tid;
	}



	public void setTid(long tid) {
		this.tid = tid;
	}



	@Override
	public String toString() {
		return "ImgBean [iid=" + iid + ", src=" + src + ", alt=" + alt + ", tId=" + tid + "]";
	}
	
}

