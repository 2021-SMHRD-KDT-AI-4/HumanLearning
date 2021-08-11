package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
}
