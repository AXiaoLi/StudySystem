package utils;



import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.misc.BASE64Encoder;

public class DownLoadUtils {
	public static String base64EncodeFileName(String fileName) {
		BASE64Encoder base64Encoder = new BASE64Encoder();
		try {
			return "=?UTF-8?B?"
					+ new String(base64Encoder.encode(fileName
							.getBytes("UTF-8"))) + "?=";
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	public static void setConentType(HttpServletRequest request,String fileName,HttpServletResponse response) throws UnsupportedEncodingException{
		//鑾峰彇User-Agent璇锋眰澶�
		String agent=request.getHeader("User-Agent");
		//濡傛灉鐢ㄦ埛鏄湪鐢ㄧ伀鐙愭祻瑙堝櫒
		if(agent.contains("Firefox")){
			//涓烘枃浠跺悕杩涜 base64缂栫爜锛岃鐏嫄娴忚鍣ㄨ瘑鍒�
			fileName=DownLoadUtils.base64EncodeFileName(fileName);
		}else{
			//鍏朵粬娴忚鍣紝鐢║RLEncodeer杩涜缂栫爜
			fileName=URLEncoder.encode(fileName,"utf-8");
		}
		//璁剧疆涓�瀵瑰搷搴斿ご锛岀洰鐨勮娴忚鍣ㄥ脊鍑哄彟瀛樹负/淇濆瓨瀵硅瘽妗�
		response.setHeader("Content-disposition", "attachment;filename="+fileName);
	}
}
