
<%@page import="com.model.MemDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	
	<meta charset="UTF-8">
        <title>UPLOAD</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <style>
          .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
          }
    
          @media (min-width: 768px) {
            .bd-placeholder-img-lg {
              font-size: 3.5rem;
            }
          }
          .btn-warning:hover{
            filter: brightness(0), invert(1);
          }
          .category{
	          width: 40%;
	          font-family: 'Dovemayo Medium';
	          float: left;
	          position: relative;
          }
          .keyword{
	          width: 40%;
	          margin-left: 10%;
	          font-family: 'Dovemayo Medium';
	          float: left;
	          position: relative;
          }
          .ca_btn{
	          font-family: 'Dovemayo Medium'; 
	          float: right; 
	          top: auto; 
	          left: 65%;
          }
          .video_up{
	           font-size: 25px; 
	           font-family: 'Dovemayo Medium';
          }
          .video_file{
	          width: 30%; 
	          font-family: 'Dovemayo Medium'; 
	          position: fixed;
          }
          .upload_btn{
	          font-family: 'Dovemayo Medium'; 
	          position: absolute; 
	          top: auto; 
	          left: 65%;
          }
          .nav_div{
		       margin: auto; 
		       display: inline;
	       }
	       .nav_icon{
		       width: 40px; 
		       height: 40px;
	       }
	       .nav_con_icon{
		       align: center; 
		       width: 40px; 
		       height: 40px;
	       }
	       .main_logo{
		        font-size: 20px; 
		        font-family: 'Dovemayo-Medium';
	       }
	       .input_ca_ke{
	       		font-size: 25px; 
	       		font-family: 'Dovemayo Medium';
	       }
	       .new_note{
	       		font-family: 'Dovemayo Medium';
	       }
	       .note_form{
	       		align-items: center;
	       }
	       .new_note_div{
	       		text-align: center; 
	       		margin-right: auto; 
	       		margin-left: auto;
	       }
        </style>
    
        
        <!-- Custom styles for this template -->
        <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="blog.css" rel="stylesheet">
	
</head>
<body>
	
		<!--  네비바 시작 -->
    <!-- 로그인 정보 세션 저장 08.03 (조찬호)-->
	<%
		MemDTO info = (MemDTO)session.getAttribute("info");	
	%>
	<div class="container">
      <header class="blog-header py-3">
        <div class="row flex-nowrap justify-content-between align-items-center">
          <div class="col-4 pt-1">
          <!-- 세션 정보 유무에 따라 로그인 / 마이페이지 버튼  버튼 08-03 조찬호 --> 
          <% if (info==null) {%>
            <a type="button"  href="u_login.jsp" ><img class="nav_con_icon" src="./icon/user_B.png"></a>
            <%} else {%>
            <a type="button" href="u_mypage.jsp" ><img class="nav_con_icon" src="./icon/user_B.png"></a>
            <%} %>
          </div>
          <div class="col-4 text-center">
            <a class="blog-header-logo text-dark main_logo" href="main_page.jsp">니가써봐</a>
          </div>
          <div class="col-4 d-flex justify-content-end align-items-center">
            <a class="link-secondary" href="#" aria-label="Search">
              <!-- <img src = "./icon/dot_B.png" style="width: 25px; height: 25px; margin-right: 20px;"> -->
            </a>
            <form>
            <% if (info==null) {%>
            <a class="btn btn-sm btn-outline-secondary" href="u_login.jsp">Login</a>
            <%} else if (info!= null){%>
            <a class="btn btn-sm btn-outline-secondary" href="../Logoutserv" >Logout</a>
            <%} %>
            </form>
          </div>
        </div>
      </header>
    
      <div class="nav-scroller py-1 mb-2">
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
          <div class="nav_div"><a href="main_page.jsp"><img class="nav_icon" src="./icon/home.png" ></a></div>
          <div class="nav_div"><a href="note_main.jsp"><img class="nav_icon" src="./icon/doc.png"></a></div>
          <div class="nav_div"><a href="calendar.jsp"><img class="nav_icon" src="./icon/cal.png"></a></div>
          <div class="nav_div"><a href="community_main.jsp"><img class="nav_icon" src="./icon/com.png"></a></div>
        </nav>
      </div>
    </div>
    <!-- 네비바 종료 -->
    <br>
    <br>
    <br>
    <br>
    <main class="container">
        <div class="p-4 p-md-5 mb-4 text-white rounded bg-dark" >
          <div class="col-md-6 px-0 new_note_div">
            <h1 class="display-4 fst-italic new_note" >새노트 생성</h1>
            <br>
            <br>
            <form class="note_form" action="" method="POST" >
            	<div>
                    <p class="lead my-3 input_ca_ke">생성할 노트의 카테고리와 키워드를 입력하세요</p>
                    <input type="text" class="form-control category" placeholder="카테고리 입력" >
                    <input type="text" class="form-control keyword" placeholder="키워드 입력" >
                    <input type="submit" value="입력" class="btn btn-warning ca_btn">
                </div>
                <br>
                <br>
                <div>
                    <p class="lead my-3 video_up">영상 파일 업로드</p>
                    <input type="file" class="form-control video_file">
                    <input type="submit" value="노트 생성" class="btn btn-warning upload_btn" >
                </div>
                <br>
                <br>
            </form>
          </div>
        </div>
    </main>        
	
</body>
</html>