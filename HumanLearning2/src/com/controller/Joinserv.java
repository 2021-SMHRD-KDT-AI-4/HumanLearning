package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemDAO;
import com.model.MemDTO;


@WebServlet("/Joinserv")
public class Joinserv extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// 회원 가입 08-03 조찬호
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("euc-kr");
		String id = request.getParameter("ID");
		String pw = request.getParameter("PW");
		String name = request.getParameter("NAME");
		String gender = request.getParameter("GENDER");
		int age = (Integer.parseInt(request.getParameter("AGE")));
		
	
		MemDTO dto = new MemDTO(id, pw, name, age, gender);
		MemDAO dao = new MemDAO();
		int cnt = dao.join(dto);
		int info = 0;
		HttpSession session = request.getSession();
		if (cnt>0) {
			System.out.println("회원가입 성공");
			response.sendRedirect("./resource/main_page.jsp");
			
		} else {
			info = 1;
			System.out.println("회원가입 실패");
			session.setMaxInactiveInterval(1800);
			session.setAttribute("cnt", info);
		
			response.sendRedirect("./resource/u_join.jsp");
			
			
		      

			// "회원가입 실패 하면 실패 메세지 뜨고 초기 회원가입 페이지(아무것도 안적혀있는페이지)로"
		}
		
	}



	
}
