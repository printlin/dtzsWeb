package reptile;

import java.util.List;

public class TtBean {
	private long id;
	private String title;
	private List<ImgBean> imgs;
	public TtBean(){}
	public TtBean(long id, String title, List<ImgBean> imgs) {
		super();
		this.id = id;
		this.title = title;
		this.imgs = imgs;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public List<ImgBean> getImgs() {
		return imgs;
	}
	public void setImgs(List<ImgBean> imgs) {
		this.imgs = imgs;
	}
}
