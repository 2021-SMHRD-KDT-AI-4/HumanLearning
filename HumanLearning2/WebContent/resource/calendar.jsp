<%@page import="java.io.PrintWriter"%>
<%@page import="com.model.CalDTO"%>
<%@page import="com.model.CalDAO"%>
<%@page import="com.model.MemDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>FWE | PLANNER</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="css/bootstrap.css">
        
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
      
   
	<link rel="stylesheet" href="css/common.css"> <!-- 달력 css1 -->
	<link rel="stylesheet" href="css/reset.css">  <!-- 달력 css2 -->
	<script src="js/main.js"></script> <!-- 달력 기능1 -->
	<script src="js/data.js"></script> <!-- 달력 기능2 -->
    <script src="js/jquery-3.6.0.min.js"></script>
        
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
      
      .input-form .input-box {
        width: 90%;
        height: 50px;
        font-size: 20px;
        border: 0;
        border-bottom: 2px dashed rgb(255, 184, 45);/* rgb(255, 82, 195)*/
        margin-bottom: 30px;
        outline-style: none;
      }
      
      table > td{
         min-width: 12rem;
         max-width: 20rem;
      }
      
      tr > td > div{
         
         min-height: 20rem; 
         margin: 0.5rem;
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
       .lo_main{
       		margin-left: 225%;
       		margin-right: 225%;
       }
       .main_con{
       		margin-left: 18%;
       }
       .todo_div{
       		width: 16rem; 
       }
       .footer_div{
       		margin-top: 20%;
       		margin-bottom: 50px;
       }
   </style>
   <!-- Custom styles for this template -->
   <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
   <!-- Custom styles for this template -->
   <link href="blog.css" rel="stylesheet">
</head>


<body>
	<%
    MemDTO info = (MemDTO)session.getAttribute("info");
    CalDAO dao = new CalDAO();
	if(info == null){
		System.out.println("info 널");
		  PrintWriter plogin = response.getWriter();
		  plogin.println("<script>");
		  plogin.println("alert('플래너 작성시 로그인이 필요합니다.')");
		  plogin.println("location.href = 'u_login.jsp'");
		  plogin.println("</script>");
	}else{
		System.out.println("널 아님");
		String user_id = info.getUSER_ID();
		System.out.println(user_id);
	}
	%>
  <%

      // 세션 아이디 불러오기
      String uid = info.getUSER_ID();

	// 플래너 헤더에 들어갈 날짜 정의
      Calendar cal = Calendar.getInstance();
      String format = "yyyy-MM-dd";
      SimpleDateFormat sdf = new SimpleDateFormat(format);
      
      // 플래너 헤더에 들어갈 날짜 생성
      String date1 = sdf.format(cal.getTime());
      cal.add(cal.DATE, +1);
      String date2 = sdf.format(cal.getTime());
      cal.add(cal.DATE, +1);
      String date3 = sdf.format(cal.getTime());
      cal.add(cal.DATE, +1);
      String date4 = sdf.format(cal.getTime());
      cal.add(cal.DATE, +1);
      String date5 = sdf.format(cal.getTime());
      cal.add(cal.DATE, +1);
      String date6 = sdf.format(cal.getTime());
      cal.add(cal.DATE, +1);
      String date7 = sdf.format(cal.getTime());
      cal.add(cal.DATE, +1);
      
      // 날짜별로 들어갈 일정 가져옴
      ArrayList<CalDTO> cOutput = dao.calOutput();
      ArrayList<CalDTO> cOutput2 = dao.calOutput2();
      ArrayList<CalDTO> cOutput3 = dao.calOutput3();
      ArrayList<CalDTO> cOutput4 = dao.calOutput4();
      ArrayList<CalDTO> cOutput5 = dao.calOutput5();
      ArrayList<CalDTO> cOutput6 = dao.calOutput6();
      ArrayList<CalDTO> cOutput7 = dao.calOutput7();
      
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
          <div class="col-4 pt-1 lo_main">
            <a class="blog-header-logo text-dark main_logo" href="main_page.jsp"><img class="nav_con_icon" src="./img/title_logo3.png" style="width: 200px; height: 80px;"></a>
          </div>
          <div class="col-4 pt-1">
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
    
    <div style="font-family: 'Dovemayo Medium'; margin-top: 2%; margin-left: 23%; margin-bottom: 2%">
    	<h2 style="font-family: 'Dovemayo Medium';">
     	<img src="./icon/cal_B.png" style="width: 40px; height: 40px;">    <%= uid %>님의 플래너</h2>
    </div>
    
   <main class="container main_con" >
     <table>
        <tr>
          <td style=""> <!-- todolist 작성 카드 -->
             <div class="card border-warning mb-3" style="min-width: 14rem; max-width: 19rem; ">
             <div class="card-header" style="color: #FFAF0A;"><img class="bd-placeholder-img" src="./icon/plus_Y3.png" style="width: 25px; height: 25px;">  Add List </div>
             <div class="card-body">
             <form class="input-form" action="../Calinserv" id = "input_formm" method="post">
              <input type = "text" name="cal_comment" id = "input_comment" class="input-box" placeholder="todoList" style="font-family:'Dovemayo Medium'; ">
              <input type = "text" name="cal_date" id = "input_date" class = "input-box" placeholder="yyyymmdd" style="font-family:'Dovemayo Medium'; ">
              <input type="submit" name="넘어가라" id = "input" value="INPUT" class="btn btn-warning">
             </form>
             <script>
                $("#input").click(function(){
                  if($("#input_comment").val().length==0){
                     alert("일정을 입력하세요.");
                     return false;
                  }
                  if($("#input_date").val().length==0) {
                     alert("날짜를 입력하세요.");
                     return false;
                  }
               });
             </script>
             </div>
         </div>
          </td>
		  <td> <!-- 오늘 todolist -->
         	<div class="card border-primary mb-3" style="min-width: 14rem; max-width: 19rem;">
          	  <div class="card-header bg-warning"><%=date1 %>　<- Today</div>
             	<div class="card-body">
           		  <p class="card-text">
            		<table>
		               <%
		               for(int i = 0; i< cOutput.size(); i++){
		                  if(uid.equals(cOutput.get(i).getUser_id())){
		               %>
		                 <tr>
		                  <td style="font-family: Dovemayo-Medium !important"><%="- " %><%=cOutput.get(i).getCal_comment() %></td>
		                  <td><a href="../CalDeleteserv?num=<%= cOutput.get(i).getCal_comment() %>"><button class="btn rounded-pill bg-outline-danger">X</button></a></td>
		                 </tr>
		               <%   }
		               } %>
                 	</table>
           		  </p>
             	</div>
          	  </div>
          </td>
          <td>
             <div class="card border-primary mb-3" style="min-width: 14rem; max-width: 19rem; ">
             <div class="card-header"><%= date2 %></div>
             <div class="card-body">
             <p class="card-text">
               <table style="font-family: Dovemayo-Medium !important">
               <%
               for(int i = 0; i< cOutput2.size(); i++){
                  if(uid.equals(cOutput2.get(i).getUser_id())){
               %>
                 <tr>
                  <td><%="- " %><%=cOutput2.get(i).getCal_comment() %></td>
                  <td><a href="../CalDeleteserv?num=<%= cOutput2.get(i).getCal_comment() %>"><button class="btn rounded-pill bg-outline-danger">X</button></a></td>
                 </tr>
               <%   }
               } %>
                 </table>
             </p>
             </div>
         </div>
          </td>
          <td>
             <div class="card border-primary mb-3" style="min-width: 14rem; max-width: 19rem; ">
             <div class="card-header"><%=date3 %></div>
             <div class="card-body">
             <p class="card-text">
               <table style="font-family: Dovemayo-Medium !important">
               <%
               for(int i = 0; i< cOutput3.size(); i++){
                  if(uid.equals(cOutput3.get(i).getUser_id())){
               %>
                 <tr>
                  <td><%="- " %><%=cOutput3.get(i).getCal_comment() %></td>
                  <td><a href="../CalDeleteserv?num=<%= cOutput3.get(i).getCal_comment() %>"><button class="btn rounded-pill bg-outline-danger">X</button></a></td>
                 </tr>
               <%   }
               } %>
              </table>
             </p>
             </div>
         </div>
          </td>
        </tr>
        
        <!-- 38선 -->
        
        <tr>
          <td>
             <div class="card border-primary mb-3" >
             <div class="card-header"><%=date4 %></div>
             <div class="card-body">
             <p class="card-text">
               <table style="font-family: Dovemayo-Medium !important">
               <%
               for(int i = 0; i< cOutput4.size(); i++){
                  if(uid.equals(cOutput4.get(i).getUser_id())){
               %>
                 <tr>
                  <td><%="- " %><%=cOutput4.get(i).getCal_comment() %></td>
                  <td><a href="../CalDeleteserv?num=<%= cOutput4.get(i).getCal_comment() %>"><button class="btn rounded-pill bg-outline-danger">X</button></a></td>
                 </tr>
               <%   }
               } %>
              </table>
             </p>
             </div>
         </div>
          </td>
          <td>
             <div class="card border-primary mb-3" >
             <div class="card-header"><%=date5 %></div>
             <div class="card-body">
             <p class="card-text">
               <table style="font-family: Dovemayo-Medium !important">
               <%
               for(int i = 0; i< cOutput5.size(); i++){
                  if(uid.equals(cOutput5.get(i).getUser_id())){
               %>
                 <tr>
                  <td><%="- " %><%=cOutput5.get(i).getCal_comment() %></td>
                  <td><a href="../CalDeleteserv?num=<%= cOutput5.get(i).getCal_comment() %>"><button class="btn rounded-pill bg-outline-danger">X</button></a></td>
                 </tr>
               <%   }
               } %>
              </table>
             </p>
             </div>
         </div>
          </td>
          <td>
             <div class="card border-primary mb-3" >
             <div class="card-header"><%=date6 %></div>
             <div class="card-body">
             <p class="card-text">
               <table style="font-family: Dovemayo-Medium !important">
               <%
               for(int i = 0; i< cOutput6.size(); i++){
                  if(uid.equals(cOutput6.get(i).getUser_id())){
               %>
                 <tr>
                  <td><%="- " %><%=cOutput6.get(i).getCal_comment() %></td>
                  <td><a href="../CalDeleteserv?num=<%= cOutput6.get(i).getCal_comment() %>"><button class="btn rounded-pill bg-outline-danger">X</button></a></td>
                 </tr>
               <%   }
               } %>
              </table>
             </p>
             </div>
         </div>
          </td>
          <td>
             <div class="card border-primary mb-3" >
             <div class="card-header"><%=date7 %></div>
             <div class="card-body">
             <p class="card-text">
               <table style="font-family: Dovemayo-Medium !important">
               <%
               for(int i = 0; i< cOutput7.size(); i++){
                  if(uid.equals(cOutput7.get(i).getUser_id())){
               %>
                 <tr>
                  <td><%="- " %><%=cOutput7.get(i).getCal_comment() %></td>
                  <td><a href="../CalDeleteserv?num=<%= cOutput7.get(i).getCal_comment() %>"><button class="btn rounded-pill bg-outline-danger">X</button></a></td>
                 </tr>
               <%   }
               } %>
              </table>
             </p>
             </div>
         </div>
          </td>
        </tr>
     </table>
   </main>
   <footer class="text-center footer_div">
   			<h3>FeelWritE</h3>
   			<p>FeelWritE's Homepage is powered by <span class = "text-warning">HumanLearning</span> / Designed by <span class = "text-warning">HumanLearning</span></p>
   </footer>
</body>
</html>