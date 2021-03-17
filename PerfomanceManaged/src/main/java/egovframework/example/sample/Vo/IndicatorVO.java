package egovframework.example.sample.Vo;

import java.util.Date;

public class IndicatorVO {
	private int INDI_ID;
	private String INDI_TITLE;
	private String INDI_CONTENT;
	private String INDI_RES_TYPE;
	private Date INDI_DATE; 
	private int FK_TYP_ID;
	private int Calendar_MON_ID;
	public int getINDI_ID() {
		return INDI_ID;
	}
	public void setINDI_ID(int iNDI_ID) {
		INDI_ID = iNDI_ID;
	}
	public String getINDI_TITLE() {
		return INDI_TITLE;
	}
	public void setINDI_TITLE(String iNDI_TITLE) {
		INDI_TITLE = iNDI_TITLE;
	}
	public String getINDI_CONTENT() {
		return INDI_CONTENT;
	}
	public void setINDI_CONTENT(String iNDI_CONTENT) {
		INDI_CONTENT = iNDI_CONTENT;
	}
	public String getINDI_RES_TYPE() {
		return INDI_RES_TYPE;
	}
	public void setINDI_RES_TYPE(String iNDI_RES_TYPE) {
		INDI_RES_TYPE = iNDI_RES_TYPE;
	}
	public Date getINDI_DATE() {
		return INDI_DATE;
	}
	public void setINDI_DATE(Date iNDI_DATE) {
		INDI_DATE = iNDI_DATE;
	}
	public int getFK_TYP_ID() {
		return FK_TYP_ID;
	}
	public void setFK_TYP_ID(int fK_TYP_ID) {
		FK_TYP_ID = fK_TYP_ID;
	}
	public int getCalendar_MON_ID() {
		return Calendar_MON_ID;
	}
	public void setCalendar_MON_ID(int calendar_MON_ID) {
		Calendar_MON_ID = calendar_MON_ID;
	}
}
