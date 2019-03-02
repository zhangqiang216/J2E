<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="a classic jsp" %>
<%@ page import="java.util.*" %>
<%!
	String getDate(){
	return (new Date()).toLocaleString();
	
}
int count=10;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
	<tr bgcolor="777777">
		<td>------------------</td>
		
	</tr>
	<%
		int i;
		String color1="99ccff";
		String color2="88cc33";
		for(i=1;i<=count;i++){
			String color="";
			if(i%2==0){
				color=color1;
			}else{
				color=color2;
			}
			out.println("<tr bgcolor='"+color+"'><td>-----------------</td></tr>");
		}
	%>
	<%=getDate() %>
</table>

</body>
</html>