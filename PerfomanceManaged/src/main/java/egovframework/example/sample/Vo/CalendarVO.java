package egovframework.example.sample.Vo;

import java.util.Date;

public class CalendarVO {
	
	private int MON_ID;
	private Date MON_START_DATE;
	private Date MON_END_DATE;
	private String MON_TITLE;
	private String MON_CONTENT;
	private String COLOR;
	private boolean allDay;
	
	public boolean isAllDay() {
		return allDay;
	}
	public void setAllDay(boolean allDay) {
		this.allDay = allDay;
	}
	public String getCOLOR() {
		return COLOR;
	}
	public void setCOLOR(String cOLOR) {
		COLOR = cOLOR;
	}
	public Date getMON_END_DATE() {
		return MON_END_DATE;
	}
	public void setMON_END_DATE(Date mON_END_DATE) {
		MON_END_DATE = mON_END_DATE;
	}
	public int getMON_ID() {
		return MON_ID;
	}
	public void setMON_ID(int mON_ID) {
		MON_ID = mON_ID;
	}
	public Date getMON_START_DATE() {
		return MON_START_DATE;
	}
	public void setMON_START_DATE(Date mON_START_DATE) {
		MON_START_DATE = mON_START_DATE;
	}

	public String getMON_TITLE() {
		return MON_TITLE;
	}
	public void setMON_TITLE(String mON_TITLE) {
		MON_TITLE = mON_TITLE;
	}
	public String getMON_CONTENT() {
		return MON_CONTENT;
	}
	public void setMON_CONTENT(String mON_CONTENT) {
		MON_CONTENT = mON_CONTENT;
	}
}
