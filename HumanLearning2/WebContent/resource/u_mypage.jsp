<%@page import="com.model.MemDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">


</script>
	
	<meta charset="UTF-8">
        <title>My_page</title>
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
	       .main_css{
	       		margin-left: 25%;
	       }
	       .my_div{
	       		 font-family: 'Dovemayo Medium'; 
	       		 width: 65%;
	       }
	       .ca{
	       		font-family: 'Dovemayo Medium';
	       }
	       .my_div2{
	       		margin-top: 3%;
	       }
	       .out{
	       		float: right; 
	       		font-family: 'Dovemayo Medium';
	       }
	       .user_icon{
	       		float: left;
	       }
	       .half_background {
				background: linear-gradient(to top, yellow 50%, transparent 50%);
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

    <main class="main_css">
        <div class="my_div">
            <div>
                <form>
                    <fieldset>
                    <legend>
                      <div class="card mb-3 row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250">
                      <div class="col p-4 d-flex flex-column position-static"  >
                        <h3 class="card-header ca">마이페이지</h3>
                          <div class="card-body my_div2">
                            <a id = "ID_delete" type = "button" onclick = "deleteinfo()" class="btn btn-outline-secondary out">회원 탈퇴</a>
                          </div>
                          <!-- 로그인 세션정보 -->
                          <div class="card-body">
                            <img class="user_icon" src="./icon/user_B.png">
                            <p> <span class="half_background"> <%= info.getUSER_NAME() %>님의 정보</p>
                            <p>	나이: <%= info.getUSER_AGE() %></p>
                            <p> 성별: <%= info.getUSER_GENDER() %></p><br>
                            <p>멤버십 정보 : <%= info.getMEMBERSHIP_NAME() %> </p>
                            <!-- 추가로 사용자 정보 띄울거 생각 -->
                          </div>
                        </div>
                        </div>
                    </legend>
                    </fieldset>
                </form>
            </div>
            <div class="accordion" id="accordionExample">
                <div class="accordion-item">
                  <h2 class="accordion-header" id="headingOne">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                      Basic Membership
                    </button>
                  </h2>
                  <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample" style="">
                    <div class="accordion-body">
                        <strong>멤머십 설명</strong>
                    </div>
                  </div>
                </div>
                <div class="accordion-item">
                  <h2 class="accordion-header" id="headingTwo">
                    <button class="accordion-button collapsed Silver_btn" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                      Silver Membership
                    </button>
                  </h2>
                  <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample" style="">
                    <div class="accordion-body">
                      <strong>멤머십 설명</strong>
                      <button class="btn btn-secondary" onclick="mem()">멤버십 구독하기</button>
                    </div>
                  </div>
                </div>
                <div class="accordion-item">
                  <h2 class="accordion-header" id="headingThree">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                      Gold Membership
                    </button>
                  </h2>
                  <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample" style="">
                    <div class="accordion-body">
                        <strong>멤머십 설명</strong>
                        <button class="btn btn-warning" onclick="mem()">멤버십 구독하기</button>
                    </div>
                  </div>
                </div>
              </div>
       
	    </main>
	    <script type="text/javascript">
	    	function mem() {
	    	 	alert("멤버십 시스템 준비중입니다.");
	    	 }
	    </script>
	</body>
	<script src="js/bootstrap.js"></script>
</html>