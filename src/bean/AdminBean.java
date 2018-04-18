package bean;

public class AdminBean {
private	int uid;
private String username;
private String	pwd;
private String lastip;
private String lasttime;
private String logintimes;
private String state;
private String question;
private String answer;

public AdminBean(int uid, String username, String pwd, String lastip, String lasttime, String logintimes, String state,
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
public AdminBean() {
	super();
	// TODO Auto-generated constructor stub
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
public String getLasttime() {
	return lasttime;
}
public void setLasttime(String lasttime) {
	this.lasttime = lasttime;
}
public String getLogintimes() {
	return logintimes;
}
public void setLogintimes(String logintimes) {
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
