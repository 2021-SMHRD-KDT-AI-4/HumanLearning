package com.model;

public class MemDTO {
	
	private String USER_ID;
	private String MEMBERSHIP_NAME;
	private String USER_NAME;
	private String USER_PW;
	private int USER_AGE;
	private String USER_GENDER;
	
	public String getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(String uSER_ID) {
		USER_ID = uSER_ID;
	}
	public String getUSER_PW() {
		return USER_PW;
	}
	public void setUSER_PW(String uSER_PW) {
		USER_PW = uSER_PW;
	}
	public String getUSER_NAME() {
		return USER_NAME;
	}
	public void setUSER_NAME(String uSER_NAME) {
		USER_NAME = uSER_NAME;
	}
	public int getUSER_AGE() {
		return USER_AGE;
	}
	public void setUSER_AGE(int uSER_AGE) {
		USER_AGE = uSER_AGE;
	}
	public String getUSER_GENDER() {
		return USER_GENDER;
	}
	public void setUSER_GENDER(String uSER_GENDER) {
		USER_GENDER = uSER_GENDER;
	}
	public String getMEMBERSHIP_NAME() {
		return MEMBERSHIP_NAME;
	}
	public void setMEMBERSHIP_NAME(String mEMBERSHIP_NAME) {
		MEMBERSHIP_NAME = mEMBERSHIP_NAME;
	}
	
	public MemDTO(String uSER_ID, String mEMBERSHIP_NAME, String uSER_NAME, String uSER_PW, int uSER_AGE,
			String uSER_GENDER) {
		super();
		USER_ID = uSER_ID;
		MEMBERSHIP_NAME = mEMBERSHIP_NAME;
		USER_NAME = uSER_NAME;
		USER_PW = uSER_PW;
		USER_AGE = uSER_AGE;
		USER_GENDER = uSER_GENDER;
	}
	public MemDTO(String uSER_ID, String uSER_PW) {
		super();
		USER_ID = uSER_ID;
		USER_PW = uSER_PW;
	}
	public MemDTO(String uSER_ID, String uSER_NAME, String uSER_PW, int uSER_AGE, String uSER_GENDER) {
		super();
		USER_ID = uSER_ID;
		USER_NAME = uSER_NAME;
		USER_PW = uSER_PW;
		USER_AGE = uSER_AGE;
		USER_GENDER = uSER_GENDER;
	}
	
	
}
