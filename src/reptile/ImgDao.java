package reptile;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


public class ImgDao {
	private static Connection conn=null;
	private boolean uploadIsSave=false;
	private Date time=new Date();
	private String type="";
	private int lastday=0;
	static{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dtimgs", "root", "123456");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	@SuppressWarnings("unused")
	private ImgDao(){}
	public ImgDao(String type){
		this.type=type;
		this.lastday=getThisLastday();
	}
	public int save(List<ImgBean> list){
		if(!uploadIsSave){
			saveUploadinfo();
			uploadIsSave=true;
		}
		StringBuffer sb=new StringBuffer("insert into imginfo(src,alt,looktimes,upid) values");
		for(ImgBean ib:list){//构造批量插入sql
			sb.append("(\"");
			sb.append(ib.getSrc());
			sb.append("\",\"");
			if(ib.getAlt()!=null && !"".equals(ib.getAlt()) && ib.getAlt().length()>99){
				sb.append(ib.getAlt().substring(0, 99));
			}else{
				sb.append(ib.getAlt());
			}
			sb.append("\",0,");
			sb.append(time.getTime());
			sb.append("),");
		}
		String sql=sb.toString();
		sql=sql.substring(0, sql.length()-1);//由于最后一条会多一个“,”，此处去掉
		try {
			Statement st=conn.createStatement();//（未考虑sql注入问题）
			int count=st.executeUpdate(sql);
			if(st!=null){
				st.close();
			}
			return count;
		} catch (SQLException e) {
			System.out.println(sql);
			System.out.println("----save(List<ImgBean> list) 01  出现了一个数据库异常");
		}
		return 0;
	}
	public int save(TtBean tt){
		if(!uploadIsSave){
			saveUploadinfo();
			uploadIsSave=true;
		}
		StringBuffer sb=new StringBuffer("insert into ttinfo(tid,title,downloadtimes,looktimes,upid) value(");
		String title;
		if(tt.getTitle()!=null && !"".equals(tt.getTitle()) && tt.getTitle().length()>99){
			title=tt.getTitle().substring(0, 99);
		}else{
			title=tt.getTitle();
		}
		sb.append(tt.getId());
		sb.append(",\"");
		sb.append(title);
		sb.append("\",0,0,");
		sb.append(time.getTime());
		sb.append(")");
		try {
			Statement st=conn.createStatement();//（未考虑sql注入问题）
			st.executeUpdate(sb.toString());
			if(st!=null){
				st.close();
			}
		} catch (SQLException e) {
			System.out.println("----save(TtBean tt) 01  出现了一个数据库异常");
		}
		
		
		String tid=tt.getId()+"";
		List<ImgBean> list=tt.getImgs();
		StringBuffer sb2=new StringBuffer("insert into imginfo(src,alt,looktimes,upid,tid) values");
		for(ImgBean ib:list){//构造批量插入sql
			sb2.append("(\"");
			sb2.append(ib.getSrc());
			sb2.append("\",\"");
			if(ib.getAlt()!=null && !"".equals(ib.getAlt()) && ib.getAlt().length()>99){
				sb2.append(ib.getAlt().substring(0, 99));
			}else{
				sb2.append(ib.getAlt());
			}
			sb2.append("\",0,");
			sb2.append(time.getTime());
			sb2.append(",");
			sb2.append(tid);
			sb2.append("),");
		}
		String sql=sb2.toString();
		sql=sql.substring(0, sql.length()-1);//由于最后一条会多一个“,”，此处去掉
		try {
			Statement st=conn.createStatement();//（未考虑sql注入问题）
			int count=st.executeUpdate(sql);
			if(st!=null){
				st.close();
			}
			return count;
		} catch (SQLException e) {
			System.out.println(sql);
			System.out.println("----save(TtBean tt) 02 出现了一个数据库异常");
		}
		return 0;
	}
	public void saveReptileInfo(int count,int lastday,int usetime){
		SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		StringBuffer sb=new StringBuffer("insert into reptileinfo(retime,retype,recount,lastday,usetime) value");
		sb.append("(\"");
		sb.append(sf.format(time));
		sb.append("\",\"");
		sb.append(type);
		sb.append("\",");
		sb.append(count);
		sb.append(",");
		sb.append(lastday);
		sb.append(",");
		sb.append(usetime);
		sb.append(")");
		String sql=sb.toString();
		try {
			Statement st=conn.createStatement();//（未考虑sql注入问题）
			st.executeUpdate(sql);
			if(st!=null){
				st.close();
			}
		} catch (SQLException e) {
			System.out.println(sql);
			System.out.println("----saveReptileInfo() 01  出现了一个数据库异常");
		}
	}
	private void saveUploadinfo(){
		SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		StringBuffer sb=new StringBuffer("insert into uploadinfo(upid,uptime,uptype,state,uid) value");
		sb.append("(");
		sb.append(time.getTime());
		sb.append(",\"");
		sb.append(sf.format(time));
		sb.append("\",\"");
		sb.append(type);
		sb.append("\",\"正常\",1)");
		String sql=sb.toString();
		try {
			Statement st=conn.createStatement();//（未考虑sql注入问题）
			st.executeUpdate(sql);
			if(st!=null){
				st.close();
			}
		} catch (SQLException e) {
			System.out.println(sql);
			System.out.println("----saveUploadinfo() 01  出现了一个数据库异常");
		}
	}
	private int getThisLastday(){
		int r=99999999;
		String sql=null;
		if("img".equals(type)){
			sql="select lastday from reptileinfo where retype='img' order by retime DESC limit 0,1";
		}else if("tt".equals(type)){
			sql="select lastday from reptileinfo where retype='tt' order by retime DESC limit 0,1";
		}else{
			return r;
		}
		try {
			Statement st=conn.createStatement();
			ResultSet re=st.executeQuery(sql);
			if(re.next()){
				r=re.getInt("lastday");
			}else{
				r=0;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println(r);
		return r;
	}
	public int getLastday(){
		return lastday;
	}
}
