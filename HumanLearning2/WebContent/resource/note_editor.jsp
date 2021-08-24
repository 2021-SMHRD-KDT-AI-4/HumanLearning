<%@page import="com.model.KeywordDTO"%>
<%@page import="com.model.KeywordDAO"%>
<%@page import="com.model.BookmarkDTO"%>
<%@page import="com.model.BookmarkDAO"%>
<%@page import="com.model.VideoDTO"%>
<%@page import="com.model.VideoAnalysisDAO"%>
<%@page import="com.model.VideoDAO"%>
<%@page import="com.model.VideoAnalysisDTO"%>
<%@page import="com.model.MemDTO"%>
<%@page import="java.util.ArrayList"%>

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

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.btn-warning:hover {
	filter: brightness(0), invert(1);
}

.nav_div {
	margin: auto;
	display: inline;
}

.nav_icon {
	width: 40px;
	height: 40px;
}

.nav_con_icon {
	align: center;
	width: 40px;
	height: 40px;
}

.main_logo {
	font-size: 20px;
	font-family: 'Dovemayo-Medium';
}


#sum_div::-webkit-scrollbar {
    width: 10px;
  }
#sum_div::-webkit-scrollbar-thumb {
    background-color: #2f3542;
    border-radius: 10px;
  }
#sum_div::-webkit-scrollbar-track {
    background-color: grey;
    border-radius: 10px;
    box-shadow: inset 0px 0px 5px white;
  }
#sum_div{
	border-radius: 10px;
}  
  
#scroll_div::-webkit-scrollbar {
    width: 10px;
  }
#scroll_div::-webkit-scrollbar-thumb {
    background-color: #2f3542;
    border-radius: 10px;
  }
#scroll_div::-webkit-scrollbar-track {
    background-color: grey;
    border-radius: 10px;
    box-shadow: inset 0px 0px 5px white;
  }
#scroll_div{
	border-radius: 10px;
}

  

</style>


<!-- Custom styles for this template -->

<!-- Custom styles for this template -->
<link href="blog.css" rel="stylesheet">

<!-- include libraries(jQuery, bootstrap) -->
<link
	href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap"
	rel="stylesheet">
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

<!-- include summernote css/js-->
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>


