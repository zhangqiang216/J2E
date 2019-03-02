<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
   <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
 <base href="<%=basePath%>">
    
    <title>网上聊天室</title>
    
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">    
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="content-type" content="text/html; charset=gb2312">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->

</head>
	<frameset rows="100,*" cols="*" frameborder="no" border="0" framespacing="0">
        <frame src="header.jsp" name="topFrame" scrolling="auto" noresize="noresize" id="topFrame"/>
      <frameset cols="213,*" frameborder="no" border="0" framespacing="0">
        <frame src="left.jsp" name="leftFrame" scrolling="No" noresize="noresize" id="leftFrame"/>
        <frame src="main.jsp" name="mainFrame" scrolling="auto" id="mainFrame"/>
         <frame src="right.jsp" name="rightFrame" scrolling="auto" id="rightFrame"/>
      </frameset>
    
   </frameset> 
<body>

</body>
</html>