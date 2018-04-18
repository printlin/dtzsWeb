package bean;

import java.util.List;

public class TtImgBean {
	private Long tid;
	private String title;
	private String tag;
	private int downloadtimes;
	private int looktimes;
	private long upid;
	private List<ImgBean> ttimgs;
	
	public TtImgBean() {
		super();
	}

	public TtImgBean(Long tid, String title, String tag, int downloadtimes, int looktimes, long upid) {
		super();
		this.tid = tid;
		this.title = title;
		this.tag = tag;
		this.downloadtimes = downloadtimes;
		this.looktimes = looktimes;
		this.upid = upid;
	}

	public Long getTid() {
		return tid;
	}

	public void setTid(Long tid) {
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

	public List<ImgBean> getTtimgs() {
		return ttimgs;
	}

	public void setTtimgs(List<ImgBean> ttimgs) {
		this.ttimgs = ttimgs;
	}

	@Override
	public String toString() {
		StringBuffer sb=new StringBuffer(200);
		for(ImgBean ib:ttimgs){
			sb.append(ib);
			sb.append("\n    ");
		}
		return "TtImgBean [title=" + title + ", ttId=" + tid + "\n    " + sb + "]";
	}
	
}
