<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>后台管理登录界面</title>
    <script type="text/javascript">
    	function checkEmail(){

       var  email  = document.getElementById("email").value;

       var reg = /^[a-z0-9]\w+@[a-z0-9]{2,3}(\.[a-z]{2,3}){1,2}$/i;  // .com .com.cn

       var emailspan = document.getElementById("emailspan");

       if(reg.test(email)){

           //符合规则 

           emailspan.innerHTML="正确".fontcolor("green");

           return true;

       }else{

           //不符合规则

           emailspan.innerHTML="错误".fontcolor("red");

           return false;

       }  

    }

    </script>
</head>
<body>

	<div >
    <form id="form1" action="FindPasswordServlet" method="post"  style="height:800px;width:500px;">
    <p><strong>输入您注册的电子邮箱，找回密码：</strong></p> 
	<p><input type="text" class="input" name="email" id="email" onblur="checkEmail()"><span id="emailspan"></span></p> 
	<p><input type="submit" class="btn" id="sub_btn" value="提 交"></p> 
    </form>
    </div>

    
</body>
</html>