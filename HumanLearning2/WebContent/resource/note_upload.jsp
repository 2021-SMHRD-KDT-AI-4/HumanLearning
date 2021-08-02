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
        </style>
    
        
        <!-- Custom styles for this template -->
        <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="blog.css" rel="stylesheet">
	
</head>
<body>
	
	<!--  �׺�� ���� -->
    <div class="container">
      <header class="blog-header py-3">
        <div class="row flex-nowrap justify-content-between align-items-center">
          <div class="col-4 pt-1">
            <a href="./My_page.html"><img src="./icon/user_B.png" style="align: center; width: 40px; height: 40px;"></a>
          </div>
          <div class="col-4 text-center">
            <a class="blog-header-logo text-dark" href="./Main_page.html" style="font-size: 30px; font-family: 'Dovemayo Medium';">�ϰ����</a>
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
    <!-- �׺�� ���� -->
    <br>
    <br>
    <br>
    <br>
    <main class="container">
        <div class="p-4 p-md-5 mb-4 text-white rounded bg-dark" >
          <div class="col-md-6 px-0" style="text-align: center; margin-right: auto; margin-left: auto;">
            <h1 class="display-4 fst-italic" style="font-family: 'Dovemayo Medium';">����Ʈ ����</h1>
            <br>
            <br>
            <form action="" method="POST" style="align-items: center;">
                <div>
                    <p class="lead my-3" style=" font-size: 25px; font-family: 'Dovemayo Medium';">���ε� �� ������ Ű���带 �Է��ϼ���.</p>
                    <input type="text" class="form-control" placeholder="Ű���� �Է�" style="width: 30%;font-family: 'Dovemayo Medium'; position: fixed;">
                    <input type="submit" value="�Է�" class="btn btn-warning" style="font-family: 'Dovemayo Medium'; position: absolute; top: auto; left: 65%;">
                </div>
                <br>
                <br>
                <br>
                <div>
                    <p class="lead my-3" style=" font-size: 25px; font-family: 'Dovemayo Medium';">���� ���� ���ε�</p>
                    <input type="file" class="form-control" placeholder="Ű���� �Է�" style="width: 30%;font-family: 'Dovemayo Medium'; position: fixed;">
                    <input type="submit" value="��Ʈ ����" class="btn btn-warning" style="font-family: 'Dovemayo Medium'; position: absolute; top: auto; left: 65%;">
                </div>
                <br>
                <br>
            </form>
          </div>
        </div>
    </main>        
	
</body>
</html>