package reptile;

import java.awt.Desktop;
import java.awt.Image;
import java.awt.Toolkit;
import java.awt.datatransfer.Clipboard;
import java.awt.datatransfer.DataFlavor;
import java.awt.datatransfer.StringSelection;
import java.awt.datatransfer.Transferable;
import java.awt.datatransfer.UnsupportedFlavorException;
import java.io.*;
import java.net.*;
import java.util.*;

import javax.swing.ImageIcon;

public class MyUse {

	public static void seve_img(String imgSrc, String localSrc) throws IOException{
		URL url;
		InputStream is=null;
		url = new URL(imgSrc);
		System.out.println(imgSrc);
		HttpURLConnection conn = (HttpURLConnection)url.openConnection();
		is=conn.getInputStream();
		FileOutputStream fos = null;
		File dstFile=new File(localSrc);
        File parentFile = dstFile.getParentFile();
        if(!parentFile.exists()){
            parentFile.mkdirs();
        }
        try {
            fos = new FileOutputStream(dstFile);
            byte[] buff = new byte[1024 * 4];
            int len;
            while((len = is.read(buff)) != -1){
                fos.write(buff, 0, len);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }finally{
            try{
                if(is != null){
                    is.close();
                }
                if(fos != null){
                    fos.close();
                }
            }catch(IOException e){
                e.printStackTrace();
            }
        }
	    
	}
	
	public static String text_getCenterText(String all, String befor, String after) {// 取出中间文本
		if (all == null || befor == null || after == null) {
			return null;
		}
		int beginIndex = 0, endIndex = 0;
		beginIndex = all.indexOf(befor, beginIndex);
		endIndex = all.indexOf(after, beginIndex + befor.length());
		if (beginIndex != -1 && endIndex != -1) {
			return all.substring(beginIndex + befor.length(), endIndex);
		} else {
			return null;
		}
	}

	public static String[] text_getCenterText_batch(String all, String befor, String after) {// 批量取出中间文本
		if (all == null || befor == null || after == null) {
			return null;
		}
		List<String> arrList = new ArrayList<String>();
		int beginIndex = 0, endIndex = 0;
		while (true) {
			beginIndex = all.indexOf(befor, beginIndex);
			endIndex = all.indexOf(after, beginIndex + befor.length());
			if (beginIndex != -1 && endIndex != -1) {
				arrList.add(all.substring(beginIndex + befor.length(), endIndex));
				beginIndex = endIndex;
			} else {
				break;
			}
		}
		String[] arrStr = new String[arrList.size()];
		for (int i = 0; i < arrList.size(); i++) {
			arrStr[i] = arrList.get(i);
		}
		return arrStr;
	}

	public static String codeChange(String str) {
		String newStr=null;
		try {
			newStr = java.net.URLEncoder.encode(str, "utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }System.out.println(newStr);
		return newStr;
	}
	
	
	public static String net_getText(String urlText, String enc) throws IOException {// 网页访问 (访问地址,解码格式)
		if (urlText == null || enc == null) {
			return null;
		}
		String result = null;
		BufferedReader reader = null;
		StringBuffer buff = new StringBuffer();
		URL url = new URL(urlText);
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setDoInput(true);
		conn.setRequestMethod("GET");
		conn.setRequestProperty("User-Agent", "Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)");
		reader = new BufferedReader(new InputStreamReader(conn.getInputStream(), enc));
		while ((result = reader.readLine()) != null) {
			buff.append("\n" + result);
		}
		result = buff.toString();
		return result;
	}

	public static byte[] net_getByte(String urlText) throws IOException {
		List<byte[]> list = new ArrayList<byte[]>();
		byte[] bt = new byte[1024];

		int count = 0;
		if (urlText == null) {
			return null;
		}
		InputStream in = null;
		URL url = new URL(urlText);
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		/*
		 * conn.setDoInput(true); conn.setRequestMethod("GET");
		 * conn.setRequestProperty("User-Agent",
		 * "Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)");
		 */
		in = conn.getInputStream();
		while ((count = count + in.read(bt)) != -1) {
			list.add(bt);
		}
		// ByteBuffer buff = ByteBuffer.allocate(count);
		if (count <= 0) {
			return null;
		}
		byte[] result = new byte[count];
		count = 0;
		for (int i = 0; i < list.size(); i++) {
			byte[] byt = list.get(i);
			int len = byt.length;
			count += len;
			for (int j = 0; j < len; j++) {
				result[count + j] = byt[j];
			}
		}
		return result;
	}

	public static boolean net_browser(String urlText) throws IOException {
		if (java.awt.Desktop.isDesktopSupported()) {

			// 创建一个URI实例
			URI uri = URI.create(urlText);
			// 获取当前系统桌面扩展
			Desktop dp = Desktop.getDesktop();
			// 判断系统桌面是否支持要执行的功能
			if (dp.isSupported(Desktop.Action.BROWSE)) {
				// 获取系统默认浏览器打开链接
				dp.browse(uri);
			}
			return true;
		} else {
			return false;
		}
	}

	public void test() throws IOException {
		setImage(new ImageIcon(new URL("http://image.zzd.sm.cn/7542687490092795753.gif")).getImage());
	}

	public static void setImage(Image image) {
		Images imgSel = new Images(image);
		// 设置
		Toolkit.getDefaultToolkit().getSystemClipboard().setContents(imgSel, null);

	}
	public static void setText(String writeMe) {  
        Clipboard clip = Toolkit.getDefaultToolkit().getSystemClipboard();  
        Transferable tText = new StringSelection(writeMe);  
        clip.setContents(tText, null);  
    }
}

class Images implements Transferable {
	private Image image;
	public Images(Image image) {
		this.image = image;
	}
	public DataFlavor[] getTransferDataFlavors() {
		return new DataFlavor[] { DataFlavor.imageFlavor };
	}
	public boolean isDataFlavorSupported(DataFlavor flavor) {
		return DataFlavor.imageFlavor.equals(flavor);
	}
	public Object getTransferData(DataFlavor flavor) throws UnsupportedFlavorException, IOException {
		if (!DataFlavor.imageFlavor.equals(flavor)) {
			throw new UnsupportedFlavorException(flavor);
		}
		return image;
	}
}
