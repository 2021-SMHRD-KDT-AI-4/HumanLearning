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
        </style>
    
        
        <!-- Custom styles for this template -->
        <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="blog.css" rel="stylesheet">
	
</head>
<body>
	 <%
	 
	 
 
 // String cocktail_id = URLDecoder.decode(request.getParameter("cocktail_id"), "euc-kr");
 
 //System.out.println("cocktail_id"+cocktail_id);
	//response.setContentType("text/html;");
	NoteListDAO dao = new NoteListDAO();
	ArrayList<NoteClassDTO> cinfo = new ArrayList<NoteClassDTO>();
	String id = "a";
	cinfo= dao.classlist(id);
	HashMap<Integer,ArrayList<NoteListDTO>> map = new HashMap<Integer,ArrayList<NoteListDTO>>();
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
        <div class="row flex-nowrap justify-content-between align-items-center">s
          <div class="col-4 pt-1">
            <a href="./My_page.html"><img src="./icon/user_B.png" style="align: center; width: 40px; height: 40px;"></a>
          </div>
          <div class="col-4 text-center">
            <a class="blog-header-logo text-dark" href="./Main_page.html" style="font-size: 30px; font-family: 'Dovemayo Medium';">니가써봐</a>
          </div>
          <div class="col-4 d-flex justify-content-end align-items-center">
            <a class="btn btn-sm btn-outline-secondary" href="./Login_page.html">Sign up</a>
          </div>
        </div>
      </header>
    
      <div class="nav-scroller py-1 mb-2">
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
            <div style="margin: auto; display: inline;"><a href="./Main_page.html"><img src="./icon/home.png" style="width: 40px; height: 40px;"></a></div>
            <div style="margin: auto; display: inline;"><a href="./Note_List_Page.html"><img src="./icon/doc.png" style="width: 40px; height: 40px;"></a></div>
            <div style="margin: auto; display: inline;"><a href=""><img src="./icon/cal.png" style="width: 40px; height: 40px;"></a></div>
            <div style="margin: auto; display: inline;"><a href="./Community_page.html"><img src="./icon/com.png" style="width: 40px; height: 40px;"></a></div>
        </nav>
      </div>
    </div>
    <!-- 네비바 종료 -->

    <br>
    <br>
    <br>
    <br>

    <main style="  margin-left: 25%;">

        <div id="" style="font-family: 'Dovemayo Medium'; width: 65%;">
            <div>
                <form>
                    <fieldset>
                    <legend>
                      <div class="card mb-3 row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250">
                      <div class="col p-4 d-flex flex-column position-static"  >
                        <h3 class="card-header" style="font-family: 'Dovemayo Medium';"><%= id %>님의 노트</h3>
                          <div class="card-body" style="margin-top: 3%;">
                          </div>
                          <div class="card-body">
                          </div>
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
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne"style="font-family: 'Dovemayo Medium';">
                         <!-- 한능검, 과목 분류  -->
                         <%= cinfo.get(j).getClass_name() %>
                      </button>
                  </h2>
                  <div id="collapseOne" class="accordion-collapse collapse">
                    <div class="accordion-body">
                        <table class="table table-hover" style="font-family: 'Dovemayo Medium';">
                            <thead>
                              <tr>
                                <th scope="col">노트 이름</th>
                                <th scope="col">강의 영상제목</th>
                                <th scope="col">노트 작성일</th>
                                <th scope="col">노트 삭제</th>
                              </tr>
                            </thead>
                            <tbody>
                            
                            <%-- 
                              <tr class="table-warning">
                                <th scope="row"><!--노트이름  --> <%=ninfo.get(0).getVideo_id() %></th>
                                <td><!--파일이름  --> <%=ninfo.get(0).getFile_name() %></td>
                                <td><!--날짜  --> <%=ninfo.get(0).getUpload_time() %></td>
                                <td><button class="btn rounded btn-outline-danger">X</button></td>
                              --%>
                              
                             <% for(int i=0;i<map.get(cinfo.get(j).getClass_id()).size();i++){ %>
                            	 
                            	                            
	                              <tr class="table-warning">
	                                <th scope="row"><!--노트이름  --> <%= notes.get(i).getVideo_id() %></th>
	                                <td><!--파일이름  --> <%= notes.get(i).getVideo_filename() %> </td>
	                                <td><!--날짜  --> <%= notes.get(i).getUpload_time() %></td>
	                                <td><a href="../NoteDeleteService?num=<%= notes.get(i).getVideo_id() %>"><img src="img/X.png"></a></td> 
	                            
	                      <%       
                            } %>
                             
                             
                            </tbody>
                          </table>
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