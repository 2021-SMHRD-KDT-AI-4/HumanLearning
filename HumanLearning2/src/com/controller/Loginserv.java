package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemDAO;
import com.model.MemDTO;

@WebServlet("/Loginserv")
public class Loginserv extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// 회원 로그인 08-03 조찬호
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("ID");
		String pw = request.getParameter("pw");
		
		MemDTO dto = new MemDTO(id, pw);
		MemDAO dao = new MemDAO();
		MemDTO info = dao.login(dto);
		HttpSession session = request.getSession();
		
		if (info != null) {
			session.setMaxInactiveInterval(1800);
			session.setAttribute("info", info);
			System.out.println("로그인 성공");
			System.out.println(id+pw);
			System.out.println(info.getMEMBERSHIP_NAME());
			System.out.println(info.getUSER_NAME());
			System.out.println(info.getUSER_AGE());
			System.out.println(info.getUSER_GENDER());
			
		} else {
			session.setAttribute("null", session);
			System.out.println("로그인 실패");
		}
		
		response.sendRedirect("./resource/main_page.jsp");
	}

}
