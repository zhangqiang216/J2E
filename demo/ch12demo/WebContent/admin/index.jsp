<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
index.jsp<br>
request.getContextPath(); 为 /ch12demo
<a href="/ch12demo1/Aservlet/a">Aservlet</a>
<a href="Aservlet/a">Aservlet</a>X
<a href="/Aservlet/a">Aservlet</a>X 根
<a href="<%=request.getContextPath() %>Aservlet/a">Aservlet</a>
</body>
</html>