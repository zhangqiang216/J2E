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
	String temp="16";
	//pageContext.setAttribute("temp4",19);
%>
<jsp:forward page="test.jsp">
	<jsp:param value="<%=temp %>" name="temp"/>
</jsp:forward>




</body>
</html>