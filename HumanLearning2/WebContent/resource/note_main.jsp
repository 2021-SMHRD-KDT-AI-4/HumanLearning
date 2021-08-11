<%@page import="com.model.MemDTO"%>
<%@page import="com.NoteListDTO"%>
<%@page import="java.util.HashMap"%>
<%@page import="DTO.NoteClassDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.NoteListDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="UTF-8">
        <title>NOTE_LIST</title>
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
	       .note_user{
	       		font-family: 'Dovemayo Medium';
	       }
	       .user_box{
	       		 font-family: 'Dovemayo Medium'; 
	       		 width: 65%;
	       }
	       .new_note_btn{
	       		 font-family: 'Dovemayo Medium';
	       		 float: right;
	       }
	       .acc{
	       		font-family: 'Dovemayo Medium';
	       }
	       .main_css{
	       		margin-left: 25%;
	      	}
        </style>
    
        
        <!-- Custom styles for this template -->
        <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="blog.css" rel="stylesheet">
	
</head>
<body>
	 <%
	 String id;
	 MemDTO info = (MemDTO)session.getAttribute("info");
     if(info == null){
    	 response.sendRedirect("u_login.jsp");
    	 id  = "";
     } else {
    	 id = info.getUSER_ID();
     }

 
	response.setContentType("text/html;");
	NoteListDAO dao = new NoteListDAO();
	ArrayList<NoteClassDTO> cinfo = new ArrayList<NoteClassDTO>();
	HashMap<Integer,ArrayList<NoteListDTO>> map = new HashMap<Integer,ArrayList<NoteListDTO>>();
	cinfo= dao.classlist(id);
	
	for(int i = 0; i<cinfo.size() ;i++){
		ArrayList<NoteListDTO> ninfo = new ArrayList<NoteListDTO>();		
		int class_id = cinfo.get(i).getClass_id();
		ninfo = dao.notelist(id,class_id);	
		System.out.println("upload : "+ninfo.get(0).getUpload_time());
		map.put(class_id,ninfo);
	}
%>

	<!--  네비바 시작 -->
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

        <div class="user_box">
            <div>
                <form>
                    <fieldset>
                    <legend>
                      <div class="card mb-3 row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250">
                      <div class="col p-4 d-flex flex-column position-static"  >
	                        <h3 class="card-header note_user"> <%= id %>  님의 노트
	                        <input class="btn btn-warning new_note_btn" onclick="location.href='note_upload.jsp'" type="button" value="새노트 만들기"> 
	                        </h3>
                      </div>
                      </div>
                    </legend>
                    </fieldset>
                </form>
            </div>
         
            
            
            <!-- 과목별 -->
            <%for(int j = 0; j<cinfo.size(); j++) { 
            	ArrayList<NoteListDTO> notes = new ArrayList<NoteListDTO>();
           	 	notes = map.get(cinfo.get(j).getClass_id());
            %>
            
            <div class="accordion" id="accordionExample">
                <div class="accordion-item">
                  <h2 class="accordion-header" id="headingOne">
                    <button class="accordion-button collapsed acc" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                         <!-- 한능검, 과목 분류  -->
                         <%= cinfo.get(j).getClass_name() %>
                      </button>
                  </h2>
                  <div id="collapseOne" class="accordion-collapse collapse">
                    <div class="accordion-body">
                        <table class="table table-hover acc">
                            <thead>
                              <tr>
                                <th scope="col">노트 이름</th>
                                <th scope="col">강의 영상제목</th>
                                <th scope="col">노트 작성일</th>
                                <th scope="col">노트 삭제</th>
                              </tr>
                            </thead>
                            <tbody>

                             <% for(int i=0;i<map.get(cinfo.get(j).getClass_id()).size();i++){ %>
                            	     
	                              <tr class="table-warning">
	                                <th scope="row"><!--노트이름  --> <%= notes.get(i).getVideo_id() %></th>
	                                <td><!--파일이름  --> <%= notes.get(i).getVideo_filename() %> </td>
	                                <td><!--날짜  --> <%= notes.get(i).getUpload_time() %></td>
	                                <td><a href="../NoteDeleteService?num=<%= notes.get(i).getVideo_id() %>"><button class="btn rounded btn-outline-danger">X</button></a></td> 
	                      <%       
                            } %>
                            </tbody>
                          </table>
                    </div>
                  </div>
                </div>
                </div>
                
                    <%} %> 
               
    </main>
	
</body>
<script src="./js/jquery-3.6.0.min.js"></script> 
<script type="text/javascript" src="js/bootstrap.js"></script> 
<!-- <script>
alert("click");
</script>
 -->
<script type="text/javascript">


</script>


</html>