package action;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import bean.TtinfoBean;
import service.TtinfoService;
@Controller
public class TtinfoAction {
private TtinfoService tS;
public TtinfoService gettS() {
	return tS;
}

public void settS(TtinfoService tS) {
	this.tS = tS;
}
//查询系列图片级上传者信息 
@RequestMapping("/getttinfo")
public @ResponseBody List<List<Map<String,Object>>> getTtinfo(int page,long tid,int str ,String title,String tag){
	List<List<Map<String,Object>>> llm=new ArrayList<List<Map<String,Object>>>();
	List<Map<String,Object>> lm=new ArrayList<Map<String,Object>>();
	List<Map<String,Object>> lmq=new ArrayList<Map<String,Object>>();
	Map<String,Object> mp=new HashMap<String, Object>();
	int pageNow=(page-1)*6;
	int ttinfoCount=tS.queryTtinfoCount();
	int pageCount=0;
	if(ttinfoCount%6==0){
		pageCount=ttinfoCount/6;
	}else{
		pageCount=ttinfoCount/6+1;
	}
	mp.put("pageCount", pageCount);
	mp.put("page", page);
	lm.add(mp);	
	llm.add(lm);
	//判断是否删除操作
	if(tid!=0&&str==0){
		List<TtinfoBean> lt =tS.queryTtinfoMessage(tid);
		boolean res=tS.deleteTtinfo(tid);
		lmq= tS.getTtinfo(pageNow);
		if(res)
		mp.put("message", "删除套图"+lt.get(0).getTitle()+"成功");
		else
			mp.put("message", "删除套图"+lt.get(0).getTitle()+"失败!");
		llm.add(lmq);
	}else{
		lmq= tS.getTtinfo(pageNow);
		llm.add(lmq);
	}
	//修改操作
	if(str==1){
	
		try {
			if(title!=null&&!"".equals(title))
			title=URLDecoder.decode(title,"utf-8");
			if(tag!=null&&!"".equals(tag))
			tag=URLDecoder.decode(tag,"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		boolean res=tS.updateTtinfo(title, tag, tid);
		lmq= tS.getTtinfo(pageNow);
		if(res)
			mp.put("message", "修改成功");
			else
				mp.put("message", "修改失败");
		llm.add(lmq);
	}
	
	return llm;
}
//模糊查询套图
@RequestMapping("/likettinfo")
public @ResponseBody List<List<Map<String,Object>>> queryLikeTtinfo(int page ,String title) throws UnsupportedEncodingException{
	if(title!=null&&!"".equals(title)){
		//对中文问题进行解码
		title=URLDecoder.decode(title,"utf-8");
	}
	List<List<Map<String,Object>>> llm=new ArrayList<List<Map<String,Object>>>();
	List<Map<String,Object>> lm=new ArrayList<Map<String,Object>>();
	List<Map<String,Object>> lmq=new ArrayList<Map<String,Object>>();
	Map<String,Object> mp=new HashMap<String, Object>();
	int pageNow=(page-1)*6;
	int pageCount=0;
	int ttinfoLikeCount=tS.queryLikeTtinfoCount(title);
	if(ttinfoLikeCount%6==0){
		pageCount=ttinfoLikeCount/6;
	}else{
		pageCount=ttinfoLikeCount/6+1;
	}
	mp.put("pageCount", pageCount);
	mp.put("page", page);
	lm.add(mp);	
	lmq=tS.queryLikeTtinfo(title, pageNow);
	llm.add(lm);
	llm.add(lmq);
	return llm;
}
//根据tid 查询套图信息
@RequestMapping("/queryOneTtinfo")
public @ResponseBody  List<List<Map<String, Object>>>  queryOneTtinfo(long tid){
	List<List<Map<String, Object>>> llm=new ArrayList<List<Map<String,Object>>>();
	List<Map<String, Object>> lm=new ArrayList<Map<String,Object>>();
	lm=tS.queryOneTtinfo(tid);
	for(int i=0;i<lm.size();i++){
		//uptime 为日期形式 强转为字符串形式
		Object uptime="";
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		uptime=sdf.format(	lm.get(i).get("uptime")).substring(0, 10);
		lm.get(i).put("uptime",uptime);
	}
	llm.add(lm);
	return llm;
}
}
