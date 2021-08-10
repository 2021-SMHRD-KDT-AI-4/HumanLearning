package com.model;

public class CommunityDTO {

	int ARTICLE_ID;
	String USER_ID;
	String POST_TIME;
	String ARTICLE_TITLE;
	String ARTICLE_CONTENT;
	String IMG_PATH;
	int LIKE_NUM;
	int NUM;
	

	public int getARTICLE_ID() {
		return ARTICLE_ID;
	}

	public void setARTICLE_ID(int aRTICLE_ID) {
		ARTICLE_ID = aRTICLE_ID;
	}

	public String getUSER_ID() {
		return USER_ID;
	}

	public void setUSER_ID(String uSER_ID) {
		USER_ID = uSER_ID;
	}

	public String getPOST_TIME() {
		return POST_TIME;
	}

	public void setPOST_TIME(String pOST_TIME) {
		POST_TIME = pOST_TIME;
	}

	public String getARTICLE_TITLE() {
		return ARTICLE_TITLE;
	}

	public void setARTICLE_TITLE(String aRTICLE_TITLE) {
		ARTICLE_TITLE = aRTICLE_TITLE;
	}

	public String getARTICLE_CONTENT() {
		return ARTICLE_CONTENT;
	}

	public void setARTICLE_CONTENT(String aRTICLE_CONTENT) {
		ARTICLE_CONTENT = aRTICLE_CONTENT;
	}

	public String getIMG_PATH() {
		return IMG_PATH;
	}

	public void setIMG_PATH(String iMG_PATH) {
		IMG_PATH = iMG_PATH;
	}

	public int getLIKE_NUM() {
		return LIKE_NUM;
	}

	public void setLIKE_NUM(int lIKE_NUM) {
		LIKE_NUM = lIKE_NUM;
	}

	public int getNUM() {
		return NUM;
	}

	public void setNUM(int nUM) {
		NUM = nUM;
	}
	
	

	public CommunityDTO(int aRTICLE_ID, String uSER_ID, String pOST_TIME, String aRTICLE_TITLE, String aRTICLE_CONTENT,
			String iMG_PATH, int lIKE_NUM, int nUM) {
		super();
		ARTICLE_ID = aRTICLE_ID;
		USER_ID = uSER_ID;
		POST_TIME = pOST_TIME;
		ARTICLE_TITLE = aRTICLE_TITLE;
		ARTICLE_CONTENT = aRTICLE_CONTENT;
		IMG_PATH = iMG_PATH;
		LIKE_NUM = lIKE_NUM;
		NUM = nUM;
	}
	
	

	public CommunityDTO(int aRTICLE_ID, String uSER_ID, String pOST_TIME, String aRTICLE_TITLE, String aRTICLE_CONTENT,
			String iMG_PATH, int lIKE_NUM) {
		super();
		ARTICLE_ID = aRTICLE_ID;
		USER_ID = uSER_ID;
		POST_TIME = pOST_TIME;
		ARTICLE_TITLE = aRTICLE_TITLE;
		ARTICLE_CONTENT = aRTICLE_CONTENT;
		IMG_PATH = iMG_PATH;
		LIKE_NUM = lIKE_NUM;
	}

	
	public CommunityDTO(String uSER_ID, String aRTICLE_TITLE, String aRTICLE_CONTENT, String iMG_PATH) {
		super();
		USER_ID = uSER_ID;
		ARTICLE_TITLE = aRTICLE_TITLE;
		ARTICLE_CONTENT = aRTICLE_CONTENT;
		IMG_PATH = iMG_PATH;
	}

	public CommunityDTO(String uSER_ID) {
		super();
		USER_ID = uSER_ID;
	}

}
