<%@page import="com.model.MemDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	
	<meta charset="UTF-8">
	<title>Login</title>
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
	</style>
       
	<!-- Custom styles for this template -->
	<link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
	<!-- Custom styles for this template -->
	<link href="blog.css" rel="stylesheet">
</head>


<body>
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
            <a type="button"  href="u_login.jsp" ><img src="./icon/user_B.png" style="align: center; width: 40px; height: 40px;"></a>
            <%} else {%>
            <a type="button" href="u_mypage.jsp" ><img src="./icon/user_B.png" style="align: center; width: 40px; height: 40px;" ></a>
            <%} %>
          </div>
          <div class="col-4 text-center">
            <a class="blog-header-logo text-dark" href="main_page.jsp" style="font-size: 20px; font-family: 'Dovemayo-Medium';">니가써봐</a>
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
          <div style="margin: auto; display: inline;"><a href="main_page.jsp"><img src="./icon/home.png" style="width: 40px; height: 40px;"></a></div>
          <div style="margin: auto; display: inline;"><a href="note_main.jsp"><img src="./icon/doc.png" style="width: 40px; height: 40px;"></a></div>
          <div style="margin: auto; display: inline;"><a href="calendar.jsp"><img src="./icon/cal.png" style="width: 40px; height: 40px;"></a></div>
          <div style="margin: auto; display: inline;"><a href="community_main.jsp"><img src="./icon/com.png" style="width: 40px; height: 40px;"></a></div>
        </nav>
      </div>
    </div>
    <!-- 네비바 종료 -->

    <br>
    <br>
    <br>
    <br>
     <!-- 로그인 기능 추가 -->
    <main class="container">
      <div class="card bg-light mb-3" >
		<div class="col-md-6 px-0" style=" margin-right: auto; margin-left: auto;">
		  <form action ="../Loginserv"  method="post">
			<fieldset>
			  <legend>
				<div class="form-group" style="font-family: 'Dovemayo Medium';"></div>
				<br>
				<h1 class="display-4 fst-italic" style="text-align: center; font-family: 'Dovemayo Medium';">로그인</h1>
				<hr class="card bg-light mb-3" style="width: 100%;">
				<br>
				<div class="form-group">
				<label for="id" class="form-label" style="font-family: 'Dovemayo Medium';">아이디</label>
                  <input type="text" class="form-control" placeholder="아이디를 입력하세요." name="ID" style="margin-bottom: 10px; font-family: 'Dovemayo Medium';">
				 
				</div>
				<div class="form-group">
				  <label for="exampleInputPassword1" class="form-label mt-4" >Password</label>
				  <input type="password" class="form-control" id="exampleInputPassword1" name="pw" placeholder="Password">
				</div>
				<div class="d-grid gap-2">
				  <br>
				  <!-- button type 변경  button -> submit -->
				  <button class="btn btn-warning" type="submit" style="font-size: 20px; font-family: 'Dovemayo Medium';">로그인</button>
				</div>
				<div>
				  <p class="text-muted" style="font-family: 'Dovemayo Medium';">아직 회원이 아니신가요? <a class="text-warning" href="u_join.jsp" style="font-family: 'Dovemayo Medium';">회원가입</a></p>
				</div>
				<br>
			  </div>
			</legend>
		  </fieldset>
		</form>
	  </div>
	</main>       
	
</body>
</html>