<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	
	<meta charset="UTF-8">
	<title>COMMUNITY</title>
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

    <div style=" margin-right: auto; margin-left: auto;">
	  <form>
		<fieldset>
		  <legend>
			<div style="font-family: 'Dovemayo Medium'; margin-right: auto; margin-left: auto; margin-top: 2%;">
			  <h2 style="font-family: 'Dovemayo Medium'; float: left; margin-left: 26%;"><img src="./icon/com_B.png" style="width: 40px; height: 40px;">    커뮤니티</h2>
			  <div class="form-group" style="float: right; margin-right: 28%;">
    			<input class="form-control form-control-sm" type="text" placeholder="게시글 검색" id="inputSmall" style="width: 200px; float: left; font-family: 'Dovemayo Medium';">
				<img src="./icon/dot_B.png" style=" width: 40px; height: 40px;"></button>
				<button class="btn btn-warning" type="button" style="font-family: 'Dovemayo Medium';">게시글 작성</button>
                        
			  </div>
			</div>
	
          <!-- <div style="float: right; margin-right: 28%;">
          <button class="btn btn-warning" type="button">게시글 작성</button>
          </div> -->
          <br>
		  </legend>
		</fieldset>
	  </form> 
    </div>

    <br>

    <main style="  margin-left: 25%;">
	  <!--  홀수 -->
	  <div style="min-width: 500px; width: 30%; float: left;">
		<div id="" style="font-family: 'Dovemayo Medium';">
		  <div>
			<form>
			  <fieldset>
				<legend>
				  <div class="card mb-3 row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250">
					<div class="col p-4 d-flex flex-column position-static"  >
					  <h3 class="card-header card-text width: 40px; height: 40px;" style="font-family: 'Dovemayo Medium';">게시글 제목</h3>
					  <div class="card-body">
						<h5 class="card-title" style="font-family: 'Dovemayo Medium';">사용자 ID</h5>
						<h6 class="card-subtitle text-muted" style="font-family: 'Dovemayo Medium';">게시글 작성 날짜</h6>
					  </div>
					  <svg xmlns="http://www.w3.org/2000/svg" class="d-block user-select-none" width="100%" height="200" aria-label="Placeholder: Image cap" focusable="false" role="img" preserveAspectRatio="xMidYMid slice" viewBox="0 0 318 180" style="font-size:1.125rem;text-anchor:middle">
						<rect width="100%" height="100%" fill="#868e96"></rect>
						<text x="50%" y="50%" fill="#dee2e6" dy=".3em">Image cap</text>
					  </svg>
					  <div class="card-body">
						<p class="card-text" style="font-family: 'Dovemayo Medium';">게시글 내용</p>
					  </div>
					  <div class="card-body">
					  	<input class="btn btn-danger" id="like_btn" type="button" value="♥" onclick="like()" style="font-family: 'Dovemayo Medium';">
					  </div>
					  <div class="card-footer text-muted width: 40px; height: 40px;">
                                댓글 작성
					  	<input class="form-control me-sm-2" type="text" placeholder="댓글을 입력하세요" style="width: 80%; position: relative; font-family: 'Dovemayo Medium';">
					  	<input class="btn btn-warning" id="write_com" type="submit" value="댓글작성" style="position: absolute;top: 88%; left: 78%; font-family: 'Dovemayo Medium';">
					  </div>
					</div>
				  </div>
				</legend>
			  </fieldset>
			</form>
		  </div>
                
		  <div>
		  	<form>
		  	  <fieldset>
				<legend>
				  <div class="card mb-3 row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250">
					<div class="col p-4 d-flex flex-column position-static">
					  <h3 class="card-header" style="font-family: 'Dovemayo Medium';">게시글 제목</h3>
						<div class="card-body">
						  <h5 class="card-title" style="font-family: 'Dovemayo Medium';">사용자 ID</h5>
						  <h6 class="card-subtitle text-muted" style="font-family: 'Dovemayo Medium';">게시글 작성 날짜</h6>
					  	</div>
						<svg xmlns="http://www.w3.org/2000/svg" class="d-block user-select-none" width="100%" height="200" aria-label="Placeholder: Image cap" focusable="false" role="img" preserveAspectRatio="xMidYMid slice" viewBox="0 0 318 180" style="font-size:1.125rem;text-anchor:middle">
						  <rect width="100%" height="100%" fill="#868e96"></rect>
						  <text x="50%" y="50%" fill="#dee2e6" dy=".3em">Image cap</text>
						</svg>
						<div class="card-body">
                          <p class="card-text" style="font-family: 'Dovemayo Medium';">게시글 내용</p>
						</div>
						<div class="card-body">
                          <input class="btn btn-danger" id="like_btn" type="button" value="♥" onclick="like()" style="font-family: 'Dovemayo Medium';">
						</div>
						<div class="card-footer text-muted">
                                댓글 작성
						  <input class="form-control me-sm-2" type="text" placeholder="댓글을 입력하세요" style="width: 80%; position: relative; font-family: 'Dovemayo Medium';">
						  <input class="btn btn-warning" id="write_com" type="submit" value="댓글작성" style="position: absolute;top: 88%; left: 78%; font-family: 'Dovemayo Medium';">
					  </div>
					</div>
				  </div>
				</legend>
		  	  </fieldset>
		  	</form>
		  </div>
		</div>
	  </div>

	  <!-- 짝수 -->
	  <div style="min-width: 500px; width: 30%; margin-left: 5%; float: left;">
		<div id="" style="font-family: 'Dovemayo Medium'; ">
		  <div>
			<form>
		  	  <fieldset>
				<legend>
				  <div class="card mb-3 row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250">
					<div class="col p-4 d-flex flex-column position-static">
					  <h3 class="card-header" style="font-family: 'Dovemayo Medium';">게시글 제목</h3>
						<div class="card-body">
						  <h5 class="card-title" style="font-family: 'Dovemayo Medium';">사용자 ID</h5>
						  <h6 class="card-subtitle text-muted" style="font-family: 'Dovemayo Medium';">게시글 작성 날짜</h6>
					  	</div>
						<svg xmlns="http://www.w3.org/2000/svg" class="d-block user-select-none" width="100%" height="200" aria-label="Placeholder: Image cap" focusable="false" role="img" preserveAspectRatio="xMidYMid slice" viewBox="0 0 318 180" style="font-size:1.125rem;text-anchor:middle">
						  <rect width="100%" height="100%" fill="#868e96"></rect>
						  <text x="50%" y="50%" fill="#dee2e6" dy=".3em">Image cap</text>
						</svg>
						<div class="card-body">
                          <p class="card-text" style="font-family: 'Dovemayo Medium';">게시글 내용</p>
						</div>
						<div class="card-body">
                          <input class="btn btn-danger" id="like_btn" type="button" value="♥" onclick="like()" style="font-family: 'Dovemayo Medium';">
						</div>
						<div class="card-footer text-muted">
                                댓글 작성
						  <input class="form-control me-sm-2" type="text" placeholder="댓글을 입력하세요" style="width: 80%; position: relative; font-family: 'Dovemayo Medium';">
						  <input class="btn btn-warning" id="write_com" type="submit" value="댓글작성" style="position: absolute;top: 88%; left: 78%; font-family: 'Dovemayo Medium';">
					  </div>
					</div>
				  </div>
				</legend>
		  	  </fieldset>
			</form>
		  </div>
		</div>
	  </div>
	</main>  
	  <div style="margin-top: 60%; margin-left: 45%; margin-right: 50%;">
        <ul class="pagination" style="">
          <li class="page-item disabled">
            <a class="page-link" href="#">&laquo;</a>
          </li>
          <li class="page-item active">
            <a class="page-link" href="#">1</a>
          </li>
          <li class="page-item">
            <a class="page-link" href="#">2</a>
          </li>
          <li class="page-item">
            <a class="page-link" href="#">3</a>
          </li>
          <li class="page-item">
            <a class="page-link" href="#">4</a>
          </li>
          <li class="page-item">
            <a class="page-link" href="#">5</a>
          </li>
          <li class="page-item">
            <a class="page-link" href="#">&raquo;</a>
          </li>
        </ul>
      </div>
</body>
</html>