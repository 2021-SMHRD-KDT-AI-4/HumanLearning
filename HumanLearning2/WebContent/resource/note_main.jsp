<%@page import="com.model.KeywordDAO"%>
<%@page import="com.model.KeywordDTO"%>
<%@page import="com.model.NoteCategoryDTO"%>
<%@page import="com.model.NoteListDAO"%>
<%@page import="com.model.NoteListDTO"%>
<%@page import="com.model.MemDTO"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
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
	 	String id="�ʶ���Ʈ";
	 	 MemDTO info = (MemDTO)session.getAttribute("info");
	      if(info == null){
	     	 response.sendRedirect("u_login.jsp");
	     	 id  = "";
	      } else {
	     	 id = info.getUSER_ID();
	      }

	  
	 	response.setContentType("text/html;");
	 	NoteListDAO dao = new NoteListDAO();
	 	ArrayList<NoteCategoryDTO> cinfo = new ArrayList<NoteCategoryDTO>();
	 	HashMap<Integer,ArrayList<NoteListDTO>> map = new HashMap<Integer,ArrayList<NoteListDTO>>();
	 	cinfo= dao.classlist(id);
	 	
	 	for(int i = 0; i<cinfo.size() ;i++){
	 		ArrayList<NoteListDTO> ninfo = new ArrayList<NoteListDTO>();		
	 		int class_id = cinfo.get(i).getClass_id();
	 		ninfo = dao.notelist(id,class_id);	
	 		map.put(class_id,ninfo);
	 	}
	 	System.out.print(id);
	 %>

	<!--  �׺�� ���� -->
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
            <a class="blog-header-logo text-dark main_logo" href="main_page.jsp"><img class="nav_con_icon" src="./img/title_logo3.png" style="width: 200px; height: 80px;"></a>
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

    <main class="main_css">

        <div class="user_box">
            <div>
                <form>
                    <fieldset>
                    <legend>
                      <div class="card mb-3 row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250">
                      <div class="col p-4 d-flex flex-column position-static"  >
	                        <h3 class="card-header note_user"> <%= id %>  ���� ��Ʈ
	                        <input class="btn btn-warning new_note_btn" onclick="location.href='note_upload.jsp'" type="button" value="����Ʈ �����"> 
	                        </h3>
                      </div>
                      </div>
                    </legend>
                    </fieldset>
                </form>
            </div>
         
            
            
            <!-- ���� -->
            <%for(int j = 0; j<cinfo.size(); j++) { 
            	ArrayList<NoteListDTO> notes = new ArrayList<NoteListDTO>();
           	 	notes = map.get(cinfo.get(j).getClass_id());
            %>
            
            <div class="accordion" id="accordionExample">
                <div class="accordion-item">
                  <h2 class="accordion-header" id="headingOne">
                    <button class="accordion-button collapsed acc" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                         <!-- �Ѵɰ�, ���� �з�  -->
                         <%= cinfo.get(j).getClass_name() %>
                      </button>
                  </h2>
                  <div id="collapseOne" class="accordion-collapse collapse">
                    <div class="accordion-body">
                        <table class="table table-hover acc">
                            <thead>
                              <tr>
                                <th scope="col">���� ��������</th>
                                <th scope="col">Ű����</th>
                                <th scope="col">��Ʈ �ۼ���</th>
                                <th scope="col">��Ʈ ����</th>
                              </tr>
                            </thead>
                            <tbody>

                             <% for(int i=0;i<map.get(cinfo.get(j).getClass_id()).size();i++){
                            	 KeywordDAO keywordDAO = new KeywordDAO();
                            	 ArrayList<KeywordDTO> keywordDTOs = new ArrayList<KeywordDTO>();
                            	 keywordDTOs=keywordDAO.select_keywords(  notes.get(i).getVideo_id()  );
                            	 int kw_size=keywordDTOs.size();
                            	 String summary=notes.get(i).getVideo_summary().replace("\n", "<br>");
                            	 %>
                            	     
	                              	<tr class="table-warning" >
	                                <td onClick="location.href='note_editor.jsp?video_id=<%=notes.get(i).getVideo_id()  %>'"><!--�����̸�  --> <%= notes.get(i).getVideo_filename().split(".mp4")[0] %> </td>
	                                <td><% for(int k = 0;k<kw_size;k++){ %>
	                                	<%=keywordDTOs.get(k).getKeyword()+" " %>
	                                	<%} %>
	                                </td>
	                                <td><!--��¥  --> <%= notes.get(i).getUpload_time().split(" ")[0] %></td>
	                                <td><a href="../NoteDeleteService?num=<%= notes.get(i).getVideo_id() %>"><button class="btn rounded btn-outline-danger">X</button></a></td>
	                                </tr>
	                                <tr> 
	                                <td colspan="4"> <details > <summary>���</summary><div><%= summary %> </div></details> </td>
	                                
	                                </tr>
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
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script> 

<script type="text/javascript">
function preventClick(e){
	e.preventDefault()
}
function btn(){
	alert('��ư�� Ŭ���Ǿ����ϴ�');
	
	}
	
$("#dfd").on("click", function(e) {
	e.preventDefault();

});


</script>


</html>