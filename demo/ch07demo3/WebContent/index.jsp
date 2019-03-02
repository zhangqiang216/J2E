<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
index.jsp<br>
	<%
		//request.getRequestDispatcher("test.jsp").forward(request,response);
	%>
	<%
		//application.setAttribute("onlineNum",20);
		pageContext.setAttribute("onlineNum",20,4);
		String userName = request.getParameter("userName");
		if(userName == null || "".equals(userName)){
			userName = "无名氏";
		}
		//session.setAttribute("userName", userName);
		pageContext.setAttribute("userName", userName,3);
		//request.setAttribute("reqkey","reqvalue");
		pageContext.setAttribute("reqkey", "reqvalue",2);
		pageContext.setAttribute("key","value",1);
	%>
	<%=application.getAttribute("onlineNum") %><br>
	<%=session.getAttribute("userName") %><br>
	<%=pageContext.getAttribute("key") %><br>
</body>
</html>