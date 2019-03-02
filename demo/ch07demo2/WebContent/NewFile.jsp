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
	String name="zhangsan";
	for(int i=0;i<100;i++){
		
	}
	if(name.equals("")){
		
	}
%>
<%!
	int count=0;
	String[] colors={"red","green","yellow"};
	public String getColor(int index){
		return colors[index];
	}
	
%>
<%--<jsp:useBean id="zhangsan" class=""/> --%>
<%=name %>

</body>
</html>