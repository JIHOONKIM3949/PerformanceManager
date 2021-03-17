package egovframework.example.sample.Vo;

import java.util.Date;

public class CompanyVO {
	
	private int COM_ID;
	private String COM_NAME;
	private String COM_ADDR;
	private String COM_PHONE;
	private String COM_MANAGER;
	private Date COM_DATE;
	private String COM_COLOR;
	
	
	
	public String getCOM_COLOR() {
		return COM_COLOR;
	}

	public void setCOM_COLOR(String cOM_COLOR) {
		COM_COLOR = cOM_COLOR;
	}

	public int getCOM_ID() {
		return COM_ID;
	}
	
	public void setCOM_ID(int cOM_ID) {
		COM_ID = cOM_ID;
	}
	
	public Date getCOM_DATE() {
		return COM_DATE;
	}
	public void setCOM_DATE(Date cOM_DATE) {
		COM_DATE = cOM_DATE;
	}
	public String getCOM_NAME() {
		return COM_NAME;
	}
	public void setCOM_NAME(String cOM_NAME) {
		COM_NAME = cOM_NAME;
	}
	public String getCOM_ADDR() {
		return COM_ADDR;
	}
	public void setCOM_ADDR(String cOM_ADDR) {
		COM_ADDR = cOM_ADDR;
	}
	public String getCOM_PHONE() {
		return COM_PHONE;
	}
	public void setCOM_PHONE(String cOM_PHONE) {
		COM_PHONE = cOM_PHONE;
	}
	public String getCOM_MANAGER() {
		return COM_MANAGER;
	}
	public void setCOM_MANAGER(String cOM_MANAGER) {
		COM_MANAGER = cOM_MANAGER;
	}
	
	@Override
	public String toString() {
		return "CompanyVo [COM_NAME=" + COM_NAME + ", COM_ADDR=" + COM_ADDR + ", COM_PHONE=" + COM_PHONE
				+ ", COM_MANAGER=" + COM_MANAGER + "]";
	}
	
}