</head>
<body>

	<!-- �׺�� ���� -->
	<!-- �α��� ���� ���� ���� 08.03 (����ȣ)-->
	<%
	int v_id = 21;
	String u_id = "a";
		MemDTO info = (MemDTO) session.getAttribute("info");
		if(info!=null){
			u_id= info.getUSER_ID();
		}
		if(request.getParameter("video_id")!=null){
			v_id = Integer.parseInt(request.getParameter("video_id"));
		}
	
	ArrayList<VideoAnalysisDTO> analysisDTOs = new ArrayList<VideoAnalysisDTO>();
	VideoAnalysisDAO videoAnalysisDAO = new VideoAnalysisDAO();
	VideoDAO videoDAO = new VideoDAO();
	
	analysisDTOs = videoAnalysisDAO.select_analyses(u_id, v_id);
	VideoDTO videoDTO = videoDAO.select_video(v_id);
	
	BookmarkDAO bookmarkDAO = new BookmarkDAO();
	ArrayList<BookmarkDTO> bookmarkDTOs = bookmarkDAO.select_bookmark(u_id);
	
	KeywordDAO keywordDAO= new KeywordDAO();
	ArrayList<KeywordDTO> keywordDTOs = keywordDAO.select_keywords(v_id);
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
				<div class="nav_div">
					<a href="main_page.jsp"><img class="nav_icon"
						src="./icon/home.png"></a>
				</div>
				<div class="nav_div">
					<a href="note_main.jsp"><img class="nav_icon"
						src="./icon/doc.png"></a>
				</div>
				<div class="nav_div">
					<a href="calendar.jsp"><img class="nav_icon"
						src="./icon/cal.png"></a>
				</div>
				<div class="nav_div">
					<a href="community_main.jsp"><img class="nav_icon"
						src="./icon/com.png"></a>
				</div>
			</nav>
		</div>
	</div>
	<!-- �׺�� ���� -->
	<!-- ����  -->
	<main class="">
		<!-- ���� ���� -->
		<div style="text-align: center;"> <%= videoDTO.getVIDEO_FILENAME().split(".mp4")[0] %> </div>
		<!-- Ű���� ���� -->
		<div style="text-align: center;">
		<% for(int i=0;i<keywordDTOs.size();i++){ 
		String keyword=keywordDTOs.get(i).getKeyword();%>
			<div style="display: inline-block;"> <%=keyword %> : 
			<select id='keyword_timestamp_<%= i%>' name='timestamp' onchange="testChange(this)">
					<%
					for (int j = 0; j < analysisDTOs.size(); j++) {
						if (analysisDTOs.get(j).getTrans_content().contains(keyword)){
					%>
					<option id=<%=i%> value=<%=analysisDTOs.get(j).getStart_time()%>>
						<%=analysisDTOs.get(j).getStart_time() / 60%> : <%=analysisDTOs.get(j).getStart_time() % 60%> ~ <%=analysisDTOs.get(j).getEnd_time() / 60%> : <%=analysisDTOs.get(j).getEnd_time() % 60%>
					</option>
					<%}
							}%>
				</select>
				</div>
		<% 
		}%></div>
		
		<div class="col-md-6" id="video" style="position: relative; width: 100%; padding-top: 5%; float: left;">
			<!-- ������� -->
			<video id="myvideo" autoplay width="39%" height="50%" controls
				style="margin-left: 20%;">
				<source src="./storage/<%=videoDTO.getVIDEO_FILENAME() %>" type="video/mp4"></source>

			</video>
			<div class="col-md-6"
				style="width: 20%; margin-right: 20%; float: right; margin-top: 0%;">
				<div
					class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250">

					<div class="col p-4 d-flex flex-column position-static">
						<strong class="d-inline-block mb-2 text-success"
							style="font-family: 'Dovemayo Medium';">��Ʈ</strong>
						<div>
							<form action="#" method="post">
							<!-- ��Ʈ��� -->
								<textarea name="content" class="summernote" style="width: 100%;">
							<%=videoDTO.getVIDEO_MEMO()%>
				</textarea>
								
								<button type="button" id="temp_btn" class="btn btn-default" style="margin-left: 160px;">�ӽ�����</button>
								<button type="submit" id="true_btn" class="btn btn-default">��������</button>
								
							</form>
						</div>
					</div>
				</div>
			</div>
			<div style="width: 39%; height: 10px; margin-left: 20%;">
			<table>
			<tr>
				<td>
				<!-- Ÿ�ӽ����� -->
					<select id='timestamp' name='timestamp'>
						<%
							for (int i = 0; i < analysisDTOs.size(); i++) {
						%>
						<option id=<%=i%> value=<%=analysisDTOs.get(i).getAnalsis_id()%>>
							<%=analysisDTOs.get(i).getStart_time() / 60%> : <%=analysisDTOs.get(i).getStart_time() % 60%> ~ <%=analysisDTOs.get(i).getEnd_time() / 60%> : <%=analysisDTOs.get(i).getEnd_time() % 60%>
						</option>
						<%}%>
					</select>
				</td>
				<td>
					<!-- �ϸ�ũ���� -->
					<select id='bookmark' name='bookmark'>
						<%
							for (int i = 0; i < bookmarkDTOs.size(); i++) {
						%>
						<option value=<%=bookmarkDTOs.get(i).getMark_id()%>>
							<%=bookmarkDTOs.get(i).getMark_name()%>
						</option>
						<%}%>
					</select>
				</td>
				<td>
					��
				</td>
				<td>
					<!-- �ϸ�ũ�߰� ��ư -->
					<input type = "button" id="mark_btn" value = "�ϸ�ũ �߰� " class = "btn-warning">
				</td>
				<td>
					����������������
				</td>
				<td>
					<input id="bookmark_text" type="text" placeholder="�ϸ�ũ ���� �߰�"> 
					<input id="color" type="color">
					<input type="button" id="add_mark_btn" value="�߰�" class="btn-outline-dark"/>
				</td>
				
				
				
				
			</tr>
			</table>	
			</div>
			<br>
			<!-- ��ũ��Ʈ ��ũ�� -->
			
			<div id="scroll_div"
				style="overflow: scroll; width: 39%; height: 240px; margin-left: 20%; margin-top: 1%; overflow-x:hidden; border:1px solid gray;">
				<hr>
				<%
					for (int i = 0; i < analysisDTOs.size(); i++) {

				int m_id=analysisDTOs.get(i).getBookmark();
				//�ϸ�ũ ���� ��
				if(m_id!=0){ 
					String color=bookmarkDAO.select_color(m_id);
					String mark_name=bookmarkDAO.select_mark_name(m_id);
				%>
				<!-- ��ũ��Ʈ �� �ð�-->
				<div style=" display: inline-block;">
					<span  class="time"> <%=analysisDTOs.get(i).getStart_time() / 60%> : <%=analysisDTOs.get(i).getStart_time() % 60%></span>
				</div>
				<!-- ��ũ��Ʈ �� �ϸ�ũ ǥ��-->
				<div class="mark_name" style=" display: inline-block;">
					<span> <%=mark_name%></span>
				</div>
				<div id=a_<%=analysisDTOs.get(i).getAnalsis_id()%>>
				<div class="script_div" id=<%=i%>_<%=analysisDTOs.get(i).getStart_time()%>  style="border: solid 1px <%= color %>">
					<span class="script"><%=analysisDTOs.get(i).getTrans_content()%> </span>
				</div>
				</div>
				<% //�ϸ�ũ ���� �� 
				}else { %>
				<!-- ��ũ��Ʈ �� �ð�-->
				<div style=" display: inline-block;">
					<span class="time"> <%=analysisDTOs.get(i).getStart_time() / 60%> : <%=analysisDTOs.get(i).getStart_time() % 60%></span>
				</div>
				<!-- ��ũ��Ʈ ���-->
				<div id=a_<%=analysisDTOs.get(i).getAnalsis_id()%>>
					<div id=<%=i %>_<%=analysisDTOs.get(i).getStart_time()%> class="script_div">
						<span class="script"><%=analysisDTOs.get(i).getTrans_content()%> </span>
						
					</div>
				
				</div>
				<% } %>
				<hr>
				<% }
				%>
			</div>
			<div style="width: 39%; height: 10px; margin-left: 20%;">
			
			<!-- �ϸ�ũ���� �߰� -->
				
				<div style="display: inline-block;">
				<br>
				<table>
					<tr>
						<td>
							<!-- ��ũ��Ʈ ��ũ ���߱� -->
							��ũ��Ʈ ��ũ :
							<input type="button" id="minus" value="-1��" class="btn-outline-dark"> 
							<div id=sink_num style="display: inline-block;">0��</div>
							<input type="button" id="plus" value="+1��" class="btn-outline-dark">
						</td>
						<td>
							��������������������������������������������
						</td>
						<td>
							<!-- �ٿ�ε� ��ư -->
							<input type="button" id="download_btn" value="��ũ��Ʈ �ٿ�ε�" class="btn-warning"/>
							
						</td>
						<td>
							��
						</td>
						<td>
							<!-- ��� ��� -->
							<div><button id="sum_btn" class="btn-warning">���</button> </div>
							<div id ="sum_div" style="display : none; overflow: scroll; width: 38.5%; height: 250px; z-index: 1;position: absolute; left: 390px; top: 455px; background-color: #fff59d; overflow-x:hidden; ">
								<br>
								<p><���></p>
								<hr>	
								
								<%= videoDTO.getVIDEO_SUMMARY().replace("\n", "<br>") %>   
							</div>
						</td>
					</tr>
					<tr>
						<td>��</td>
					</tr>
				</table>
				<br>	
					
					
					
				
					
					<%-- <details>
						<button id="sum_btn">���</button>
						<div id ="sum_div" style="display : none; overflow: scroll; width: 39%; height: 240px; z-index: 1;position: absolute; left: 20px; top: 250px; background-color: white;">
						<%= videoDTO.getVIDEO_SUMMARY().replace("\n", "<br>") %>   </div>
					</details> --%>
					<%-- <div>
						<div>����������������������������������������������������<button id="sum_btn">���</button> </div>
						<div id ="sum_div" style="display : none; overflow: scroll; width: 39%; height: 240px; z-index: 1;position: absolute; left: 20px; top: 250px; background-color: white;">
						<%= videoDTO.getVIDEO_SUMMARY().replace("\n", "<br>") %>   </div>
					</div>  --%>
				</div>
				
			</div>

		</div>
		<!-- �������� -->

	</main>
	<script>
		//������ ����
		$('.summernote')
				.summernote(
						{
							// ������ ����
							height : 500,
							// ������ �ѱ� ����
							lang : "ko-KR",
							// �����Ϳ� Ŀ�� �̵� (inputâ�� autofocus��� �����Ͻø� �˴ϴ�.)
							focus : true,
							toolbar : [
									// [groupName, [list of button]]
									[
											'style',
											[ 'bold', 'italic', 'underline',
													'clear' ] ],
									[
											'font',
											[ 'strikethrough', 'superscript',
													'subscript' ] ],
									[ 'fontsize', [ 'fontsize' ] ],
									[ 'color', [ 'color' ] ],
									[ 'para', [ 'ul', 'ol', 'paragraph' ] ],
									[ 'height', [ 'height' ] ] ]
						});

		//�ϸ�ũ ajax
		$("#mark_btn").on("click", function(e) {
			var a_id=$("#timestamp option:selected").val();
			var m_id=$("#bookmark option:selected").val();
			e.preventDefault();
			$.ajax({
				type : "post", //�����͸� ������ ���
				url : "../bookmarkService", //���� ���� �̸�
				data : {
					"a_id" : a_id,
					"m_id" : m_id
				}, //������ ������ ������
				
				dataType : "text", //���� ������ ����
				success : function(data) {
					alert("�ϸ�ũ�� �߰��Ǿ����ϴ�.");
					$('#a_'+a_id).css('border','solid 1px '+data)
				},
				error : function() {
					alert("����")
				}
			})

		});
		// �ӽ����� ajax
		$("#temp_btn").on("click", function(e) {
			e.preventDefault();
			content = $('.summernote').summernote('code');
			data1 = content;
			$.ajax({
				type : "post", //�����͸� ������ ���
				url : "../noteDataSaveAjax", //���� ���� �̸�
				data : {
					"data1" : data1
				}, //������ ������ ������
				dataType : "text", //���� ������ ����
				success : function(data) {
					alert("�ӽ����忡 �����߽��ϴ�.")
				},
				error : function() {
					alert("����")
				}
			})

		});
		// �������� ajax
		$('form').on('submit', function(e) {

			e.preventDefault();

			content = $('.summernote').summernote('code');
			data1 = content;

			$.ajax({
				type : "post", //�����͸� ������ ���
				url : "../noteDataSaveAjax", //���� ���� �̸�
				data : {
					"data1" : data1
				}, //������ ������ ������
				dataType : "text", //���� ������ ����
				success : function(data) {
					window.location.href = "main_page.jsp";
				},
				error : function() {
					alert("����")
				}
			})

		});
		// ��� ��ư 
		$("#sum_btn").on("click", function(e) {
			if ($('#sum_div').css('display') == 'block') {
	            $('#sum_div').css('display', 'none');
	        } else {
	            $('#sum_div').css('display', 'block');
	        }
			
		});
		//��ũ��Ʈ �ٿ�ε�
		function download(filename, textInput) {

            var element = document.createElement('a');
            element.setAttribute('href','data:text/plain;charset=utf-8, ' + encodeURIComponent(textInput));
            element.setAttribute('download', filename);
            document.body.appendChild(element);
            element.click();
            //document.body.removeChild(element);
      }
      document.getElementById("download_btn")
            .addEventListener("click", function () {
            		
                  var text = document.getElementsByClassName("script");
                  var time = document.getElementsByClassName("time");
                  var total = "";
                  var filename = "��ũ��Ʈ.txt";
                  for (var i=0; i<text.length; i++) {
                	  total = total + time[i].innerHTML + "\n";
                	  for(var j=0; j<text[i].innerHTML.length;j=j+40){
                		  
          
                		  	total = total + text[i].innerHTML.substring(j,j+40) + "\n";
  
                		 
                	  }
                	  total = total + "\n";
                	}
                  download(filename, total);
            }, false);
      
      
	</script>
	<script type="text/javascript">
	//�ϸ�ũ ���� �߰�
	$("#add_mark_btn").on("click", function(e) {
		var u_id = "<%= u_id%>"; 
		var bm_text = $("#bookmark_text").val();
		var color = $("#color").val();
		$.ajax({
			type : "post", //�����͸� ������ ���
			url : "../AddBookMarkService", //���� ���� �̸�
			data : {
				"u_id" : u_id,
				"bm_text" : bm_text,
				"color" : color
			}, //������ ������ ������
			dataType : "text", //���� ������ ����
			success : function(data) {
				alert("�ϸ�ũ ������ �߰��Ǿ����ϴ�.")
				$("#bookmark").append("<option value="+data+">"+bm_text+" </option>");
			},
			error : function() {
				alert("����");
			}
		})
	});
	
	
		var myvideo = document.getElementById('myvideo');
		var sink_num = 0;
		// ��ũ��Ʈ Ŭ���� �ð��̵� �� �ϸ�ũ �ð����� �ڵ�
 		$('.script_div').click(function() {
			var id_check = $(this).attr("id").split("_");

				event.preventDefault();
				myvideo.play();
				myvideo.pause();
				myvideo.currentTime = id_check[1];
				$('#timestamp option:eq('+id_check[0]+')').prop('selected', true);
				myvideo.play();

		});
		//�ڵ���ũ�� ��
		myvideo.addEventListener('timeupdate', function(e){
			// ���� ��� �ð� (�� ���� ����)
			var playtime = Math.floor(myvideo.currentTime)+sink_num;
			// ��ü ��� �ð� (�� ���� ����)
			var total = Math.floor(myvideo.duration);
			
			
			$('#scroll_div').scrollTop(playtime/total*$('#scroll_div')[0].scrollHeight);
			}, false);
		
		function testChange(obj){
            // 'obj'�� this�� ��Ī�ϴ� ���Դϴ�.
            myvideo.play();
			myvideo.pause();
			myvideo.currentTime =  $(obj).val();
			myvideo.play();
			
        }
		//��ũ ���߱�
		$("#minus").on("click", function(e) {
			var minus_time= $("#sink_num").html().split("��")[0]-1;
			$("#sink_num").html(minus_time+"��");
			sink_num = sink_num -1;
	
		});
		$("#plus").on("click", function(e) {
			var plus_time= Number($("#sink_num").html().split("��")[0])+1;
			$("#sink_num").html(plus_time+"��");
			sink_num = sink_num +1;
	
		});
		// �ֱ������� ����Ʈ Ȯ�� 
		if(<%= (info!=null) %>){
			var currentNotes = -1;
			var u_id = "a";
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
								alert("�� ��Ʈ �߰���");
								currentNotes=data;
							} else if(currentNotes>data){
								currentNotes=data;
							}			
						}
					});
					//----------------------------------------------------------------------------------
				}, 6000000); // 30�ʿ� �ѹ��� �޾ƿ´�.
		});
		} 
	</script>
</body>
</html>