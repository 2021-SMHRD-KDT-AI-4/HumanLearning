<%@page import="com.model.MemDTO"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
	
	<meta charset="UTF-8">
	<title>JOIN</title>
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
       .join_div{
       		margin-right: auto; 
       		margin-left: auto;
       }
       .ca{
       		font-family: 'Dovemayo Medium';
       }
       .join_p, .join_h1{
       		text-align: center; 
       		font-family: 'Dovemayo Medium';
       }
       .join_hr{
       		width: 100%;
       }
       .ca_id{
       		margin-bottom: 10px; 
       		font-family: 'Dovemayo Medium';
       }
	</style>
    
    <!-- Custom styles for this template -->
	<link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
	<!-- Custom styles for this template -->
	<link href="blog.css" rel="stylesheet">
	
</head>

<body>
	<!-- �α��� ���� ���� ���� 08.03 (����ȣ)-->
	<%
		MemDTO info = (MemDTO)session.getAttribute("info");
	%>
	<div class="container">
      <header class="blog-header py-3">
        <div class="row flex-nowrap justify-content-between align-items-center">
          <div class="col-4 pt-1">
          <!-- ���� ���� ������ ���� �α��� / ���������� ��ư  ��ư 08-03 ����ȣ --> 
          <% if (info==null) {%>
            <a type="button"  href="u_login.jsp" ><img class="nav_con_icon" src="./icon/user_B.png"></a>
            <%} else {%>
            <a type="button" href="u_mypage.jsp" ><img class="nav_con_icon" src="./icon/user_B.png"></a>
            <%} %>
          </div>
          <div class="col-4 text-center">
            <a class="blog-header-logo text-dark main_logo" href="main_page.jsp">�ϰ����</a>
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
    <!-- �׺�� ���� -->
    <br>
    <br>
    <br>
    <br>
    <main class="container">
      <div class="card bg-light mb-3" >
        <div class="col-md-6 px-0 join_div">
        <!--   <form> -->
			<fieldset>
			  <legend>
				<div class="form-group ca"></div>
				<br>
				<h1 class="display-4 join_h1">ȸ������</h1>
				<p class="lead join_p">ȸ�����Կ� �ʿ��� ������ �ۼ����ּ���.</p>
				<hr class="card bg-light mb-3 join_hr">
			<!-- 08.03 ȸ������ ��� �߰� ( ����ȣ ) -->
				<form  action ="../Joinserv"  method="post"  class="needs-validation ca">
				  <div class="row g-3 ca">
					<div class="col-12">
					  <label for="ID" class="form-label">���̵�</label>
                      <input type="text" class="form-control ca_id" placeholder="���̵� �Է��ϼ���." name="ID">
						<input id="ID_btn" type="button" class="btn btn-warning ca" value="ID�ߺ� üũ" onclick = "idCheck()"> 
					</div>
              
					<div class="col-12 ca">
					  <label for="pw" class="form-label">��й�ȣ</label>
					  <div class="input-group has-validation">
						<input type="password" class="form-control ca" placeholder="��й�ȣ�� �Է��ϼ���." name="PW">
                      </div>
					</div>
					
					<div class="col-12 ca">
					  <label for="name" class="form-label">�̸�</label>
					  <input type="text" class="form-control ca" placeholder="�̸��� �Է��ϼ���." name="NAME">
					</div>
              
					<div class="col-12 ca">
					<!-- ��Ÿ���� 08.03 ����ȣ ( genader ->> gender -->
					  <label for="gender" class="form-label ca" >����</label>
					  <select class="form-select ca" name="GENDER" required>
					    		<option class="ca" value="Choose">����</option>
                                <option class="ca" value="Choose">����</option>
					  </select>
					</div>
              
					<div class="col-12 ca">
					  <label for="age" class="form-label ca">����</label>
					  <input type="text" class="form-control ca" placeholder="���̸� �Է��ϼ���." name="AGE">
					  <br>
					</div>
					<input type="submit" class="w-100 btn btn-warning btn-lg ca"/>
				  </div>
                  <br>
                  <br>
				</form>
              </legend>
            </fieldset>
          <!-- </form> -->
        </div>
      </div>
	</main>       
	<script src="form-validation.js"></script>
	<script src="./js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">




        function idCheck(){
           var input = $('#ID').val();
           $.ajax({
              type:"post",          
              data: {"ID": input},    
              url: "../Idcheck",   
              dataType: "text",      
              success: function(data) {
                 
                 if(data=='true'){
                    alert("�Ұ����� ID �Դϴ�");
                 }else{
                    alert("������ ID �Դϴ�");                        
                 }
              },
              error: function() {
                 alert("����!");
              }
           });
        }
  
</script>
</body>

</html>