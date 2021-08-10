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

		//img경로 가져오기
		String savePath = request.getServletContext().getRealPath("img");
		System.out.println(savePath);
		
		//이미지 크기 지정
		int maxSize = 5*1024*1024;
		
		//사진이름 인코딩 방식 지정
		String encoding = "EUC-KR";
		
		//DefaultFileRenamePolicy: 뒤에 숫자 붙혀서 이름 중복 제거 해주는 클래스
		//request, 사진저장 경로, 이미지 사이즈, 인코딩 방식, 중복제거 여부
		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
		
		String post_title = multi.getParameter("title");
//		String uid = multi.getParameter("user_id");
		HttpSession session = request.getSession();
		MemDTO info = (MemDTO) session.getAttribute("info");
		String user_id =info.getUSER_ID();
		System.out.println(user_id);
		//이미지 테그에 경로적을때 16진수로 해줘야함 따라서 인코딩 진행(문자 -> 코드)
		String post_contents = multi.getParameter("content");
		String fileName = URLEncoder.encode(multi.getFilesystemName("file"), "EUC-KR");
		
		
		CommunityDTO dto = new CommunityDTO(post_title, user_id, post_contents, fileName);
		CommunityDAO dao = new CommunityDAO();
		int cnt = dao.insert(dto);
		
		if(cnt>0) {
			System.out.println("전송 성공");
		}else {
			System.out.println("전송 실패");
		}
		response.sendRedirect("./resource/community_main.jsp");
	
	}

}
