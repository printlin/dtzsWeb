package reptile;

public class ImgBean {
	private String src;
	private String alt;
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
	public ImgBean(){}
	public ImgBean(String src,String alt){
		this.src=src;
		this.alt=alt;
	}
}
