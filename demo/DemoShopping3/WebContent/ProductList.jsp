<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Bean.UserBean" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Object object=session.getAttribute("user");

if(object==null) {
	%>
	未登录<a href='LoginPage.jsp'>去登陆</a><br>
	<%
}else {
	UserBean user=(UserBean)session.getAttribute("user");
	String userName=user.getName();
	%>
	登录人<%=userName %><a href='zhuxiao'>注销</a>
	<% 
}

Object onlineNumObj=application.getAttribute("onlineNum");
if(onlineNumObj==null) {
	%>
	当前在线人数：0
	<% 
}else {
	%>
	当前在线人数：<%=onlineNumObj %>
	<%
}
Object vipNumObj=application.getAttribute("vipNum");
if(vipNumObj==null) {
	%>
	当前在线会员数：0
	<% 
}else {
	%>
	当前在线会员数：<%=vipNumObj %>
	<% 
}
%>
JavaEE指南<a href="AddShoppingCartServlet?bookname=JavaEE">加入购物车</a><br>
JavaSE指南<a href="AddShoppingCartServlet?bookname=JavaSE">加入购物车</a><br>
安卓开发指南<a href="AddShoppingCartServlet?bookname=Androd">加入购物车</a><br>
<a href="ShowShoppingCart.jsp">查看购物车</a><br>
</body>
</html>