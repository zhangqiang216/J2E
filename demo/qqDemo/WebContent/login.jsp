<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
    <%
    	String path=request.getContextPath();
    	String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    	String username="";
    	String password="";
    	Cookie[] cookies=request.getCookies();
    	if(cookies!=null){
    		for(int i=0;i<cookies.length;i++){
    			if("username".equals(cookies[i].getName())){
    				username=cookies[i].getValue();
    			}
    		}
    	}
    
    %>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
    <title>网上聊天室登陆页面</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">    
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <style type="text/css">
        *
        {
            margin: 0;
            padding: 0;
        }
        body
        {
            
            font-size: 0px;
            padding: 200px;
           
            
        }
        
    </style>
  </head>


</head>
<body>
	<form action="Main" method="post">
		<div style="background:#49AFFF;font-size: 80px;text-align:center;">网上聊天室</div>
		<div style="background:#75FFE7;font-size: 35px;text-align:center;">
			<span>用户名:</span><input type="text" name="username" value="<%=username%>" style="border:1px solid #ccc; width:400px; height:40px;" >
		</div>
		<div style="background:#75FFE7;font-size: 35px;text-align:center;">
			<span>密    码 :</span><input type="password" name="password" value="<%=password%>" style="border:1px solid #ccc; width:400px; height:40px;" >
		</div>
		<div style="background:#75FFE7;font-size: 25px;text-align:center;">
			<input type="checkbox" value="save" name="save_password">记住密码
			<input type="submit" value="登陆" name="login" style="width: 100px; height: 40px;font-size: 30px;">
			<input type="reset" value="重置" name="reset" style="width: 100px; height: 40px;font-size: 30px;">
		</div>
	</form>
</body>

</body>
</html>