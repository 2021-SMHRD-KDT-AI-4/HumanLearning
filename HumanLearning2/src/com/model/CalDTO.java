package com.model;

public class CalDTO {

	private int cal_id;
	private String user_id;
	private String cal_date;
	private String cal_comment;
	
	
	public CalDTO(int cal_id, String user_id, String cal_date, String cal_comment) {
		super();
		this.cal_id = cal_id;
		this.user_id = user_id;
		this.cal_date = cal_date;
		this.cal_comment = cal_comment;
	}
	
	public CalDTO(String cal_comment) {
		super();
		this.cal_comment = cal_comment;
	}
	
	public CalDTO(String cal_date, String cal_comment) {
		super();
		this.cal_date = cal_date;
		this.cal_comment = cal_comment;
	}

	public CalDTO(String user_id, String cal_date, String cal_comment) {
		super();
		this.user_id = user_id;
		this.cal_date = cal_date;
		this.cal_comment = cal_comment;
	}

	public int getCal_id() {
		return cal_id;
	}
	public void setCal_id(int cal_id) {
		this.cal_id = cal_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getCal_date() {
		return cal_date;
	}
	public void setCal_date(String cal_date) {
		this.cal_date = cal_date;
	}
	public String getCal_comment() {
		return cal_comment;
	}
	public void setCal_comment(String cal_comment) {
		this.cal_comment = cal_comment;
	}
}
