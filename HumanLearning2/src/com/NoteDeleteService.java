package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/NoteDeleteService")
public class NoteDeleteService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		String num = request.getParameter("num");
		
		NoteListDAO dao = new NoteListDAO();
		int cnt = dao.delete(num);
		
		if(cnt > 0 ) {
			System.out.println("��Ʈ ���� ����");
		}else {
			System.out.println("��Ʈ ���� ����");
		}
		response.sendRedirect("resource/note_main.jsp");
		

	}

}
