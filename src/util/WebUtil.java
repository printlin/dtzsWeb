package util;

import java.util.HashMap;
import java.util.Map;





public class WebUtil {
	public static String mapToJson(HashMap<String,String> map){
		StringBuffer json=new StringBuffer();
		json.append("{");
		for(Map.Entry<String,String> entry:map.entrySet()){
			json.append("\"");
			json.append(entry.getKey());
			json.append("\":\"");
			json.append(entry.getValue());
			json.append("\",");
		}
		json.append("\"1\":\"1\"}");
		return json.toString();
	}
}
