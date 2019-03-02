<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="s1" class="bean.StudentBean" scope="session"></jsp:useBean>
<jsp:setProperty property="stuNo" name="s1" value="zhangsan"/><%--如果请求参数有stuNo,自动赋值 --%>
<%--获取并打印 --%>
<jsp:getProperty property="StuNo" name="s1">

</body>
</html>