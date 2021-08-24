package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CommunityDAO {
	
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	
	private void getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String durl = "jdbc:oracle:thin:@222.102.104.172:1521:xe";
			String did = "hr";
			String dpw = "hr";
			
			conn = DriverManager.getConnection(durl, did, dpw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void getClose() {
		try {
			if(rs != null){
				rs.close();
			}
			if(psmt != null){
				psmt.close();
			}
			if(conn != null){
				conn.close();
			}
	}catch (SQLException e) {
		e.printStackTrace();
		}
	}
	
	//�Խñ� �߰�
	public int insert(CommunityDTO dto) {
		int cnt = 0;
		try {
			getConnection();
			String sql = "INSERT INTO BOARDS values (BOARDS_SEQ.NEXTVAL, ?, SYSDATE,?, ?, ?, 0)";
			
			psmt = conn.prepareStatement(sql);
			psmt.setNString(1, dto.getUSER_ID());
			psmt.setNString(2, dto.getARTICLE_TITLE());
			psmt.setNString(3, dto.getARTICLE_CONTENT());
			psmt.setNString(4, dto.getIMG_PATH());
			
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			getClose();
		}
		return cnt;
	}

	//�Խñ� ��������
	public ArrayList<CommunityDTO> showBoard() {
		ArrayList<CommunityDTO> list = new ArrayList<CommunityDTO>();
		
		
		getConnection();
		
		
		String sql = "select * from BOARDS order by ARTICLE_ID desc ";
		
		try {
			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery();
			
			while (rs.next()) {
				int ARTICLE_ID = rs.getInt("ARTICLE_ID");
				String USER_ID = rs.getString("USER_ID");
				String POST_TIME = rs.getString("POST_TIME");
				String ARTICLE_TITLE = rs.getString("ARTICLE_TITLE");
				String ARTICLE_CONTENT = rs.getString("ARTICLE_CONTENT");
				String IMG_PATH = rs.getString("IMG_PATH");
				int LIKE_NUM = rs.getInt("LIKE_NUM");
				
				
				CommunityDTO dto = new CommunityDTO(ARTICLE_ID, USER_ID, POST_TIME, ARTICLE_TITLE, ARTICLE_CONTENT, IMG_PATH, LIKE_NUM);
				list.add(dto);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			getClose();
		}
		
		return list;
	}
	
	public int update_like(int btn) {
		int cnt = 0;
	
		try {
			getConnection();

			String sql = "UPDATE BOARDS SET LIKE_NUM = LIKE_NUM+1 WHERE ARTICLE_ID = ? ";
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1, btn);

			cnt = psmt.executeUpdate();
			
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			getClose();
		}
		return cnt;
	}
	
	public int select_like(int btn) {

		int like = 0;
		
		try {
			getConnection();
			
			String sql = "SELECT LIKE_NUM FROM BOARDS WHERE ARTICLE_ID = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, btn);
			
			rs = psmt.executeQuery();
			
			if(rs.next()){
				like = rs.getInt("LIKE_NUM");
			}else {
				like = 0;
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			getClose();
		}
		return like;
	}
	
	public int dislike(int btn) {
		int cnt = 0;
	
		try {
			getConnection();

			String sql = "UPDATE BOARDS SET LIKE_NUM = LIKE_NUM-1 WHERE ARTICLE_ID = ? ";
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1, btn); 

			cnt = psmt.executeUpdate();
			
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			getClose();
		}
		return cnt;
	}
	 
}

