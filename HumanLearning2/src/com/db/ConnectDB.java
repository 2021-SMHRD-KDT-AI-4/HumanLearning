package com.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ConnectDB {
	 private static ConnectDB instance = new ConnectDB();

	    public static ConnectDB getInstance() {
	        return instance;
	    }
	    public ConnectDB() {  }

	    // oracle ����
	    String jdbcUrl = "jdbc:oracle:thin:@192.168.20.53:1521:xe";
	    String userId = "hr";
	    String userPw = "hr";

	    Connection conn = null;
	    PreparedStatement pstmt = null;
	    PreparedStatement pstmt2 = null;
	    ResultSet rs = null;

	    String sql = "";
	    String sql2 = "";
	    String returns = "a";

	    public String connectionDB(String id, String pwd) {
	        try {
	            Class.forName("oracle.jdbc.driver.OracleDriver");
	            conn = DriverManager.getConnection(jdbcUrl, userId, userPw);

	            sql = "SELECT id FROM userTBL WHERE id = ?";
	            pstmt = conn.prepareStatement(sql);
	            pstmt.setString(1, id);

	            rs = pstmt.executeQuery();
	            if (rs.next()) {
	                returns = "�̹� �����ϴ� ���̵� �Դϴ�.";
	            } else {
	                sql2 = "INSERT INTO userTBL VALUES(?,?)";
	                pstmt2 = conn.prepareStatement(sql2);
	                pstmt2.setString(1, id);
	                pstmt2.setString(2, pwd);
	                pstmt2.executeUpdate();
	                returns = "ȸ�� ���� ���� !";
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            if (pstmt2 != null)try {pstmt2.close();    } catch (SQLException ex) {}
	            if (pstmt != null)try {pstmt.close();} catch (SQLException ex) {}
	            if (conn != null)try {conn.close();    } catch (SQLException ex) {    }
	        }
	        return returns;
	    }
	}