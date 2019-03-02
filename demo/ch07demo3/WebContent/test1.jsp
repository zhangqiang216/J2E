<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test1</title>
</head>
<body>
	<%
		String name = request.getParameter("userName");
		if (name == null || "".equals(name)) {
			name = "无名氏";
		}
		//application.setAttribute("onlineNum", 20);
		pageContext.setAttribute("onlineNum",20,4);
		//session.setAttribute("user", name);
		pageContext.setAttribute("user",name,3);
		//request.setAttribute("msg", "request属性内容");
		pageContext.setAttribute("msg","request属性内容",2);
		pageContext.setAttribute("key", "pageContextvalue");
	%>

	application属性：<%=application.getAttribute("onlineNum")%><br>
	session属性：<%=session.getAttribute("user")%><br> 
	request属性：<%=request.getAttribute("msg")%><br>
	pageContext属性：<%=pageContext.getAttribute("key")%><br>
	<a href="test2.jsp">test2.jsp</a>
	<br>
	<a href="test3.jsp">test3.jsp</a>
	<br>
	<a href="test4.jsp">test4.jsp</a>
	<br>
	<%
		//request.getRequestDispatcher("test2.jsp").forward(request, response);
	%>
</body>
</html>