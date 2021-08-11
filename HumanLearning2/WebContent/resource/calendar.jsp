0<%@page import="com.model.CalDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.CalDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="com.model.MemDTO"%>
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
		} .input-form .input-box {
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
         max-width: 19rem;
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
      String s_user_id = info.getUSER_ID();
      System.out.println(s_user_id+"**************************************");
      
      ArrayList<CalDTO> cal_list = dao.cal_please(s_user_id);
      
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
   
   <%
      //Date date = new Date();
      //SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
      //String today = simpleDate.format(date);
      Calendar cal = Calendar.getInstance();
      String format = "yyyy-MM-dd";
      SimpleDateFormat sdf = new SimpleDateFormat(format);
      
      
      
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
      
      String[] com_list1 = new String[6];
      String[] com_list2 = new String[6];
      String[] com_list3 = new String[6];
      String[] com_list4 = new String[6];
      String[] com_list5 = new String[6];
      String[] com_list6 = new String[6];
      String[] com_list7 = new String[6];

      for(int i = 0; i < cal_list.size(); i++){
         if(cal_list.get(i).getCal_date().equals(date1)){
            com_list1[i] = (String)cal_list.get(i).getCal_comment();
         }
         if(cal_list.get(i).getCal_date() == date2){
            com_list2[i] = cal_list.get(i).getCal_comment();
         }
         if(cal_list.get(i).getCal_date() == date3){
            com_list3[i] = cal_list.get(i).getCal_comment();
            
         }
         if(cal_list.get(i).getCal_date() == date4){
            com_list4[i] = cal_list.get(i).getCal_comment();
            
         }
         if(cal_list.get(i).getCal_date() == date5){
            com_list5[i] = cal_list.get(i).getCal_comment();
            
         }
         if(cal_list.get(i).getCal_date() == date6){
            com_list6[i] = cal_list.get(i).getCal_comment();
            
         }
         if(cal_list.get(i).getCal_date() == date7){
            com_list7[i] = cal_list.get(i).getCal_comment();
         }
      }
   
   %>


   <main class="container" >
     <table>
        <tr>
          <td style=""> <!-- todolist 작성 카드 -->
             <div class="card border-warning mb-3" style="min-width: 14rem; max-width: 19rem; ">
             <div class="card-header" style="color: #FFAF0A;"><img class="bd-placeholder-img" src="./icon/plus_Y3.png" style="width: 25px; height: 25px;">  Add List </div>
             <div class="card-body">
             <form class="input-form" action="../Calinserv" method="post">
              <input type = "text" name="cal_comment" class="input-box" placeholder="todoList" style="font-family:'Dovemayo Medium'; ">
              <input type = "text" name="cal_date" class = "input-box" placeholder="yyyymmdd" style="font-family:'Dovemayo Medium'; ">
              <input type="submit" name="넘어가라" value="INPUT" class="btn btn-warning"> 
             </form>
             </div>
         </div>
          </td>
          <td> <!-- 오늘 todolist -->
             <div class="card border-primary mb-3" style="min-width: 14rem; max-width: 19rem;">
             <div class="card-header bg-warning"><%=date1 %></div>
             <div class="card-body">
             <p class="card-text">
               <table style="font-family: Dovemayo-Medium !important">
               <%for(int i = 0; i< com_list1.length; i++){%>
                  <tr>
                    <td><%="- " %><%=com_list1[i]%></td>
                    
                  </tr>
               <%} %>
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
               <%for(int i = 0; i< com_list2.length; i++){%>
                  <tr><td><%="- " %><%=com_list2[i] %></td></tr>
               <%} %>
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
               <%for(int i = 0; i< com_list3.length; i++){%>
                  <tr><td><%="- " %><%=com_list3[i] %></td></tr>
               <%} %>
                 </table>
               <!-- 칸 맞춤을 위한 공백 　　　　　　　　　　　　　　--><!-- 여기까지 -->
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
               <%for(int i = 0; i< com_list4.length; i++){%>
                  <tr><td><%="- " %><%=com_list4[i]%></td></tr>
               <%} %>
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
               <%for(int i = 0; i< com_list5.length; i++){%>
                  <tr><td><%="- " %><%=com_list5[i]%></td></tr>
               <%} %>
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
               <%for(int i = 0; i< com_list6.length; i++){%>
                  <tr><td><%="- " %><%=com_list6[i] %></td></tr>
               <%} %>
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
               <%for(int i = 0; i< com_list7.length; i++){%>
                  <tr><td><%="- " %><%=com_list7[i] %></td></tr>
               <%} %>
                 </table>
             </p>
             </div>
         </div>
          </td>
        </tr>
        
     </table>
     
     
     
   </main>
</body>

</html>