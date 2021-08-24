package com.model;

public class VideoDTO {
	
	private int VIDEO_ID; 
	private String USER_ID; 
	private int NOTE_ID; 
	private String VIDEO_FILENAME; 
	private int PLAY_TIME; 
	private String UPLOAD_TIME; 
	private String VIDEO_MEMO;
	private String VIDEO_SUMMARY;
	
	
	public VideoDTO(int vIDEO_ID, String uSER_ID, int nOTE_ID, String vIDEO_FILENAME, int pLAY_TIME, String uPLOAD_TIME,
			String vIDEO_MEMO, String vIDEO_SUMMARY) {
		super();
		VIDEO_ID = vIDEO_ID;
		USER_ID = uSER_ID;
		NOTE_ID = nOTE_ID;
		VIDEO_FILENAME = vIDEO_FILENAME;
		PLAY_TIME = pLAY_TIME;
		UPLOAD_TIME = uPLOAD_TIME;
		VIDEO_MEMO = vIDEO_MEMO;
		VIDEO_SUMMARY = vIDEO_SUMMARY;
	}
	
	public int getVIDEO_ID() {
		return VIDEO_ID;
	}
	public void setVIDEO_ID(int vIDEO_ID) {
		VIDEO_ID = vIDEO_ID;
	}
	public String getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(String uSER_ID) {
		USER_ID = uSER_ID;
	}
	public int getNOTE_ID() {
		return NOTE_ID;
	}
	public void setNOTE_ID(int nOTE_ID) {
		NOTE_ID = nOTE_ID;
	}
	public String getVIDEO_FILENAME() {
		return VIDEO_FILENAME;
	}
	public void setVIDEO_FILENAME(String vIDEO_FILENAME) {
		VIDEO_FILENAME = vIDEO_FILENAME;
	}
	public int getPLAY_TIME() {
		return PLAY_TIME;
	}
	public void setPLAY_TIME(int pLAY_TIME) {
		PLAY_TIME = pLAY_TIME;
	}
	public String getUPLOAD_TIME() {
		return UPLOAD_TIME;
	}
	public void setUPLOAD_TIME(String uPLOAD_TIME) {
		UPLOAD_TIME = uPLOAD_TIME;
	}
	public String getVIDEO_MEMO() {
		return VIDEO_MEMO;
	}
	public void setVIDEO_MEMO(String vIDEO_MEMO) {
		VIDEO_MEMO = vIDEO_MEMO;
	}
	public String getVIDEO_SUMMARY() {
		return VIDEO_SUMMARY;
	}
	public void setVIDEO_SUMMARY(String vIDEO_SUMMARY) {
		VIDEO_SUMMARY = vIDEO_SUMMARY;
	}
	
	
	
}
