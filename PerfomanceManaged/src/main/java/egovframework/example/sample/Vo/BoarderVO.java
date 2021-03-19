package egovframework.example.sample.Vo;

import java.util.Date;

public class BoarderVO {
	private int BOR_ID;
	private String BOR_TITLE;
	private String BOR_Content;
	private String BOR_WRITER;
	private Boolean BOR_STATUS;
	private int FK_USER_INFO_ID;
	private int FK_INDI_ID;
	
	public int getBOR_ID() {
		return BOR_ID;
	}
	
	public String getBOR_Content() {
		return BOR_Content;
	}

	public void setBOR_Content(String bOR_Content) {
		BOR_Content = bOR_Content;
	}

	public void setBOR_ID(int bOR_ID) {
		BOR_ID = bOR_ID;
	}
	public String getBOR_TITLE() {
		return BOR_TITLE;
	}
	public void setBOR_TITLE(String bOR_TITLE) {
		BOR_TITLE = bOR_TITLE;
	}
	public String getBOR_WRITER() {
		return BOR_WRITER;
	}
	public void setBOR_WRITER(String bOR_WRITER) {
		BOR_WRITER = bOR_WRITER;
	}
	public Boolean getBOR_STATUS() {
		return BOR_STATUS;
	}
	public void setBOR_STATUS(Boolean bOR_STATUS) {
		BOR_STATUS = bOR_STATUS;
	}
	public int getFK_USER_INFO_ID() {
		return FK_USER_INFO_ID;
	}
	public void setFK_USER_INFO_ID(int fK_USER_INFO_ID) {
		FK_USER_INFO_ID = fK_USER_INFO_ID;
	}
	public int getFK_INDI_ID() {
		return FK_INDI_ID;
	}
	public void setFK_INDI_ID(int fK_INDI_ID) {
		FK_INDI_ID = fK_INDI_ID;
	}
}
