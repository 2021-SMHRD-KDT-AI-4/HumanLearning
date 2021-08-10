
<%@page import="com.model.CalDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.CalDAO"%>
<%@page import="com.model.MemDTO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>NSB | main</title>
   <link rel="stylesheet" href="css/bootstrap.css">
   
   <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css" /> <!-- 스와이퍼 css -->
   <script src="https://unpkg.com/swiper/swiper-bundle.js"></script><!-- 스와이퍼    js -->
        
   <link href='css/main.css' rel='stylesheet'/><!-- fullcal.css -->
   <script src='js/main.js'></script><!-- fullcal.js -->
   
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
      
      <!-- 스와이퍼 관련-->
      .swiper-container {
           width: 100%;
           height: 100%;
       }
   
       .swiper-slide {
           text-align: center;
           font-size: 18px;
           background: #fff;
   
           /* Center slide text vertically */
           display: -webkit-box;
           display: -ms-flexbox;
           display: -webkit-flex;
           display: flex;
           -webkit-box-pack: center;
           -ms-flex-pack: center;
           -webkit-justify-content: center;
           justify-content: center;
           -webkit-box-align: center;
           -ms-flex-align: center;
           -webkit-align-items: center;
           align-items: center;
       }
   
       .swiper-slide img {
           display: block;
           width: 100%;
           height: 100%;
           object-fit: cover;
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
    
	<main class="container">
		<div class="swiper-container mySwiper" 
			style="position: relative; height: 100%; min-height: 500px;">
      
	      <div class="swiper-wrapper" style="padding-top: 70px;">
	        <!-- ###슬라이드1 -->
	        <div class="swiper-slide">
	          <div class="col-md-6 px-0" style="position: relative;">
	            <h1 class="display-4 fst-italic">Welcome to NeogaSseoBa Note</h1><br>
	            <p class="lead my-3" style="font-family: 'Dovemayo-Medium;'">너가써봐 노트는 업로드된 영상의 음성을 추출하여 텍스트로 변환해주는 프로그램 입니다.
	            	<br>변환된 텍스트로 나만의 노트를 간편히 작성해봐요!
	            </p>
	            <p class="lead mb-0" ><a href="note_upload.jsp" class="text-dark fw-bold"> Please press the Addnote!</a></p>
	          </div>
			</div>
			<!-- ###슬라이드2 -->
	        <div class="swiper-slide">
	          	에디터 사용 이미지	
	        </div>
	        <!-- ###슬라이드3 -->
	        <div class="swiper-slide">
	          <div class="col-md-6 px-0" style="position: relative;">
	            <h1 class="display-4 fst-italic">- Contact -</h1>
	            <br>
	            <p class="lead" style="font-family: Dovemayo-Mideum; font-size:25px;">Should you have any questions, <br>please do not hesitate to contact me!</p>
	            <br>
	            <h1>smhrdS2@gmail.com</h1>
	            <p class="lead mb-0"><a href="#" class="text-white fw-bold">Continue reading...</a></p>
	          </div>
			</div>
	      </div>
	      <div class="swiper-button-next"></div>
      	  <div class="swiper-button-prev"></div>
	      <div class="swiper-pagination"></div>
	   
	      <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	    
    	  <script>
			var swiper = new Swiper(".mySwiper", {
			  pagination: {
				el: ".swiper-pagination",
			  },
			  navigation: {
				nextEl: ".swiper-button-next",
				prevEl: ".swiper-button-prev",
		      },
			  spaceBetween:1,
			  autoplay: 3000,
			  autoplayDisableOnInteraction: false,
			  loop: true,
			});
	      </script>
		</div>
		<% 	
			CalDAO dao = new CalDAO();
			ArrayList<CalDTO> cInput = dao.calOutput(); %> 
	    <br>
		<hr>
	    <br>
	    <br>
		<div class="row mb-2">
		  <div class="col-md-6">
			<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative font-family: 'Dovemayo-Medium';">
			  <div class="col p-4 d-flex flex-column position-static">
				<a href = "calendar.jsp"><strong class="d-inline-block mb-2 text-primary" style="font-family:Dovemayo-Bold; font-size: 35px;"><img src="./icon/cal_B.png" style="width: 50px; height: 50px;"> Today Event</strong></a>
	              <hr>  
				  <div style="font-family: Dovemayo-Medium !important">
				  
	                <table style="font-family: Dovemayo-Medium !important">
					<%for(int i = 0; i< cInput.size(); i++){%>
							<tr><td><%=i+1+". " %><%=cInput.get(i).getCal_comment() %></td></tr>
						 <%} %>
	                
	                   
	                </table>
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
		  <div class="col-md-6" >
			<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
			  <div class="col p-4 d-flex flex-column position-static">
				<a href = "note_upload.jsp"><strong class="d-inline-block mb-2 text-warning" style="font-family:'Dovemayo-Bold'; font-size: 35px;"><img src="./icon/plus_Y2.png" style="width: 50px; height: 50px;"> Add note</strong></a>
				<hr >
				<div style="padding-left:30px; font-family: Dovemayo-Mideum; font-size: 20px;">  
				  <h3 class="mb-0">1. Upload Video</h3>
				  <div class="mb-auto">　영상을 업로드하고</div>
				  <br>
				  <h3 class="mb-0">2. Edit Note</h3>
				  <p class="mb-auto" style="font-family: 'Dovemayo-Medium'">　노트를 수정합니다.!</p>
			  	</div>
			  </div>
			  <div class="col-auto d-none d-lg-block">
				<img class="bd-placeholder-img" src="./icon/add2.png" style="margin-top: 40px; margin-bottom: 40px; margin-right: 40px; width: 200px; height: 200px;">
			  </div>
			</div>
		  </div>
		</div>
	</main>


</body>
</html>