<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	
	<meta charset="UTF-8">
	<title>JOIN</title>
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
	
	<!--  네비바 시작 -->
    <div class="container">
      <header class="blog-header py-3">
        <div class="row flex-nowrap justify-content-between align-items-center">
          <div class="col-4 pt-1">
            <a href="./My_page.html"><img src="./icon/user_B.png" style="align: center; width: 40px; height: 40px;"></a>
          </div>
          <div class="col-4 text-center">
            <a class="blog-header-logo text-dark" href="#" style="font-size: 30px; font-family: 'Dovemayo Medium';">니가써봐</a>
          </div>
          <div class="col-4 d-flex justify-content-end align-items-center">
            <a class="btn btn-sm btn-outline-secondary" href="./Login_page.html">Sign up</a>
          </div>
        </div>
	  </header>
    
      <div class="nav-scroller py-1 mb-2">
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
            <div style="margin: auto; display: inline;"><a href="./Main_page.html"><img src="./icon/home.png" style="width: 40px; height: 40px;"></a></div>
            <div style="margin: auto; display: inline;"><a href="./Note_List_Page.html"><img src="./icon/doc.png" style="width: 40px; height: 40px;"></a></div>
            <div style="margin: auto; display: inline;"><a href=""><img src="./icon/cal.png" style="width: 40px; height: 40px;"></a></div>
            <div style="margin: auto; display: inline;"><a href="./Community_page.html"><img src="./icon/com.png" style="width: 40px; height: 40px;"></a></div>
        </nav>
      </div>
	</div>
    <!-- 네비바 종료 -->
    <br>
    <br>
    <br>
    <br>
    <main class="container">
      <div class="card bg-light mb-3" >
        <div class="col-md-6 px-0" style=" margin-right: auto; margin-left: auto;">
          <form>
			<fieldset>
			  <legend>
				<div class="form-group" style="font-family: 'Dovemayo Medium';"></div>
				<br>
				<h1 class="display-4" style="text-align: center; font-family: 'Dovemayo Medium';">회원가입</h1>
				<p class="lead" style="text-align: center; font-family: 'Dovemayo Medium';">회원가입에 필요한 정보를 작성해주세요.</p>
				<hr class="card bg-light mb-3" style="width: 100%;">

				<form class="needs-validation" style=" font-family: 'Dovemayo Medium';">
				  <div class="row g-3" style="font-family: 'Dovemayo Medium';">
					<div class="col-12">
					  <label for="ID" class="form-label">아이디</label>
                      <input type="text" class="form-control" placeholder="아이디를 입력하세요." id="ID" style="margin-bottom: 10px; font-family: 'Dovemayo Medium';">
                      <input id="ID_btn" type="button" class="btn btn-warning" value="ID중복 체크" style="font-family: 'Dovemayo Medium';">
					</div>
              
					<div class="col-12" style="font-family: 'Dovemayo Medium';">
					  <label for="PW" class="form-label">비밀번호</label>
					  <div class="input-group has-validation">
						<input type="password" class="form-control" placeholder="비밀번호를 입력하세요." id="PW" style="font-family: 'Dovemayo Medium';">
                      </div>
					</div>
					
					<div class="col-12" style="font-family: 'Dovemayo Medium';">
					  <label for="name" class="form-label">이름</label>
					  <input type="text" class="form-control" placeholder="이름을 입력하세요." id="NAME" style="font-family: 'Dovemayo Medium';">
					</div>
              
					<div class="col-12" style="font-family: 'Dovemayo Medium';">
					  <label for="genader" class="form-label" >성별</label>
					  <select class="form-select" id="GENDER" required style="font-family: 'Dovemayo Medium';">
					    <option value="Choose" style="font-family: 'Dovemayo Medium';">여자</option>
                                <option value="Choose" style="font-family: 'Dovemayo Medium';">남자</option>
					  </select>
					</div>
              
					<div class="col-12" style="font-family: 'Dovemayo Medium';">
					  <label for="age" class="form-label">나이</label>
					  <input type="text" class="form-control" placeholder="나이를 입력하세요." id="AGE">
					  <br>
					</div>
					<button class="w-100 btn btn-warning btn-lg" type="submit" style="font-family: 'Dovemayo Medium';">회원 가입 하기</button>
				  </div>
                  <br>
                  <br>
				</form>
              </legend>
            </fieldset>
          </form>
        </div>
      </div>
	</main>       

</body>
</html>