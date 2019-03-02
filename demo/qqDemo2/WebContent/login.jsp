<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%
		if(session.getAttribute("userName")!=null){
			request.getRequestDispatcher("welcome.jsp").forward(request, response);	
		}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<body>
	<form action="main" method="post">
		<div style="background:#000000;font-size: 80px;text-align:center;">网上聊天室</div>
		<div style="background:#000000;font-size: 35px;text-align:center;">
			<span>用户名:</span><input type="text" name="username" style="border:1px solid #ccc; width:400px; height:40px;" >
		</div>
		<div style="background:#000000;font-size: 35px;text-align:center;">
			<span>密    码 :</span><input type="password" name="password" style="border:1px solid #ccc; width:400px; height:40px;" >
		</div>
		<div style="background:#000000;font-size: 25px;text-align:center;">
			<input type="checkbox" value="save" name="save_password">记住密码
			<input type="submit" value="登陆" name="login" style="width: 100px; height: 40px;font-size: 30px;">
			<input type="reset" value="重置" name="reset" style="width: 100px; height: 40px;font-size: 30px;">
		</div>
	</form>

</body>
</html>