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
	            System.out.println(" 耭 都 ");
	         } else {
	            System.out.println(" 홰耭 쨈 ");
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         getClose();
	      }
	      return cnt;
	   }
	   
	   public int calDelete(String num) {
	      
	      int cnt = 0;
	      String sql = "DELETE FROM CALENDARS WHERE CAL_COMMENT = ?";//異� �닔�젙
	      
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
	   
	   public ArrayList<CalDTO> calOutput() {
	      
	      ArrayList<CalDTO> cInput = new ArrayList<CalDTO>();
	      getConnection();

	      try {

	         String sql = "SELECT cal_comment, USER_ID FROM CALENDARS WHERE TO_CHAR(SYSDATE,'YYYY-MM-DD') = CAL_DATE";
	         psmt = conn.prepareStatement(sql);
	         //psmt.setString(1, dto1.getUser_id());
	         rs = psmt.executeQuery();

	         while (rs.next()) {
	            
	            String user_id = rs.getString("user_id");
	            String cal_comment = rs.getString("cal_comment");
	            CalDTO dto = new CalDTO(user_id, cal_comment);
	            cInput.add(dto);
	         }

	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         getClose();
	      }
	      return cInput;

	   }
	   
	   public ArrayList<CalDTO> calOutput2() {

	      ArrayList<CalDTO> cInput2 = new ArrayList<CalDTO>();
	      getConnection();

	      try {

	         String sql = "SELECT cal_comment, USER_ID FROM CALENDARS WHERE TO_CHAR(SYSDATE+1,'YYYY-MM-DD') = CAL_DATE";
	         psmt = conn.prepareStatement(sql);
	         rs = psmt.executeQuery();

	         while (rs.next()) {      
	            String user_id = rs.getString("user_id");
	            String cal_comment = rs.getString("cal_comment");
	            CalDTO dto = new CalDTO(user_id, cal_comment);
	            cInput2.add(dto);
	         }

	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         getClose();
	      }
	      return cInput2;
	   }
	   
	   public ArrayList<CalDTO> calOutput3() {

	      ArrayList<CalDTO> cInput3 = new ArrayList<CalDTO>();
	      getConnection();

	      try {
	         String sql = "SELECT cal_comment, USER_ID FROM CALENDARS WHERE TO_CHAR(SYSDATE+2,'YYYY-MM-DD') = CAL_DATE";
	         psmt = conn.prepareStatement(sql);
	         rs = psmt.executeQuery();

	         while (rs.next()) {
	            String user_id = rs.getString("user_id");
	            String cal_comment = rs.getString("cal_comment");
	            CalDTO dto = new CalDTO(user_id, cal_comment);
	            cInput3.add(dto);
	         }

	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         getClose();
	      }
	      return cInput3;
	   }
	   
	   public ArrayList<CalDTO> calOutput4() {

	      ArrayList<CalDTO> cInput4 = new ArrayList<CalDTO>();
	      getConnection();

	      try {
	         String sql = "SELECT cal_comment, USER_ID FROM CALENDARS WHERE TO_CHAR(SYSDATE+3,'YYYY-MM-DD') = CAL_DATE";
	         psmt = conn.prepareStatement(sql);
	         rs = psmt.executeQuery();
	         while (rs.next()) {
	            String user_id = rs.getString("user_id");
	            String cal_comment = rs.getString("cal_comment");
	            CalDTO dto = new CalDTO(user_id, cal_comment);
	            cInput4.add(dto);
	         }

	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         getClose();
	      }
	      return cInput4;
	   }
	   
	   public ArrayList<CalDTO> calOutput5() {

	      ArrayList<CalDTO> cInput5 = new ArrayList<CalDTO>();
	      getConnection();

	      try {

	         String sql = "SELECT cal_comment, USER_ID FROM CALENDARS WHERE TO_CHAR(SYSDATE+4,'YYYY-MM-DD') = CAL_DATE";
	         psmt = conn.prepareStatement(sql);
	         rs = psmt.executeQuery();

	         while (rs.next()) {
	            String user_id = rs.getString("user_id");
	            String cal_comment = rs.getString("cal_comment");
	            CalDTO dto = new CalDTO(user_id, cal_comment);
	            cInput5.add(dto);
	         }

	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         getClose();
	      }
	      return cInput5;
	   }
	   
	   public ArrayList<CalDTO> calOutput6() {

	      ArrayList<CalDTO> cInput6 = new ArrayList<CalDTO>();
	      getConnection();

	      try {
	         String sql = "SELECT cal_comment, USER_ID FROM CALENDARS WHERE TO_CHAR(SYSDATE+5,'YYYY-MM-DD') = CAL_DATE";
	         psmt = conn.prepareStatement(sql);
	         rs = psmt.executeQuery();
	         while (rs.next()) {
	            String user_id = rs.getString("user_id");
	            String cal_comment = rs.getString("cal_comment");
	            CalDTO dto = new CalDTO(user_id, cal_comment);
	            cInput6.add(dto);
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         getClose();
	      }
	      return cInput6;
	   }
	   
	   public ArrayList<CalDTO> calOutput7() {

	      ArrayList<CalDTO> cInput7 = new ArrayList<CalDTO>();
	      getConnection();

	      try {
	         String sql = "SELECT cal_comment, USER_ID FROM CALENDARS WHERE TO_CHAR(SYSDATE+6,'YYYY-MM-DD') = CAL_DATE";
	         psmt = conn.prepareStatement(sql);
	         rs = psmt.executeQuery();
	         while (rs.next()) {
	            String user_id = rs.getString("user_id");
	            String cal_comment = rs.getString("cal_comment");
	            CalDTO dto = new CalDTO(user_id, cal_comment);
	            cInput7.add(dto);
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         getClose();
	      }
	      return cInput7;
	   }
	}