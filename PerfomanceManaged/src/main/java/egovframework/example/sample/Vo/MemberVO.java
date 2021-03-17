package egovframework.example.sample.Vo;

import java.util.Date;

public class MemberVO {
	
	private int INFO_ID; // 회원의 PK
	private String USER_ID; // 유저아이디
	private String USER_PW; // 유저 비밀번호
	private String USER_NAME; // 유저 이름
	private String USER_EMAIL; // 유저 이메일
	private String USER_PHONE; // 유저 연락처
	private String COM_NAME; // 유저 소속
	private String USER_POSI; // 유저 직책
	private boolean USER_STATUS; // 유저 상태
	private int FK_COM_ID;
	private String USER_TOKEN = null;
	private Date USER_DATE;
	private int USER_FAILE_COUNT;
	
	
	
	public int getUSER_FAILE_COUNT() {
		return USER_FAILE_COUNT;
	}
	public void setUSER_FAILE_COUNT(int uSER_FAILE_COUNT) {
		USER_FAILE_COUNT = uSER_FAILE_COUNT;
	}
	public String getUSER_TOKEN() {
		return USER_TOKEN;
	}
	public void setUSER_TOKEN(String uSER_TOKEN) {
		USER_TOKEN = uSER_TOKEN;
	}
	public String getCOM_NAME() {
		return COM_NAME;
	}
	public void setCOM_NAME(String cOM_NAME) {
		COM_NAME = cOM_NAME;
	}
	public int getFK_COM_ID() {
		return FK_COM_ID;
	}
	public void setFK_COM_ID(int fK_COM_ID) {
		FK_COM_ID = fK_COM_ID;
	}
	public boolean isUSER_STATUS() {
		return USER_STATUS;
	}
	public void setUSER_STATUS(boolean uSER_STATUS) {
		USER_STATUS = uSER_STATUS;
	}
	public Date getUSER_DATE() {
		return USER_DATE;
	}
	public void setUSER_DATE(Date uSER_DATE) {
		USER_DATE = uSER_DATE;
	}
	public int getINFO_ID() {
		return INFO_ID;
	}
	public void setINFO_ID(int iNFO_ID) {
		INFO_ID = iNFO_ID;
	}
	
	public String getUSER_ID() {
		return USER_ID;
	}
	public String getUSER_PW() {
		return USER_PW;
	}
	public String getUSER_NAME() {
		return USER_NAME;
	}
	public void setUSER_ID(String uSER_ID) {
		USER_ID = uSER_ID;
	}
	public void setUSER_PW(String uSER_PW) {
		USER_PW = uSER_PW;
	}
	public void setUSER_NAME(String uSER_NAME) {
		USER_NAME = uSER_NAME;
	}
	public void setUSER_EMAIL(String uSER_EMAIL) {
		USER_EMAIL = uSER_EMAIL;
	}
	public void setUSER_PHONE(String uSER_PHONE) {
		USER_PHONE = uSER_PHONE;
	}
	public void setUSER_POSI(String uSER_POSI) {
		USER_POSI = uSER_POSI;
	}

	public String getUSER_EMAIL() {
		return USER_EMAIL;
	}
	public String getUSER_PHONE() {
		return USER_PHONE;
	}
	public String getUSER_POSI() {
		return USER_POSI;
	}
}
