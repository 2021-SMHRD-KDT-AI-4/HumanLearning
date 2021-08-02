<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<title>calendar</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="css/bootstrap.css">
        
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
      
   
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
	</style>
    
        
	<!-- Custom styles for this template -->
	<link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
	<!-- Custom styles for this template -->
	<link href="blog.css" rel="stylesheet">
</head>


<body>
	<div class="container" >
	  <header class="blog-header py-3" >
		<div class="row flex-nowrap justify-content-between align-items-center">
		  <div class="col-4 pt-1" style="">
			<a><img src="./icon/user_B.png" style="align: center; width: 40px; height: 40px;"></a>
		  </div>
		  <div style="width: 80%; min-width: 30%;"></div>
		  <div class="col-4 text-center" style="width: 100%;">
			<a class="blog-header-logo text-dark" href="#" style="font-size: 30px; font-family: 'Dovemayo Medium';">니가써봐</a>
		  </div>
		  <div style="width: 80%; min-width: 30%;"></div>
		  <div class="col-4 d-flex justify-content-end align-items-center">
			<a class="link-secondary" href="#" aria-label="Search">
			  <img src = "./icon/dot_B.png" style="width: 25px; height: 25px; margin-right: 20px;">
			</a>
			<a class="btn btn-sm btn-outline-secondary" href="#">Sign up</a>
		  </div>
		</div>
	  </header>
       
	  <div class="nav-scroller py-1 mb-2">
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		  <div style="margin: auto; display: inline;"><a><img src="./icon/home.png" style="width: 40px; height: 40px;"></a></div>
		  <div style="margin: auto; display: inline;"><a><img src="./icon/doc.png" style="width: 40px; height: 40px;"></a></div>
		  <div style="margin: auto; display: inline;"><a><img src="./icon/cal.png" style="width: 40px; height: 40px;"></a></div>
		  <div style="margin: auto; display: inline;"><a><img src="./icon/com.png" style="width: 40px; height: 40px;"></a></div> 
		</nav>
	  </div>
	</div>
	
	<main class="container" >
	  <div class="p-4 p-md-5 mb-4 text-black rounded bg-white" style="height: auto; min-height: 700px; min-width: 900px;background-size:cover;">
		<div class="col-md-6 px-0" style="position:absolute; margin-left: auto; margin-right: auto; min-width: 500px">
		  <header>
			<h1>
			</h1>
			<div class="calendar_title ">
			  <button class="prev">&#60;</button>
			  <span class="current-year-month text-warning"></span>
			  <button class="next">&#62;</button>
			</div>
		  </header>
		  <section class="content-left">
			<div class="left-main">
			  <div class="main-wrap">
				<div class="main-day text-warning"></div>
				<div class="main-date text-warning"></div>
			  </div>
			  <div class="todo-wrap">
				<div class="todo-title">Todo List</div>
				<form class="input-form">
				  <!--  <input type="text" placeholder="write here!!" class="input-box" />-->
				  <input type = "text" class="input-box" placeholder="일정 추가" style="font-family:'Dovemayo Medium';">
				  <p>　</p>
				  <button type="submit" class="input-btn btn-warning">INPUT</button>
				</form>
				<ul class="todoList"></ul>
				  <div class="showList">
					<span class="listText"></span>
					<span class="createDate"></span>
					<button class="closed">close</button>
				  </div>
				  <div class="bgblack"></div>
				</div>
			  </div>
			</section>
			<section class="content-right">
			  <div class="day-of-week text-white bg-primary mb-3">
				<div class="dayHeader text-danger">Sun</div>
				  <div class="dayHeader">Mon</div>
				  <div class="dayHeader">Tue</div>
				  <div class="dayHeader">Wed</div>
				  <div class="dayHeader">Thu</div>
				  <div class="dayHeader">Fri</div>
				  <div class="dayHeader text-info">Sat</div>
			  </div>
			  <div class="calendar-body">
				<script src = "js/main.js">
				  	// todolist가 비어있는지 확인
					var spanEl = document.getElementById('spanEl'); // todolist 선언
					var dateEl = document.getElementById('dateEl'); // 달력 칸 선언
	                      
					if (spanEl !== null) {
						dateEl += "*"; // 이렇게 지정하는게 맞나?
					}
	                      
					/*
					function isNull(spanEl) {
						// todolist가 비어있으면 false, 비어있지 않으면 true
						return(spanEl == null || spanEl != null) ? false : true;
					}
					if (spanE1 == true) {
						// todolist가 비어있지 않다면(true) 달력 위에 뭔갈 표시할 속셈임
						dateEl += "*"; // 이렇게 지정하는게 맞나?
					}
					*/
				</script>
			  </div>
			</section>
		</div>
	  </div>       
	</main>
</body>
</html>