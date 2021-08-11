package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CalDAO {

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
	
	public ArrayList<CalDTO> cal_please(String s_user_id){
	      ArrayList<CalDTO> cal_ci_list = new ArrayList<CalDTO>();
	      
	      getConnection();
	      
	      String sql = "select cal_comment, cal_date from CALENDARS where user_id = ? order by CAL_DATE asc";


	      try {
	         psmt = conn.prepareStatement(sql);
	         psmt.setString(1, s_user_id);
	         rs = psmt.executeQuery();
	         
	         while (rs.next()) {
	            
	            String cal_comment = rs.getString("cal_comment");
	            String cal_date = rs.getString("cal_date");
	            
	            CalDTO dto = new CalDTO(cal_comment,cal_date);
	            cal_ci_list.add(dto);   
	         }
	         
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }finally {
	         getClose();
	      }
	      
	      return cal_ci_list;
	      

	      
	   }


	public int calInput(CalDTO dto) {

		int cnt = 0;
		getConnection();

		try {
			String sql = "INSERT INTO CALENDARS VALUES(CALENDARS_SEQ.NEXTVAL, ?, ?, ?)";

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

	public ArrayList<CalDTO> calOutput() {

		ArrayList<CalDTO> cInput = new ArrayList<CalDTO>();
		getConnection();

		try {

			String sql = "SELECT cal_comment FROM CALENDARS WHERE TO_CHAR(SYSDATE,'YYYY-MM-DD') = CAL_DATE";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				String cal_comment = rs.getString("cal_comment");

				CalDTO dto = new CalDTO(cal_comment);
				cInput.add(dto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			getClose();
		}
		return cInput;

	}
}
