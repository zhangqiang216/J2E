<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(session.getAttribute("user")!=null){
			response.sendRedirect("ProductList.jsp");
	}else {
		if(request.getAttribute("msg")!=null) {
			String msg=(String) request.getAttribute("msg");
			%>
			<font color='red'><%=msg %></font><br>
			<% 
		}
	%>
		<form action="LoginCheckServlet">
		用户名:<input type="text" name="userName"><br> 
		密码:<input type="password" name="password"><br> 
		<input type="checkbox" name="autologin">7天内自动登录 
		<input type="submit" value="登录"> 
		</form>	
	<% 
	}
%>
</body>
</html>