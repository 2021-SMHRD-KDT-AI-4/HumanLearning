package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class NoteListDAO {
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	private void getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@222.102.104.172:1521:xe";
			String id = "hr";
			String pw = "hr";
			
			conn = DriverManager.getConnection(url, id, pw);
			 
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
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
	
	public ArrayList<NoteListDTO> notelist(String u_id,int c_id) {
		 ArrayList<NoteListDTO> list = new ArrayList<NoteListDTO>();
		
			try {
				getConnection();
				String sql = "SELECT * FROM VIDEOS WHERE USER_ID =? AND note_id = ? order by note_id";
				
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, u_id);
				psmt.setInt(2, c_id);
				
				rs = psmt.executeQuery();
				while(rs.next()) {
					
					int video_id = rs.getInt(1);
					String user_id = rs.getString(2);
					int note_id = rs.getInt(3);
					String video_filename = rs.getString(4);
					int play_time = rs.getInt(5);
					String upload_time = rs.getString(6);
					String video_memo = rs.getString(7);
					String video_summary = rs.getNString(8);
					
					System.out.println(video_id + user_id + note_id + video_filename+ play_time+ upload_time+ video_memo);
	          	    NoteListDTO dto = new NoteListDTO(video_id, user_id, note_id, video_filename, play_time, upload_time, video_memo, video_summary);
	          	    System.out.println(dto.getNote_id()+dto.getUser_id()+dto.getNote_id());
	          	    list.add(dto);
	          	    
				}		
			}catch (SQLException e) {
				e.printStackTrace();
			}finally {
				getClose();
			}
			//System.out.println(list.get(i).getVideo_memo());
			
			return list;
		}
		
	
	public int delete(String num) {
		
		int cnt = 0;
		String sql = "DELETE FROM VIDEOS WHERE video_id = ?";
		
		try {
			getConnection();
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, num);
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {

			e.printStackTrace();
		}finally {
			getClose();
		}
		return cnt;
		
	}
	
	
	public ArrayList<NoteCategoryDTO> classlist(String id) {
		 ArrayList<NoteCategoryDTO> list = new ArrayList<NoteCategoryDTO>();
		
			try {
				getConnection();
				String sql = "SELECT * FROM NOTE_CATEGORIES where user_id = ?";
				
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, id);
				
				rs = psmt.executeQuery();
				
				while(rs.next()) {
					int note_id = rs.getInt(1);
					String user_id = rs.getString(2);
					String video_filename = rs.getString(3);

					NoteCategoryDTO dto = new NoteCategoryDTO(note_id, user_id, video_filename);
	          	    list.add(dto);
				     
				}		
			}catch (SQLException e) {
				e.printStackTrace();
			}finally {
				getClose();
			}
			return list;
		}
}
