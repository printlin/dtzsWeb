package bean;

import java.util.Date;

public class UserBean {
	int uid;
	String username;
	String pwd;
	String lastip;//�ϴε�¼ip
	Date lasttime;//�ϴε�¼ʱ��
	int logintimes;//��¼����
	String state;//��ǣ�admin,vip,right,limited,ban������Ա ��Ա �����û� ���� ��ֹ
	String question;
	String answer;
	public UserBean() {
		super();
	}
	public UserBean(int uid, String username, String pwd, String lastip, Date lasttime, int logintimes, String state,
			String question, String answer) {
		super();
		this.uid = uid;
		this.username = username;
		this.pwd = pwd;
		this.lastip = lastip;
		this.lasttime = lasttime;
		this.logintimes = logintimes;
		this.state = state;
		this.question = question;
		this.answer = answer;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getLastip() {
		return lastip;
	}
	public void setLastip(String lastip) {
		this.lastip = lastip;
	}
	public Date getLasttime() {
		return lasttime;
	}
	public void setLasttime(Date lasttime) {
		this.lasttime = lasttime;
	}
	public int getLogintimes() {
		return logintimes;
	}
	public void setLogintimes(int logintimes) {
		this.logintimes = logintimes;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
	
}
