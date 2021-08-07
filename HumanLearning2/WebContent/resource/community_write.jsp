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
	  </style>
    
	  <!-- Custom styles for this template -->
	  <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
	  <!-- Custom styles for this template -->
	  <link href="blog.css" rel="stylesheet">
</head>


<body>
	<%
		MemDTO info = (MemDTO) session.getAttribute("info"); %>
		
	<%	
		/* CommunityDAO cdao = new CommunityDAO();
		CommunityDTO cdto = new CommunityDTO(info.getId()); */
		String user_id =info.getUSER_ID();
		System.out.println(user_id);
		
		if(user_id == null){
			  PrintWriter plogin = response.getWriter();
			  plogin.println("<script>");
			  plogin.println("alert('�Խñ� �ۼ��� �α����� �ʿ��մϴ�.')");
			  plogin.println("location.href = 'u_login.jsp'");
			  plogin.println("</script>");
		}
		
		
		
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
    
    <main style="  margin-left: 25%;">

	  <div id="" style="font-family: 'Dovemayo Medium'; width: 65%;">
		<div>
		  <form action="../CommunityService_W" method="post" enctype="multipart/form-data">
			<fieldset>
			  <legend>
				<div class="card mb-3 row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250">
				  <div class="col p-4 d-flex flex-column position-static"  >
					<h3 class="card-header" style="font-family: 'Dovemayo Medium';">���� �ۼ�</h3>
					<div class="card-body" style="margin-top: 3%;">
					  <input name="title" class="card-header form-control" placeholder="���� ���� �Է�" style="font-size: 20px; font-family: 'Dovemayo Medium';">
					</div>
					<div class="card-body">
					  <p class="card-text" style="font-family: 'Dovemayo Medium';">�̹��� ���� ���</p>
					  <input name="file" type="file" class="form-control" placeholder="" style="width: 30%;font-family: 'Dovemayo Medium';">
					</div>
  					<div class="card-body">
					  <p class="card-text" style="font-family: 'Dovemayo Medium';">�Խñ� ����</p>
 					  <textarea name="content" class="form-control" id="floatingInput" placeholder="���並 �ۼ����ּ���." style="font-family: 'Dovemayo Medium';"></textarea>
					  <div id="textcnt">(0 / 200)</div>
					</div>
					<div class="card-body">
					  <input class="btn btn-warning" id="write_com" type="submit" style="font-family: 'Dovemayo Medium';" value="�����ۼ��ϱ�" >
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
	//���ڼ� ī����
		$('#floatingInput').keyup(function (e){
		    var content = $(this).val();
		    $('#textcnt').html("("+content.length+" / �ִ� 200��)"); 
	
		    if (content.length > 200){
		        alert("�ִ� 200�ڱ��� �Է� �����մϴ�.");
		        $(this).val(content.substring(0, 200));
		        $('#textcnt').html("(200 / �ִ� 200��)");
		    }
		});   
	
/* 		function idCheck(){
			var input = $('#ID').val();
			$.ajax({
				type:"post", 			
				data: {"ID": input}, 	
				url: "IdCheck_Service",	
				dataType: "text",		
				success: function(data) {
					
					if(data=='true'){
						$('#sp1').html("�Ұ����� ID�Դϴ�.");
					}else{
						$('#sp1').html("������ ID�Դϴ�.");								
					}
				},
				error: function() {
					alert("����!");
				}
			});
		} */
     </script>
	
</html>