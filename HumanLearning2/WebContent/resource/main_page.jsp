<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>NigasseoBa</title>
	<link rel="stylesheet" href="css/bootstrap.css">
        
	<link rel="stylesheet" href="css/common.css"> <!-- 달력 css1 -->
	<link rel="stylesheet" href="css/reset.css">  <!-- 달력 css2 -->
        
	<script src="js/main.js"></script> <!-- 달력 기능1 -->
	<script src="js/data.js"></script> <!-- 달력 기능2 -->

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
          
		@font-face {
             font-family: 'Dovemayo-Medium';
             src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.0/Dovemayo-Medium.woff') format('woff');
	         font-weight: normal;
	         font-style: normal;
	                
	         font-family: 'Dovemayo-Bold';
	         src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.0/Dovemayo-Bold.woff') format('woff');
	         font-weight: normal;
	         font-style: normal;
		}

		td{
			font-family: 'Dovemayo-Medium';
			font-size: 25px;
		}
	</style>
	<!-- Custom styles for this template -->
	<link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
	<!-- Custom styles for this template -->
	<link href="blog.css" rel="stylesheet">

</head>


<body>
	<div class="container">
      <header class="blog-header py-3">
        <div class="row flex-nowrap justify-content-between align-items-center">
          <div class="col-4 pt-1">
            <a><img src="./icon/user_B.png" style="align: center; width: 40px; height: 40px;"></a>
          </div>
          <div class="col-4 text-center">
            <a class="blog-header-logo text-dark" href="#" style="font-size: 30px; font-family: 'Dovemayo-Medium';">니가써봐</a>
          </div>
          <div class="col-4 d-flex justify-content-end align-items-center">
            <a class="link-secondary" href="#" aria-label="Search">
              <!-- <img src = "./icon/dot_B.png" style="width: 25px; height: 25px; margin-right: 20px;"> -->
            </a>
            <a class="btn btn-sm btn-outline-secondary" href="#">Sign up</a>
          </div>
        </div>
      </header>
    
      <div class="nav-scroller py-1 mb-2">
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
          <div style="margin: auto; display: inline;"><a href="Main_page.html"><img src="./icon/home.png" style="width: 40px; height: 40px;"></a></div>
          <div style="margin: auto; display: inline;"><a href="Main_page.html"><img src="./icon/doc.png" style="width: 40px; height: 40px;"></a></div>
          <div style="margin: auto; display: inline;"><a href="calendar.html"><img src="./icon/cal.png" style="width: 40px; height: 40px;"></a></div>
          <div style="margin: auto; display: inline;"><a href="Main_page.html"><img src="./icon/com.png" style="width: 40px; height: 40px;"></a></div>
        </nav>
      </div>
    </div>
    
	<main class="container">
		<div class="p-4 p-md-5 mb-4 text-white rounded bg-dark" style="background-image:url(./img/test_img.png);position: relative; background-size: cover;">
	        <div class="col-md-6 px-0" style="position: relative;">
	          <h1 class="display-4 fst-italic">Title of a longer featured blog post</h1>
	          <p class="lead my-3">Multiple lines of text that form the lede, informing new readers quickly and efficiently about what’s most interesting in this post’s contents.</p>
	          <p class="lead mb-0"><a href="#" class="text-white fw-bold">Continue reading...</a></p>
	        </div>
		</div>
	    <br>
		<div class="row mb-2">
		  <div class="col-md-6">
			<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative font-family: 'Dovemayo-Medium';">
			  <div class="col p-4 d-flex flex-column position-static">
				<strong class="d-inline-block mb-2 text-primary" style="font-family:'Dovemayo-Bold'; font-size: 35px;"><img src="./icon/cal_B.png" style="width: 40px; height: 40px;"> Today Event</strong>
	                
				  <div style="font-family: 'Dovemayo-Medium';">
	                <!-- 
	                <table>
	                   <tr><td>1. 한국사_8강 복습하기</td></tr>
	                   <tr><td>2. 한국사_9강 강의 듣기</td></tr>
	                   <tr><td>3. 한국사_9강 문제풀고 오답</td></tr>
	                   <tr><td>4. 토익_단어_200개</td></tr>
	                </table>
	                 -->
	             
				  </div>
			  </div>
			  <div class="col-auto d-none d-lg-block">
				<div class="main-wrap">
				  <div class="main-day text-warning"></div>
				  <div class="main-date text-warning"></div>
	              </div>
			  </div>
			</div>
		  </div>
		  <div class="col-md-6">
			<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
			  <div class="col p-4 d-flex flex-column position-static">
				<strong class="d-inline-block mb-2 text-warning" style="font-family:'Dovemayo-Bold'; font-size: 35px;"><img src="./icon/plus_Y.png" style="width: 40px; height: 40px;"> Add note</strong>
				<h3 class="mb-0">Post title</h3>
				<div class="mb-1 text-muted">Nov 11</div>
				<p class="mb-auto">This is a wider card with supporting text below as a natural lead-in to additional content.</p>
			  </div>
			  <div class="col-auto d-none d-lg-block">
				<img class="bd-placeholder-img" src="./icon/add.png" style="margin-top: 40px; margin-bottom: 40px; margin-right: 40px; width: 150px; height: 150px;">
			  </div>
			</div>
		  </div>
		</div>
	</main>


</body>
</html>