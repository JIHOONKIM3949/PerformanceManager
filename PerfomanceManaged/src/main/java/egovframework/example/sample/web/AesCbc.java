package egovframework.example.sample.web;

import java.io.FileInputStream;
import java.security.Key;
import java.util.Properties;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

import org.apache.commons.codec.binary.Base64;
import org.springframework.stereotype.Service;

import egovframework.example.sample.Vo.MemberVO;

@Service("AES")
public class AesCbc {
	public static final String filePath = "C:\\";
	FileAES fileaes = new FileAES();
	
	public MemberVO encoder(MemberVO member) throws Exception{
		//member.setUSER_PW(encAES(member.getUSER_ID()));
		member.setUSER_NAME(encAES(member.getUSER_NAME()));
		member.setUSER_PHONE(encAES(member.getUSER_PHONE()));
		member.setUSER_EMAIL(encAES(member.getUSER_EMAIL()));
		return member;
	}
	
	public MemberVO decoder(MemberVO member)throws Exception{
		member.setUSER_NAME(decAES(member.getUSER_NAME()));
		member.setUSER_PHONE(decAES(member.getUSER_PHONE()));
		member.setUSER_EMAIL(decAES(member.getUSER_EMAIL()));
		return member;
	}
	public Key getAESKey() throws Exception {
		Properties prop = new Properties();
		prop.load(new FileInputStream(filePath+"test.ini"));
		
	    String iv;
	    Key keySpec;

	    //String key = "1234567890123456";//
	    String key = fileaes.decAES(prop.getProperty("key"));
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
		Properties prop = new Properties();
		prop.load(new FileInputStream(filePath+"test.ini"));
		
	    Key keySpec = getAESKey();
	    String iv = fileaes.decAES(prop.getProperty("iv"));
	    Cipher c = Cipher.getInstance("AES/CBC/PKCS5Padding");
	    c.init(Cipher.ENCRYPT_MODE, keySpec, new IvParameterSpec(iv.getBytes("UTF-8")));
	    byte[] encrypted = c.doFinal(str.getBytes("UTF-8"));
	    String enStr = new String(Base64.encodeBase64(encrypted));
	    System.out.println("유저 정보 암호화 실행");
/*	    
	    System.out.println();
	    System.out.println("ini 파일에서 불러온 Key 값 = " + prop.getProperty("key"));
	    System.out.println("ini 파일에서 불러온 IV(벡터)값 : " + prop.getProperty("iv"));
	    System.out.println();
	    System.out.println("복호화 하여 실제 사용될 Key 값 : " + fileaes.decAES(prop.getProperty("key")) );
	    System.out.println("복호화 하여 실제 사용될 IV(벡터) 값 : " + fileaes.decAES(prop.getProperty("iv")) );
	    System.out.println();
	    System.out.println("암호화 되어진 문자열 : " + enStr);*/
	    
	    return enStr;
	}

	// 복호화
	public String decAES(String enStr) throws Exception {
		Properties prop = new Properties();
		prop.load(new FileInputStream(filePath+"test.ini"));
		
		
	    Key keySpec = getAESKey();
	    
	    String iv = fileaes.decAES(prop.getProperty("iv"));
	    Cipher c = Cipher.getInstance("AES/CBC/PKCS5Padding");
	    c.init(Cipher.DECRYPT_MODE, keySpec, new IvParameterSpec(iv.getBytes("UTF-8")));
	    byte[] byteStr = Base64.decodeBase64(enStr.getBytes("UTF-8"));
	    String decStr = new String(c.doFinal(byteStr), "UTF-8");
	    System.out.println("복호화 되어진 문자열 : " + decStr);
	    System.out.println();

	    return decStr;
	}
}
