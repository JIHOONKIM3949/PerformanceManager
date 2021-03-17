package egovframework.example.sample.web;

import java.io.FileInputStream;
import java.security.Key;
import java.util.Properties;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

import org.apache.commons.codec.binary.Base64;

public class FileAES {
	public static final String fileKey_Value = "1234567890123456";
	public static final String iv_Value = "7897897897897895";
	
	public void getFileKey(){
		
	}
	
	public void getFileIv(){
		
	}
	
	public Key getAESKey() throws Exception {
		
	    String iv;
	    Key keySpec;

	    String key = fileKey_Value;
	    iv = key.substring(0, 16);
	   
	    byte[] keyBytes = new byte[16];
	    byte[] b = key.getBytes("UTF-8");

	    int len = b.length;
	    if (len > keyBytes.length) {
	       len = keyBytes.length;
	    }

	    System.arraycopy(b, 0, keyBytes, 0, len);
	    keySpec = new SecretKeySpec(keyBytes, "AES");

	    return keySpec;
	}

	
	
	// 암호화
	public String encAES(String str) throws Exception {
		
	    Key keySpec = getAESKey();
	    String iv = iv_Value;
	    Cipher c = Cipher.getInstance("AES/CBC/PKCS5Padding");
	    c.init(Cipher.ENCRYPT_MODE, keySpec, new IvParameterSpec(iv.getBytes("UTF-8")));
	    byte[] encrypted = c.doFinal(str.getBytes("UTF-8"));
	    String enStr = new String(Base64.encodeBase64(encrypted));
	    
	    
	    
	    return enStr;
	}

	// 복호화
	public String decAES(String enStr) throws Exception {
		
		
	    Key keySpec = getAESKey();
	    
	    String iv = iv_Value;
	    Cipher c = Cipher.getInstance("AES/CBC/PKCS5Padding");
	    c.init(Cipher.DECRYPT_MODE, keySpec, new IvParameterSpec(iv.getBytes("UTF-8")));
	    byte[] byteStr = Base64.decodeBase64(enStr.getBytes("UTF-8"));
	    String decStr = new String(c.doFinal(byteStr), "UTF-8");
	    

	    return decStr;
	}

}
