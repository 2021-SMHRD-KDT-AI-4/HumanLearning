
<%@page import="com.model.NoteCategoryDAO"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.model.NoteCategoryDTO"%>
<%@page import="com.model.NoteListDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.NoteListDAO"%>
<%@page import="com.model.MemDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	
	<meta charset="UTF-8">
        <title>UPLOAD</title>
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
          .category{
	          width: 40%;
	          font-family: 'Dovemayo Medium';
	          float: left;
	          position: relative;
          }
          .keyword{
	          width: 40%;
	          margin-left: 10%;
	          font-family: 'Dovemayo Medium';
	          float: left;
	          position: relative;
          }
          .ca_btn{
	          font-family: 'Dovemayo Medium'; 
	          float: right; 
	          top: auto; 
	          left: 65%;
          }
          .video_up{
	           font-size: 25px; 
	           font-family: 'Dovemayo Medium';
          }
          .video_file{
	          width: 30%; 
	          font-family: 'Dovemayo Medium'; 
	          position: fixed;
          }
          .video_file2{
	          font-family: 'Dovemayo Medium';
	          float: left; 
	          position: relative;
	          top: auto; 
	          width : 60%;
          }
          .upload_btn{
	          font-family: 'Dovemayo Medium'; 
	          position: absolute; 
	          top: auto; 
	          left: 65%;
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
	       .input_ca_ke{
	       		font-size: 25px; 
	       		font-family: 'Dovemayo Medium';
	       }
	       .new_note{
	       		font-family: 'Dovemayo Medium';
	       }
	       .note_form{
	       		align-items: center;
	       }
	       .new_note_div{
	       		text-align: center; 
	       		margin-right: auto; 
	       		margin-left: auto;
	       }
        </style>
    
        
        <!-- Custom styles for this template -->
        <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="blog.css" rel="stylesheet">
	
</head>
<body>
	
		<!--  네비바 시작 -->
    <!-- 로그인 정보 세션 저장 08.03 (조찬호)-->
	<%
		MemDTO info = (MemDTO)session.getAttribute("info");
	        String id;
        	NoteCategoryDAO noteCategoryDAO = new NoteCategoryDAO();
	       	NoteListDAO noteListDAO = new NoteListDAO();
	        ArrayList<NoteCategoryDTO> noteClassDTOs = new ArrayList<NoteCategoryDTO>();
	        if(info == null){
	        	id = "a";
	        } else {
	        	id = info.getUSER_ID();
	        }
	        noteClassDTOs=noteListDAO.classlist(id);
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
    <main class="container">
        <div class="p-4 p-md-5 mb-4 text-white rounded bg-dark" >
          <div class="col-md-6 px-0 new_note_div">
            <h1 class="display-4 fst-italic new_note" >새노트 생성</h1>
            <div>
				<p class="lead my-3 input_ca_ke" style="">생성할 노트의 카테고리가 없다면  카테고리를 생성해 주세요 </p>
            </div>
            <div style="">
            	<input type="text" id="category" name="category" class="form-control category" placeholder="생성할 카테고리명 입력"> 
               
            </div>
            <div>
            
             <input type="button" id="add_cat_btn" value="카테고리 생성" class="btn btn-warning upload_btn" style="margin-left: -120px;"></div>
                     
                     
        		 	<form id="note_form" class="note_form" name="frmName" method="post" enctype="multipart/form-data" action="loading_page.jsp">
					
            	<div>
            	<br>
            	<br>
            	<hr>
                    <p class="lead my-3 input_ca_ke">생성할 노트의 카테고리와 키워드를 입력하세요</p>
                    <input type="hidden" name="user_id" value=<%= id  %> class="form-control category">
                   <!--  <input type="text" name="note_id" class="form-control category" placeholder="카테고리 입력" > --> 
                    <select id="note_id" name="note_id" class="form-control category" >
                    <% for(int i=0;i<noteClassDTOs.size();i++){ %>
                    	<option value=<%= noteClassDTOs.get(i).getClass_id() %>> <%= noteClassDTOs.get(i).getClass_name() %> </option>
                    	<%} %>
                    </select>
                    <input type="text" id="keyword" name="keyword" class="form-control keyword" placeholder="키워드 입력" style="margin-left: 120px;">
                   <!--  <input type="submit" value="입력" class="btn btn-warning ca_btn"> --> 
                </div>
                <br>
                <br>
                <div>
                    <p class="lead my-3 video_up">영상 파일 업로드</p>
                    <input type="file" id="uploadFile" name="uploadFile" class="form-control video_file2">
                    <input type="submit" id="sendValue" value="노트 생성" class="btn btn-warning upload_btn" style="margin-left: -90px;" >
                </div>
                <br>
                <br>
            </form>
          </div>
        </div>
    </main>        
	
</body>
<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
<script >
if(<%= (info!=null) %>){
	var u_id = "<%=info.getUSER_ID() %>";
} else {
	var u_id = "a";
}
//카테고리 추가
$("#add_cat_btn").click(function (event) {         
     
    		var c_name = $("#category").val();
		    $.ajax({             
		    	type: "POST",
				url: "..//AddCategoryService",  
				cache : false,
				data: {
					"u_id" : u_id,
					"c_name" : c_name
				},
				dataType : "text",              
		        success: function (data) {
		        	alert("카테고리가 생성되었습니다.")
		        	$("#note_id").append("<option value="+data+">"+c_name+" </option>");
		           },          
		        error: function (e) {  
		        	
		            alert("fail");      
		         }     
			});
});


//파일 업로드 및 플라스크 연동
$("#sendValue").click(function (event) {         
	//preventDefault 는 기본으로 정의된 이벤트를 작동하지 못하게 하는 메서드이다. submit을 막음 
	event.preventDefault();          
    // Get form         
    var form = $('#note_form')[0];  	    
    // Create an FormData object          
    var data = new FormData(form);  	   
    // disabled the submit button         
    $("#sendValue").prop("disabled", true);   
    alert("업로드 후 약 10분의 시간이 소요됩니다. 새노트는 알림으로 확인해주세요!")
    $.ajax({             
    	type: "POST",          
        enctype: 'multipart/form-data',  
        url: "../VideoUploadService",        
        data: data,          
        processData: false,    
        contentType: false,      
        cache: false,           
        timeout: 600000,       
        success: function (data) { 
            
        },          
        error: function (e) {  

            alert("fail");      
         }     
	});  
});

//새노트 갱신 확인
if(<%= (info!=null) %>){
	var currentNotes = -1;
	var u_id = "<%=info.getUSER_ID() %>";
	$.ajax ({
		type: "POST",
		url: "../ConfirmNoteService",  
		cache : false,
		data: {
			"u_id" : u_id
		},
		dataType : "text",
		success : function (data) { // ----- (2)
			currentNotes=data;
		}
	});
	$(function() {
		timer = setInterval( function () {
			//----------------------------------------------------------------------------------
			$.ajax ({
				type: "POST",
				url: "../ConfirmNoteService",  
				cache : false,
				
				data: {
					"u_id" : u_id
				},
				dataType : "text",
				success : function (data) { // ----- (2)			
					if (currentNotes<data){
						alert("새 노트 추가됨");
						currentNotes=data;
					} else if(currentNotes>data){
						currentNotes=data;
					}			
				}
			});
			//----------------------------------------------------------------------------------
		}, 5000); // 10초에 한번씩 받아온다.
});
}


</script>
</html>