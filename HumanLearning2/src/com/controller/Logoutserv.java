package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Logoutserv")
public class Logoutserv extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	// ȸ�� �α׾ƿ� 08-03 ����ȣ
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("info");
		
			System.out.println("�α׾ƿ� ����");
		
		response.sendRedirect("./resource/main_page.jsp");
	}



}
