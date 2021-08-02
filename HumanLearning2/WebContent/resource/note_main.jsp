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

    <main style="  margin-left: 25%;">

        <div id="" style="font-family: 'Dovemayo Medium'; width: 65%;">
            <div>
                <form>
                    <fieldset>
                    <legend>
                      <div class="card mb-3 row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250">
                      <div class="col p-4 d-flex flex-column position-static"  >
                        <h3 class="card-header" style="font-family: 'Dovemayo Medium';">User���� ��Ʈ</h3>
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
            <div class="accordion" id="accordionExample">
                <div class="accordion-item">
                  <h2 class="accordion-header" id="headingOne">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne"style="font-family: 'Dovemayo Medium';">
                        �Ѵɰ�
                      </button>
                  </h2>
                  <div id="collapseOne" class="accordion-collapse collapse">
                    <div class="accordion-body">
                        <table class="table table-hover" style="font-family: 'Dovemayo Medium';">
                            <thead>
                              <tr>
                                <th scope="col">��Ʈ �̸�</th>
                                <th scope="col">���� ��������</th>
                                <th scope="col">��Ʈ �ۼ���</th>
                                <th scope="col">��Ʈ ����</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr class="table-warning">
                                <th scope="row">�ѱ��� ��Ʈ1</th>
                                <td>54ȸ �Ѵɰ� D-7, 7���� ���� �����ڹ� 1TV</td>
                                <td>21.07.31</td>
                                <td><button class="btn rounded btn-outline-danger">X</button></td>
                              </tr>
                              <tr class="table-warning">
                                <th scope="row">�ѱ��� ��Ʈ2</th>
                                <td>54ȸ �Ѵɰ� D-7, 7���� ���� �����ڹ� 1TV</td>
                                <td>21.07.31</td>
                                <td><button class="btn rounded btn-outline-danger">X</button></td>
                              </tr>
                              <tr class="table-warning">
                                <th scope="row">�ѱ��� ��Ʈ3</th>
                                <td>54ȸ �Ѵɰ� D-7, 7���� ���� �����ڹ� 1TV</td>
                                <td>21.07.31</td>
                                <td><button class="btn rounded btn-outline-danger">X</button></td>
                              </tr>
                              <tr class="table-warning">
                                <th scope="row">�ѱ��� ��Ʈ4</th>
                                <td>54ȸ �Ѵɰ� D-7, 7���� ���� �����ڹ� 1TV</td>
                                <td>21.07.31</td>
                                <td><button class="btn rounded btn-outline-danger">X</button></td>
                              </tr>
                            </tbody>
                          </table>
                    </div>
                  </div>
                </div>
                <div class="accordion-item">
                  <h2 class="accordion-header" id="headingTwo">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" style="font-family: 'Dovemayo Medium';">
                      �Ѵɰ�
                    </button>
                  </h2>
                  <div id="collapseTwo" class="accordion-collapse collapse">
                    <div class="accordion-body">
                        <table class="table table-hover" style="font-family: 'Dovemayo Medium';">
                            <thead>
                                <tr>
                                  <th scope="col">��Ʈ �̸�</th>
                                  <th scope="col">���� ��������</th>
                                  <th scope="col">��Ʈ �ۼ���</th>
                                  <th scope="col">��Ʈ ����</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr class="table-warning">
                                  <th scope="row">�ѱ��� ��Ʈ1</th>
                                  <td>54ȸ �Ѵɰ� D-7, 7���� ���� �����ڹ� 1TV</td>
                                  <td>21.07.31</td>
                                  <td><button class="btn rounded btn-outline-danger">X</button></td>
                                </tr>
                                <tr class="table-warning">
                                  <th scope="row">�ѱ��� ��Ʈ2</th>
                                  <td>54ȸ �Ѵɰ� D-7, 7���� ���� �����ڹ� 1TV</td>
                                  <td>21.07.31</td>
                                  <td><button class="btn rounded btn-outline-danger">X</button></td>
                                </tr>
                                <tr class="table-warning">
                                  <th scope="row">�ѱ��� ��Ʈ3</th>
                                  <td>54ȸ �Ѵɰ� D-7, 7���� ���� �����ڹ� 1TV</td>
                                  <td>21.07.31</td>
                                  <td><button class="btn rounded btn-outline-danger">X</button></td>
                                </tr>
                                <tr class="table-warning">
                                  <th scope="row">�ѱ��� ��Ʈ4</th>
                                  <td>54ȸ �Ѵɰ� D-7, 7���� ���� �����ڹ� 1TV</td>
                                  <td>21.07.31</td>
                                  <td><button class="btn rounded btn-outline-danger">X</button></td>
                                </tr>
                              </tbody>
                          </table>
                    </div>
                  </div>
                </div>
                <div class="accordion-item">
                  <h2 class="accordion-header" id="headingThree">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree"style="font-family: 'Dovemayo Medium';">
                        �Ѵɰ�
                      </button>
                  </h2>
                  <div id="collapseThree" class="accordion-collapse collapse">
                    <div class="accordion-body">
                        <table class="table table-hover" style="font-family: 'Dovemayo Medium';">
                            <thead>
                                <tr>
                                  <th scope="col">��Ʈ �̸�</th>
                                  <th scope="col">���� ��������</th>
                                  <th scope="col">��Ʈ �ۼ���</th>
                                  <th scope="col">��Ʈ ����</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr class="table-warning">
                                  <th scope="row">�ѱ��� ��Ʈ1</th>
                                  <td>54ȸ �Ѵɰ� D-7, 7���� ���� �����ڹ� 1TV</td>
                                  <td>21.07.31</td>
                                  <td><button class="btn rounded btn-outline-danger">X</button></td>
                                </tr>
                                <tr class="table-warning">
                                  <th scope="row">�ѱ��� ��Ʈ2</th>
                                  <td>54ȸ �Ѵɰ� D-7, 7���� ���� �����ڹ� 1TV</td>
                                  <td>21.07.31</td>
                                  <td><button class="btn rounded btn-outline-danger">X</button></td>
                                </tr>
                                <tr class="table-warning">
                                  <th scope="row">�ѱ��� ��Ʈ3</th>
                                  <td>54ȸ �Ѵɰ� D-7, 7���� ���� �����ڹ� 1TV</td>
                                  <td>21.07.31</td>
                                  <td><button class="btn rounded btn-outline-danger">X</button></td>
                                </tr>
                                <tr class="table-warning">
                                  <th scope="row">�ѱ��� ��Ʈ4</th>
                                  <td>54ȸ �Ѵɰ� D-7, 7���� ���� �����ڹ� 1TV</td>
                                  <td>21.07.31</td>
                                  <td><button class="btn rounded btn-outline-danger">X</button></td>
                                </tr>
                              </tbody>
                          </table>
                    </div>
                  </div>
                </div>
              </div>
    </main>
	
</body>

<script src="js/bootstrap.js"></script>
</html>