<%@page import="com.db.ConnectDB"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
   ConnectDB connectDB = ConnectDB.getInstance();
	
   String id = request.getParameter("id");
   String pw = request.getParameter("pw");
	
   String returns = connectDB.connectionDB(id, pw);

   System.out.println(returns);

   // 안드로이드로 전송
   out.println(returns);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html> 