<%@page import="com.model.CommunityDAO"%>
<%@page import="com.model.MemDTO"%>
<%@page import="com.model.CommunityDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	
	<meta charset="UTF-8">
	<title>FWE | COMMUNITY</title>
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
       .footer_div{
       		margin-top: 20%;
       		margin-bottom: 50px
       }
	</style>
	
	<!-- Custom styles for this template -->
	<link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
	<!-- Custom styles for this template -->
	<link href="blog.css" rel="stylesheet">
	<script src="js/jquery-3.6.0.min.js"></script>
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
            <a type="button"  href="u_login.jsp" ><img class="nav_con_icon" src="./icon/user_B.png"></a>
            <%} else {%>
            <a type="button" href="u_mypage.jsp" ><img class="nav_con_icon" src="./icon/user_B.png"></a>
            <%} %>
          </div>
          <div class="col-4 text-center">
            <a class="blog-header-logo text-dark main_logo" href="main_page.jsp"><img class="nav_con_icon" src="./img/title_logo3.png" style="width: 200px; height: 80px;"></a>
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

    <br>
    
    <%
    	CommunityDAO dao = new CommunityDAO();
    	ArrayList<CommunityDTO> list = dao.showBoard();
    	
    %>
    	<div style="font-family: 'Dovemayo Medium'; margin-top: 2%; margin-left: 23%; margin-bottom: 2%">
            <h2 style="font-family: 'Dovemayo Medium';  float: left;">
            <img src="./icon/com_B.png" style="width: 40px; height: 40px;">    커뮤니티</h2>
            <input class="btn btn-warning" onclick="location.href='community_write.jsp'" type="button" value="게시글 작성" style="font-family: 'Dovemayo Medium'; margin-left: 50%">         	
         </div>
         
    <main style="float: left; margin-left: 20%">
    	<%
    		for(int i = 0; i<list.size(); i++){
    			if(i % 2 == 0){ %>
	  				<div style="min-width: 500px; width: 30%; float: left;">
	  
	  			<%}else{ %>
	  				<div style="min-width: 500px; width: 30%; margin-left: 5%; float: left;">
	  			<%} %>
					<div id="" style="font-family: 'Dovemayo Medium';">
					  <div>
						<form>
						  <fieldset>
							<legend>
							  <div class="card mb-3 row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250">
								<div class="col p-4 d-flex flex-column position-static"  >
								  <h3 class="card-header card-text width: 40px; height: 40px;" style="font-family: 'Dovemayo Medium';">
								  	<span id="board_num"><%= list.get(i).getARTICLE_ID()%></span>) <%= list.get(i).getUSER_ID()%></h3>
								  <div class="card-body">
									<h5 class="card-title" style="font-family: 'Dovemayo Medium';"><%= list.get(i).getARTICLE_TITLE() %></h5>
									<h6 class="card-subtitle text-muted" style="font-family: 'Dovemayo Medium';"><%= list.get(i).getPOST_TIME()%></h6>
								  </div>
								  <div style="width: 400px; height: 500px; overflow: hidden; display: block; margin: 0 auto;">
									<!-- 8.16일 수정 -->
									<img src="./community_img/<%= list.get(i).getIMG_PATH()%>" style="max-width: 100%; object-fit: contain; display: block; margin: 0 auto;">
									</div>
								  <div class="card-body">
									<p class="card-text" style="font-family: 'Dovemayo Medium';"><%= list.get(i).getARTICLE_CONTENT()%></p>
								  </div>
								  <div class="card-body">
								  	<span id="like_result<%=list.get(i).getARTICLE_ID()%>"><%= list.get(i).getLIKE_NUM()%></span>
								  	<input class="btn btn-danger like_btn" type="button" value="♥" onclick="like(this, <%=list.get(i).getARTICLE_ID() %>)" style="font-family: 'Dovemayo Medium';">
								  </div>
								  <%-- <div class="card-footer text-muted width: 40px; height: 40px;">
			                                댓글 작성
								  	<input class="form-control me-sm-2" type="text" placeholder="댓글을 입력하세요" style="width: 80%; position: relative; font-family: 'Dovemayo Medium';">
								  	<button id="submit" onclick="comment(<%=list.get(i).getPost_id() %>)"> 댓글작성 </button>
								  	<input class="btn btn-warning" id="write_com" type="submit" value="댓글작성" style="position: absolute;top: 92%; left: 78%; font-family: 'Dovemayo Medium';">
								  </div> --%>
								</div>
							  </div>
							</legend>
						  </fieldset>
						</form>
						
					  </div>
					  </div>
					</div>
		  <% 	
    		} %>
     
	</main>  
	<footer class="text-center footer_div">
   		<h3>FeelWritE</h3>
   		<p>FeelWritE's Homepage is powered by <span class = "text-warning">HumanLearning</span> / Designed by <span class = "text-warning">HumanLearning</span></p>
   	</footer>
     
	<script type="text/javascript">
						
						
		
	
		function like(e, i){
			
			 if($(e).val()=="♥"){
			    	
			       $.ajax({
			          type : "post",
			          data : {
			             "board_num" : i
			          },
			          url : "../LikeService",
			          dataType : "text",
			          success : function(data){
			             console.log(data);
			             $('#like_result'+i).html(data);
			             $(e).val('♡ ');
			          },
			          error : function(){
			             alert('실패!');
			          }
			       });
			    }else{
			       $.ajax({
			          type : "post",
			          data : {
			             "board_num" : i
			          },
			          url : "../DislikeService",
			          dataType : "text",
			          success : function(data){
			        	  console.log(data);
			        	  $('#like_result'+i).html(data);
			              $(e).val('♥');
			          },
			          error : function(){
			             alert('실패!');
			          }
			       });
			    }
			
		}
	</script>



</body>
</html>