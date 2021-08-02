<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	
	<meta charset="UTF-8">
	  <title>COMMUNITY_write</title>
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

	<br>
    <br>
    <br>
    <br>

    <main style="  margin-left: 25%;">

	  <div id="" style="font-family: 'Dovemayo Medium'; width: 65%;">
		<div>
		  <form>
			<fieldset>
			  <legend>
				<div class="card mb-3 row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250">
				  <div class="col p-4 d-flex flex-column position-static"  >
					<h3 class="card-header" style="font-family: 'Dovemayo Medium';">리뷰 작성</h3>
					<div class="card-body" style="margin-top: 3%;">
					  <input class="card-header form-control" placeholder="리뷰 제목 입력" style="font-size: 20px; font-family: 'Dovemayo Medium';">
					</div>
					<div class="card-body">
					  <p class="card-text" style="font-family: 'Dovemayo Medium';">첨부파일 등록</p>
					  <input type="file" class="form-control" placeholder="" style="width: 30%;font-family: 'Dovemayo Medium';">
					</div>
  					<div class="card-body">
					  <p class="card-text" style="font-family: 'Dovemayo Medium';">게시글 내용</p>
 					  <textarea class="form-control" id="floatingInput" placeholder="리뷰를 작성해주세요." style="font-family: 'Dovemayo Medium';"></textarea>
					  <div id="test_cnt">(0 / 200)</div>
					</div>
					<div class="card-body">
					  <input class="btn btn-warning" id="write_com" type="submit" style="font-family: 'Dovemayo Medium';" value="리뷰작성하기" >
					</div>
				  </div>
				</div>
			  </legend>
			</fieldset>
		  </form>
		</div>
	  </div>
    </main>
</body>
</html>