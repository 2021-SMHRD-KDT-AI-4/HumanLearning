package com.model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


// MemDAO 08-03 조찬호
public class MemDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;

	public void getConn() {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@222.102.104.172:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		
	}
	
	public void close() {
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

	public int join(MemDTO dto) {
		getConn();
		
		try {

			String sql = "INSERT INTO USERS VALUES(?,1,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getUSER_ID());
			psmt.setString(2, dto.getUSER_PW());
			psmt.setString(3, dto.getUSER_NAME());
			psmt.setInt(4, dto.getUSER_AGE());
			psmt.setString(5, dto.getUSER_GENDER());

			cnt = psmt.executeUpdate();
			
			if (cnt > 0 ) {
				System.out.println("회원가입 성공");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
		
	}
	
	public MemDTO login(MemDTO dto) {
			
		getConn();
		
		MemDTO info = null;
		
		try {

			String sql = "SELECT * FROM USERS WHERE USER_ID = ? AND USER_PW = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getUSER_ID());
			psmt.setString(2, dto.getUSER_PW());

			rs = psmt.executeQuery();

			if (rs.next()) {
				String login_id = rs.getString(1);
				String login_membership_id = rs.getString(2);
				String login_pw = rs.getString(3);
				String login_name = rs.getString(4);
				int login_age = rs.getInt(5);
				String login_gender = rs.getString(6);
				
				
				info = new MemDTO(login_id, login_membership_id, login_pw, login_name, login_age, login_gender);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return info;
	}

	public int delete(MemDTO dto) {
		
		
		try {
			getConn();
			
			String sql = "delete USERS where USER_ID = ? ";
	
			psmt = conn.prepareStatement(sql);
	
			psmt.setString(1 , dto.getUSER_ID());
	
			cnt = psmt.executeUpdate();
			
			if (cnt > 0 ) {
				System.out.println("성성성성성성");
			}else {
				System.out.println("sssssssssssssssss");
			}
	
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return cnt;
	}

	public boolean idCheck(String ID) {
	    boolean check = false;
	    
	    try {
	       getConn();
	       
	       String sql = "SELECT * FROM USERS WHERE USER_ID = ?";
	       
	       psmt = conn.prepareStatement(sql);
	       psmt.setString(1, ID);
	       
	       rs = psmt.executeQuery();   
	    
	       if(rs.next()){
	          check = true;
	       }else {
	          check = false;
	       }
	       }catch (SQLException e) {
	          e.printStackTrace();
	       }finally {
	          close();
	        }
	       return check;   
	 }
}

