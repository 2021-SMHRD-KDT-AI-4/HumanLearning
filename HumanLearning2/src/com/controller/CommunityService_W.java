package com.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.CommunityDAO;
import com.model.CommunityDTO;
import com.model.MemDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/CommunityService_W")
public class CommunityService_W extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		//img��� ��������
		String savePath = request.getServletContext().getRealPath("img");
		System.out.println(savePath);
		
		//�̹��� ũ�� ����
		int maxSize = 5*1024*1024;
		
		//�����̸� ���ڵ� ��� ����
		String encoding = "EUC-KR";
		
		//DefaultFileRenamePolicy: �ڿ� ���� ������ �̸� �ߺ� ���� ���ִ� Ŭ����
		//request, �������� ���, �̹��� ������, ���ڵ� ���, �ߺ����� ����
		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
		
		String post_title = multi.getParameter("title");
//		String uid = multi.getParameter("user_id");
		HttpSession session = request.getSession();
		MemDTO info = (MemDTO) session.getAttribute("info");
		String user_id =info.getUSER_ID();
		System.out.println(user_id);
		//�̹��� �ױ׿� ��������� 16������ ������� ���� ���ڵ� ����(���� -> �ڵ�)
		String post_contents = multi.getParameter("content");
		String fileName = URLEncoder.encode(multi.getFilesystemName("file"), "EUC-KR");
		
		
		CommunityDTO dto = new CommunityDTO(post_title, user_id, post_contents, fileName);
		CommunityDAO dao = new CommunityDAO();
		int cnt = dao.insert(dto);
		
		if(cnt>0) {
			System.out.println("���� ����");
		}else {
			System.out.println("���� ����");
		}
		response.sendRedirect("./resource/community_main.jsp");
	
	}

}
