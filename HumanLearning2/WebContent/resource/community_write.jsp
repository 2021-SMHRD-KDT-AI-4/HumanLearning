<%@page import="com.model.MemDTO"%>
<%@page import="com.model.CommunityDAO"%>
<%@page import="com.model.CommunityDTO"%>
<%@page import="java.io.PrintWriter"%>
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
       .community_main{
       		margin-left: 25%;
       }
       .community_main_div{
       		font-family: 'Dovemayo Medium'; 
       		width: 65%;
       }
       .ca{
       		font-family: 'Dovemayo Medium';
       }
       .img_file{
       		width: 30%;
       		font-family: 'Dovemayo Medium';
       }
       .community_title{
       		font-size: 20px; 
       		font-family: 'Dovemayo Medium';
       }

         
	  </style>
    
	  <!-- Custom styles for this template -->
	  <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
	  <!-- Custom styles for this template -->
	  <link href="blog.css" rel="stylesheet">
</head>


<body>
	<%
		MemDTO info = (MemDTO)session.getAttribute("info"); %>
		
	<%	
	
				/* CommunityDAO cdao = new CommunityDAO();
				CommunityDTO cdto = new CommunityDTO(info.getUSER_ID()); */

				if(info == null){
					System.out.println("info 널");
					  PrintWriter plogin = response.getWriter();
					  plogin.println("<script>");
					  plogin.println("alert('게시글 작성시 로그인이 필요합니다.')");
					  plogin.println("location.href = 'u_login.jsp'");
					  plogin.println("</script>");
				}else{
					System.out.println("널 아님");
					String user_id = info.getUSER_ID();
					System.out.println(user_id);
				}
				
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
    
    <main class="community_main">

	  <div class="community_main_div">
		<div>
		  <form action="../CommunityService_W" method="post" enctype="multipart/form-data">
			<fieldset>
			  <legend>
				<div class="card mb-3 row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250">
				  <div class="col p-4 d-flex flex-column position-static"  >
					<h3 class="card-header ca">리뷰 작성</h3>
					<div class="card-body" style="margin-top: 3%;">
					  <input name="title" class="card-header form-control community_title" placeholder="리뷰 제목 입력">
					</div>
					<div class="card-body">
					  <p class="card-text ca">이미지 파일 등록</p>
					  <input name="file" type="file" class="form-control img_file" placeholder="">
					</div>
  					<div class="card-body">
					  <p class="card-text ca">게시글 내용</p>
 					  <textarea name="content" class="form-control ca" id="floatingInput" placeholder="리뷰를 작성해주세요."></textarea>
					  <div id="textcnt">(0 / 200)</div>
					</div>
					<div class="card-body">
					  <input class="btn btn-warning ca" id="write_com" type="submit" value="리뷰작성하기">
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
	<script src="js/bootstrap.js"></script>
	<script src="js/jquery-3.6.0.min.js"></script>
	<script>
	//글자수 카운팅
		$('#floatingInput').keyup(function (e){
		    var content = $(this).val();
		    $('#textcnt').html("("+content.length+" / 최대 200자)"); 
	
		    if (content.length > 200){
		        alert("최대 200자까지 입력 가능합니다.");
		        $(this).val(content.substring(0, 200));
		        $('#textcnt').html("(200 / 최대 200자)");
		    }
		});   
     </script>
	
</html>