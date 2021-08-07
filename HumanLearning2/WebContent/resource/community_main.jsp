<%@page import="com.model.MemDTO"%>
<%@page import="com.model.CommunityDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.CommunityDAO"%>
<%@page import="java.io.PrintWriter"%>
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

    <br>
    
    <%
    	CommunityDAO dao = new CommunityDAO();
    	ArrayList<CommunityDTO> list = dao.showBoard();
    	
    %>

    <main style="  margin-left: 25%;">
    
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
								  	<span id="board_num"><%= list.get(i).getARTICLE_ID()%></span><%= list.get(i).getUSER_ID()%></h3>
								  <div class="card-body">
									<h5 class="card-title" style="font-family: 'Dovemayo Medium';"><%= list.get(i).getARTICLE_TITLE() %></h5>
									<h6 class="card-subtitle text-muted" style="font-family: 'Dovemayo Medium';"><%= list.get(i).getPOST_TIME()%></h6>
								  </div>
								  <div style="width: 400px; height: 500px; overflow: hidden; display: block; margin: 0 auto;">
									<img src="../img/<%= list.get(i).getIMG_PATH()%>" style="object-fit: contain; display: block; margin: 0 auto;">
									</div>
								  <div class="card-body">
									<p class="card-text" style="font-family: 'Dovemayo Medium';"><%= list.get(i).getARTICLE_CONTENT()%></p>
								  </div>
								  <div class="card-body">
								  	<span id="like_result"><%= list.get(i).getLIKE_NUM()%></span>
								  	<input class="btn btn-danger" id="like_btn<%=i %>" type="button" value="♥" onclick="like()" style="font-family: 'Dovemayo Medium';">
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
     
<script type="text/javascript">
		function like(){
			   
		
		    if($('#like_btn').val()=="♥"){
		       $.ajax({
		          type : "post",
		          data : {
		             "board_num" : $('#board_num').html()
		          },
		          url : "../LikeService",
		          dataType : "text",
		          success : function(data){
		             
		             $('#like_result').html(data);
		             $('#like_btn').val('♡ ');
		          },
		          error : function(){
		             alert('실패!');
		          }
		       });
		    }else{
		       $.ajax({
		          type : "post",
		          data : {
		             "board_num" : $('#board_num').html()
		          },
		          url : "../DislikeService",
		          dataType : "text",
		          success : function(data){
		             
		             $('#like_result').html(data);
		             $('#like_btn').val('♥');
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