<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.lang.*"%>
<%@ taglib uri="/Functions" prefix="el" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%String temp5="333"; 
pageContext.setAttribute("temp5",temp5);
//empty null "" %>
今天的温度是<%=request.getParameter("temp") %> <br>
${not empty temp4 } <br>
${temp5 }<br>
${1+2 } <br>
${1}+${2 } <br>
${param.temp } <br>
${15 mod 2 } <br>
${el:upper("ndldld")}<br>
\${1 &gt;2 }<br>
${1 gt 2 }<br>
${1>2 }<br>
${el:length("fffkks") }<br>
${el:Sum(4,5) }<br>


</body>
</html>