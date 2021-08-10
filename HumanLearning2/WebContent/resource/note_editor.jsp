<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	
	<meta charset="UTF-8">
        <title>VIDEO_PAGE</title>
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
	
	<!-- 네비바 시작 -->
    <div class="container">
      <header class="blog-header py-3">
        <div class="row flex-nowrap justify-content-between align-items-center">
          <div class="col-4 pt-1">
            <a href="./My_page.html"><img src="./icon/user_B.png" style="align: center; width: 40px; height: 40px;"></a>
          </div>
          <div class="col-4 text-center">
            <a class="blog-header-logo text-dark" href="./Main_page.html" style="font-size: 30px; font-family: 'Dovemayo Medium';">니가써봐</a>
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

    <main class="container">
        <div id="video" style="position: relative; width: 100%; height: auto; padding-top: 50%; float: left;">
            <iframe src="./test/test.mp4" frameborder="0" allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe>
        </div>

        <br>
    
      <div class="row mb-2">
        <div class="col-md-6">
          <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
            <div class="col p-4 d-flex flex-column position-static">
              <strong class="d-inline-block mb-2 text-success" style="font-family: 'Dovemayo Medium';">노트</strong>
              <div class="mb-1 text-muted">Nov 11</div>
              <p class="mb-auto">This is a wider card with supporting text below as a natural lead-in to additional content.</p>
            </div>
          </div>
        </div>
      </div>
    
    
    </main>        
	
</body>
</html>