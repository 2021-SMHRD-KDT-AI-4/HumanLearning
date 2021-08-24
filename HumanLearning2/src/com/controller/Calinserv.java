package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.CalDAO;
import com.model.CalDTO;
import com.model.MemDTO;

@WebServlet("/Calinserv")
public class Calinserv extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		
	    MemDTO info = (MemDTO) session.getAttribute("info");
	    request.setCharacterEncoding("utf-8");
	    String user_id =info.getUSER_ID();
	    String cal_date = request.getParameter("cal_date");
	    String cal_comment = request.getParameter("cal_comment");
		
	    System.out.println(cal_comment);
		CalDTO dto = new CalDTO(user_id, cal_date, cal_comment);
		CalDAO dao = new CalDAO();
		int cnt = dao.calInput(dto);
		
		if (cnt>0) {
			System.out.println("캘린더 저장 성공");
		} else {
			System.out.println("캘린더 저장 실패");
		}
		response.sendRedirect("./resource/calendar.jsp");
	}
	

}
