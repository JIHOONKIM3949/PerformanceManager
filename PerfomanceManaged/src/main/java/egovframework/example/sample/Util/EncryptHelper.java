package egovframework.example.sample.Util;

public interface EncryptHelper {
	String encrypt(String password);
	
	boolean isMatch(String password, String hashed);
}
