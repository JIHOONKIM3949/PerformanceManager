package egovframework.example.sample.Vo;

import java.util.Date;

public class TypeVO {
	private int TYP_ID;
	private String TYP_TITLE;
	private int TYP_WEIGHT;
	private Date TYPE_INSERT_DATE;
	private Date TYPE_UPDATE_DATE;
	
	
	
	public int getTYP_WEIGHT() {
		return TYP_WEIGHT;
	}
	public void setTYP_WEIGHT(int tYP_WEIGHT) {
		TYP_WEIGHT = tYP_WEIGHT;
	}
	public int getTYP_ID() {
		return TYP_ID;
	}
	public void setTYP_ID(int tYP_ID) {
		TYP_ID = tYP_ID;
	}
	
	public String getTYP_TITLE() {
		return TYP_TITLE;
	}
	public void setTYP_TITLE(String tYP_TITLE) {
		TYP_TITLE = tYP_TITLE;
	}
	public Date getTYPE_INSERT_DATE() {
		return TYPE_INSERT_DATE;
	}
	public void setTYPE_INSERT_DATE(Date tYPE_INSERT_DATE) {
		TYPE_INSERT_DATE = tYPE_INSERT_DATE;
	}
	public Date getTYPE_UPDATE_DATE() {
		return TYPE_UPDATE_DATE;
	}
	public void setTYPE_UPDATE_DATE(Date tYPE_UPDATE_DATE) {
		TYPE_UPDATE_DATE = tYPE_UPDATE_DATE;
	}
	
	

}
