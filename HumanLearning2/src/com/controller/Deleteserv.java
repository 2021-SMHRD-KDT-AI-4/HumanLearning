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

@WebServlet("/Deleteserv")
public class Deleteserv extends HttpServlet {
	private static final long serialVersionUID = 1L;

// È¸¿ø Å»Åð 08-03 Á¶ÂùÈ£	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session =  request.getSession();
		MemDTO info = (MemDTO)session.getAttribute("info");
		String id = info.getUSER_ID();
		String pw = request.getParameter("pw");
		
		MemDTO dto = new MemDTO(id , pw);
		MemDAO dao = new MemDAO();
		int cnt = dao.delete(dto);
		
		if (cnt > 0 ) {
			System.out.println("È¸¿ø Å»Åð ¼º°ø");
			session.invalidate();
			response.sendRedirect("main_page.jsp");
			
		}else {
			System.out.println("È¸¿ø Å»Åð ½ÇÆÐ");
			response.sendRedirect("u_mypage.jsp");
		
	}
		
	}

}

