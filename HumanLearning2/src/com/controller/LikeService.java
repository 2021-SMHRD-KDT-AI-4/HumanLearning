package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.CommunityDAO;



@WebServlet("/LikeService")
public class LikeService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int btn = Integer.parseInt(request.getParameter("board_num"));
		System.out.println(btn);
		
		CommunityDAO dao = new CommunityDAO();
		int cnt = dao.update_like(btn);
		
		if(cnt > 0){
			int like = dao.select_like(btn);
			
			PrintWriter out = response.getWriter();
			out.print(like);
		}
	}

}
