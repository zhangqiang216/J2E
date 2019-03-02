<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
你好
<% 
out.print(request.getContextPath());
out.print(request.getServletPath());
out.print(request.getPathInfo());
%>
</body>
</html>