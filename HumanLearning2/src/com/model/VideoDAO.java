package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class VideoDAO {
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
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public int video_upload(CalDTO dto) {
		int cnt = 0;
		getConnection();

		try {
			String sql = "INSERT INTO VIDEOS VALUES(VIDEOS_SEQ.NEXTVAL, ?, ?, ?, ?, ?)";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getUser_id());
			psmt.setString(2, dto.getCal_date());
			psmt.setString(3, dto.getCal_comment());

			cnt = psmt.executeUpdate();

			if (cnt > 0) {
				System.out.println("넘어왔다");
			} else {
				System.out.println("안넘어온다");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			getClose();
		}

		return cnt;
	}
	
	public int update_momo(String memo,int v_id) {
		int cnt = 0;
		getConnection();

		try {
			String sql = "UPDATE VIDEOS SET VIDEO_MEMO=? WHERE video_id=?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, memo);
			psmt.setInt(2, v_id);

			
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			getClose();
		}

		return cnt;
	}
	
	public VideoDTO select_video(int v_id) {
		 VideoDTO videoDTO = null;
		
			try {
				getConnection();
				String sql = "SELECT * FROM VIDEOS WHERE VIDEO_ID = ?";
				
				psmt = conn.prepareStatement(sql);
				psmt.setInt(1, v_id);
				
				rs = psmt.executeQuery();
				if(rs.next()) {
					int video_id =rs.getInt(1);
					String user_id = rs.getString(2);
					int note_id = rs.getInt(3);						
					String video_filename = rs.getString(4);
					int play_time = rs.getInt(5);
					String upload_time = rs.getString(6);
					String video_memo = rs.getString(7);
					String video_summary = rs.getString(8);
					
	          	    videoDTO = new VideoDTO(video_id, user_id, note_id, video_filename, play_time, video_filename, video_memo, video_summary);          	    
				}		
			}catch (SQLException e) {
				e.printStackTrace();
			}finally {
				getClose();
			}
			
			return videoDTO;
		}

	public int getNoteCount(String u_id) {
		 int cnt = 0;
		
			try {
				getConnection();
				String sql = "SELECT COUNT(*) FROM VIDEOS WHERE USER_ID = ?";
				
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, u_id);
				
				rs = psmt.executeQuery();
				if(rs.next()) {
					cnt =rs.getInt(1);
	          	              	    
				}		
			}catch (SQLException e) {
				e.printStackTrace();
			}finally {
				getClose();
			}
			
			return cnt;
		}
}
