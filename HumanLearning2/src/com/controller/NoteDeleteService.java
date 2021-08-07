package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.NoteListDAO;

@WebServlet("/NoteDeleteService")
public class NoteDeleteService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num = request.getParameter("num");
		
		NoteListDAO dao = new NoteListDAO();
		int cnt = dao.delete(num);
		
		if(cnt > 0 ) {
			System.out.println("노트 삭제 성공");
		}else {
			System.out.println("노트 삭제 실패");
		}
		response.sendRedirect("resource/note_main.jsp");
	}

}
