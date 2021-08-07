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
            <a type="button"  href="u_login.jsp" ><img src="./icon/user_B.png" style="align: center; width: 40px; height: 40px;"></a>
            <%} else {%>
            <a type="button" href="u_mypage.jsp" ><img src="./icon/user_B.png" style="align: center; width: 40px; height: 40px;" ></a>
            <%} %>
          </div>
          <div class="col-4 text-center">
            <a class="blog-header-logo text-dark" href="main_page.jsp" style="font-size: 20px; font-family: 'Dovemayo-Medium';">�ϰ����</a>
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
    <!-- �׺�� ���� -->
    <br>
    <br>
    <br>
    <br>
    <main class="container">
      <div class="card bg-light mb-3" >
        <div class="col-md-6 px-0" style=" margin-right: auto; margin-left: auto;">
        <!--   <form> -->
			<fieldset>
			  <legend>
				<div class="form-group" style="font-family: 'Dovemayo Medium';"></div>
				<br>
				<h1 class="display-4" style="text-align: center; font-family: 'Dovemayo Medium';">ȸ������</h1>
				<p class="lead" style="text-align: center; font-family: 'Dovemayo Medium';">ȸ�����Կ� �ʿ��� ������ �ۼ����ּ���.</p>
				<hr class="card bg-light mb-3" style="width: 100%;">
			<!-- 08.03 ȸ������ ��� �߰� ( ����ȣ ) -->
				<form  action ="../Joinserv"  method="post"  class="needs-validation" style=" font-family: 'Dovemayo Medium';  ">
				  <div class="row g-3" style="font-family: 'Dovemayo Medium';">
					<div class="col-12">
					  <label for="ID" class="form-label">���̵�</label>
				
                      <input type="text" class="form-control" placeholder="���̵� �Է��ϼ���." name="ID"  style="margin-bottom: 10px; font-family: 'Dovemayo Medium';">
                      
                       <input id="ID_btn" type="button" class="btn btn-warning" value="ID�ߺ� üũ" onclick = "idCheck()" style="font-family: 'Dovemayo Medium';"> 

					</div>
              
					<div class="col-12" style="font-family: 'Dovemayo Medium';">
					  <label for="pw" class="form-label">��й�ȣ</label>
					  <div class="input-group has-validation">
						<input type="password" class="form-control" placeholder="��й�ȣ�� �Է��ϼ���." name="PW" style="font-family: 'Dovemayo Medium';">
                      </div>
					</div>
					
					<div class="col-12" style="font-family: 'Dovemayo Medium';">
					  <label for="name" class="form-label">�̸�</label>
					  <input type="text" class="form-control" placeholder="�̸��� �Է��ϼ���." name="NAME" style="font-family: 'Dovemayo Medium';">
					</div>
              
					<div class="col-12" style="font-family: 'Dovemayo Medium';">
<!-- ��Ÿ���� 08.03 ����ȣ ( genader ->> gender -->
					  <label for="gender" class="form-label" >����</label>
					  <select class="form-select" name="GENDER" required style="font-family: 'Dovemayo Medium';">
					    		<option value="Choose" style="font-family: 'Dovemayo Medium';">����</option>
                                <option value="Choose" style="font-family: 'Dovemayo Medium';">����</option>
					  </select>
					</div>
              
					<div class="col-12" style="font-family: 'Dovemayo Medium';">
					  <label for="age" class="form-label">����</label>
					  <input type="text" class="form-control" placeholder="���̸� �Է��ϼ���." name="AGE" style="font-family: 'Dovemayo-Medium';">
					  <br>
					</div>
					<input type="submit"  class="w-100 btn btn-warning btn-lg"  style="font-family: 'Dovemayo Medium';" />
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