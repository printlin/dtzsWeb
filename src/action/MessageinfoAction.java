package action;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import service.MessageinfoService;
@Controller
public class MessageinfoAction {
private MessageinfoService mS;
public void setmS(MessageinfoService mS) {
	this.mS = mS;
}
public MessageinfoService getmS() {
	return mS;
}
//查看消息
@RequestMapping("/querymessage")
public  @ResponseBody	 List<Map<String,Object>>queryMessage(int page,int mid){
	Map<String,Object> mp=new HashMap<String, Object>();
	int Count=mS.queryCount();
	int pageCount=0;
	//算出也算
	if(Count%6==0){
		pageCount=Count/6;
	}else{
		pageCount=Count/6+1;
	}
	if(mid!=0){
		boolean res=mS.deleteMessageByMid(mid);
		if(res)
			mp.put("message", "修改成功");
		else
			mp.put("message", "修改失败");
	}
	List<Map<String, Object>> lm=mS.queryMessage((page-1)*6);
	for(int i=0;i<lm.size();i++){
		Map<String,Object> m=lm.get(i);
		Date d1=(Date)lm.get(i).get("mtime");
		Date d2=(Date)lm.get(i).get("rmtime");
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		if(d1!=null){
			String str1=sdf.format(d1);
			m.put("mtime", str1);
		}
		if(d2!=null){
			String str2=sdf.format(d2);
			m.put("rmtime", str2);
		}
	}
	Map<String,Object> m=new HashMap<String, Object>();
	
	m.put("pageCount", pageCount);
	m.put("page", page);
	lm.add(0, m);
	lm.add(1,mp);
	return lm;
}
//得到单条数消息
@RequestMapping("/querymessagebymid")
public @ResponseBody List<Map<String,Object>>queryMessageByMid(int mid){
	return mS.queryMessageByMid(mid);
}
//得到模糊信息
@RequestMapping("/querylikemessage")
public @ResponseBody List<Map<String,Object>> queryLikeMessage(String mtext){
	try {
		mtext=	URLDecoder.decode(mtext, "utf-8");
	} catch (UnsupportedEncodingException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	List<Map<String,Object>> lm=mS.queryLikeMessage(mtext);
	for(int i=0;i<lm.size();i++){
		Map<String,Object> m=lm.get(i);
		Date d1=(Date)lm.get(i).get("mtime");
		Date d2=(Date)lm.get(i).get("rmtime");
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		if(d1!=null){
			String str1=sdf.format(d1);
			m.put("mtime", str1);
		}
		if(d2!=null){
			String str2=sdf.format(d2);
			m.put("rmtime", str2);
		}
	}
		return lm;
}
}
