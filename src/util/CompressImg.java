package util;

import java.io.IOException;

import net.coobird.thumbnailator.Thumbnails;

public class CompressImg {
	public void compress(){
		try {
			Thumbnails.of("F:\\image\\IMG_20131229_114806.png")  
			.scale(1f)  
			.outputQuality(0.25f)  
			.outputFormat("jpg")  
			.toFile("F:\\image\\output\\IMG_20131229_114806");
		} catch (IOException e) {
			e.printStackTrace();
		}  
	}
}
