<%@page import="com.model.MemDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	
	<meta charset="UTF-8">
        <title>VIDEO_PAGE</title>
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
        </style>
    
        
        <!-- Custom styles for this template -->
        
        <!-- Custom styles for this template -->
        <link href="blog.css" rel="stylesheet">	
		
		<!-- include libraries(jQuery, bootstrap) -->
		<link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
		<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
		<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
		
		<!-- include summernote css/js-->
		<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
		<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>


</head>
<body>
	
	<!-- �׺�� ���� -->
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
	<!-- ����  -->
    <main class="">
        <div class="col-md-6" id="video" style="position: relative; width: 100%; padding-top: 5%; float: left;">
            <video width="65%" height="50%" src="./test/test.mp4" controls autoplay="autoplay" style=" margin-left: 5%;"></video>
             <div class="col-md-6" style="width: 23%; margin-right:5%; float: right; ">
          <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250">
            <div class="col p-4 d-flex flex-column position-static">
              <strong class="d-inline-block mb-2 text-success" style="font-family: 'Dovemayo Medium';">��Ʈ</strong>
             <div>
             	<textarea name="content" id="summernote" style="width: 100%;"></textarea>
             </div>
            </div>
          </div>
        </div>
        </div>
       
	<!-- �������� -->

     </main>
    <script>
    $('#summernote').summernote({
  	  // ������ ����
  	  height: 500,
  	  // ������ �ѱ� ����
  	  lang: "ko-KR",
  	  // �����Ϳ� Ŀ�� �̵� (inputâ�� autofocus��� �����Ͻø� �˴ϴ�.)
  	  focus : true,
  	  toolbar: [
  		    // �۲� ����
  		    ['fontname', ['fontname']],
  		    // ���� ũ�� ����
  		    ['fontsize', ['fontsize']],
  		    // ����, ����Ӳ�, ����,��� ��, ���������
  		    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
  		    // ���ڻ�
  		    ['color', ['forecolor','color']],
  		    // ǥ�����
  		    ['table', ['table']],
  		    // �۸Ӹ� ��ȣ, ��ȣ�ű��, ��������
  		    ['para', ['ul', 'ol', 'paragraph']],
  		    // �ٰ���
  		    ['height', ['height']],
  		    // �׸�÷��, ��ũ�����, ������÷��
  		    ['insert',['picture','link','video']],
  		    // �ڵ庸��, Ȯ���ؼ�����, ����
  		    ['view', ['codeview','fullscreen', 'help']]
  		  ],
  		  // �߰��� �۲�
  		fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','���� ���','�ü�','����ü','����','����ü','����ü'],
  		 // �߰��� ��Ʈ������
  		fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
  		
  	});
</script>
     
</body>
</html>