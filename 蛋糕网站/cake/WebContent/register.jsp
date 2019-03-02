<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
	function createXMLHttpRequest() {    //创建XMLHttpRequest
	    try {
	        return new XMLHttpRequest();            //直接创建对象，不适用与IE5,IE6
	    } catch (e) {
	        try {
	            return new ActiveXObject("Msxml2.XMLHTTP");//对于不适用的，创建合适的对象
	        } catch (e) {
	            return new ActiveXObject("Microsoft.XMLHTTP");
	        }
	    }
	}
	
	function send() {
	    var xmlHttp = createXMLHttpRequest();
	
	    xmlHttp.onreadystatechange = function () {
	        if (xmlHttp.readyState === 4 && xmlHttp.status == 200) {//判断xmlHttp的状态是否完毕
	            if(xmlHttp.responseText == "true") {//判断ajax从Servlet中返回的信息，即判断用户名是否存在。 
	                document.getElementById("userId").innerHTML
	                    = "<font color='red'>用户名已被注册！</font>";      //弹出警告信息，告知不可适用该用户名
	                document.all("register").disabled=true;//将注册按钮关闭，无法点击
	            }//else {                 
	                //document.getElementById("Username_Error_Massage").innerHTML
	                    //= "账号可用!";
	                //document.all("register").disabled=false;//开启注册按钮
	            //}
	        }
	    };
	    var method = "POST";        //定义传输方式
	    var url="UserServlet?" + new Date().getTime();//定义对应的URL，为了避免浏览器的缓存造成干扰，加上时间戳
	    xmlHttp.open(method, url, true);       
	    xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	    var username = document.getElementById("username").value;
	    if(username===undefined || username === null || username === ""){   //判断用户名是否为空
	        alert("账号不能为空！");       // 弹出警告信息
	    }
	    xmlHttp.send("username=" + username);       //发送信息
	}

   

    //用户名的规则：第一位是字母，只有由数字与字母组成，6位。

    function checkName(){
    	//AJAX验证用户名是否存在
    	send();
       //获取到了用户名的值

       var userName = document.getElementById("username").value;

       var userSpan = document.getElementById("userId");

       var reg = /^[a-z][a-z0-9]{5,11}$/i;

       if(reg.test(userName)){

           //符合规则 

           userSpan.innerHTML="正确".fontcolor("green");

           return true;

       }else{

           //不符合规则

           userSpan.innerHTML="密码必须以字母开头的数字与字母组合，长度6~12".fontcolor("red");

           return false;

       }  

    }

   

   

    //校验密码  6位

    function checkPass(){

       var  password  = document.getElementById("pwd").value;

       if(password.length>0){

           var reg = /^\w{6,}$/;

           var passSPan = document.getElementById("passId");

           if(reg.test(password)){

              //符合规则 

              passSPan.innerHTML="正确".fontcolor("green");

              return true;

           }else{

              //不符合规则

              passSPan.innerHTML="密码至少6位数字".fontcolor("red");

              return false;

           }

       }

      

    }

   

   

    //检验密码是否正确

    function ensurepass(){

       var  password1 = document.getElementById("pwd").value; //第一次输入的密码

       var password2 = document.getElementById("ensurepwd").value;

       if(password2.length>0){

           var enSpan  = document.getElementById("ensure");

           if(password1.valueOf()==password2.valueOf()){

              enSpan.innerHTML="正确".fontcolor("green");

              return true;

           }else{

              enSpan.innerHTML="两次密码不一致".fontcolor("red");

              return false;

           }  

       }

    }

   

   

    //校验邮箱

    <%--function checkEmail(){

       var  email  = document.getElementById("email").value;

       var reg = /^[a-z0-9]\w+@[a-z0-9]{2,3}(\.[a-z]{2,3}){1,2}$/i;  // .com .com.cn

       var emailspan = document.getElementById("emailspan");

       alert(reg.test(email));

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

   

   

    //校验兴趣爱好：至少要算中其中的一个。

    function checkHoby(){

       var likes  = document.getElementsByName("like");

       var hobySpan =document.getElementById("hobbySpan")

       var flag  = false;

       for(var i =  0 ; i<likes.length ; i++){

           if(likes[i].checked){

              flag =true;

              break;

           }  

       }

 

       if(flag){

           //符合规则 

           hobySpan.innerHTML="正确".fontcolor("green");

           return true;

       }else{

           //不符合规则

           hobySpan.innerHTML="错误".fontcolor("red");

           return false;

       }  

    }--%>

   

   

   

    //总体校验表单是否可以提交了 如果返回的true表单才可以提交。上面的表单项必须要每个都填写正确。

    function checkForm(){

       var userName = checkName();

       var pass  = checkPass();

       var ensure  = ensurepass();

       var email = checkEmail();

       var hoby = checkHoby();

       if(userName&&pass&&ensure&&email&&hoby){

           return true;

       }else{

           return false;

       }

      

    }
</script>
<title>Home</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<!-- js -->
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //js -->	
<!-- cart -->
<script src="js/simpleCart.min.js"> </script>
<!-- cart -->
</head>
<body>
<body>
<jsp:include page="header.jsp" flush="true" />
<h2 align="center">注册</h2>     

<form action="RegisterServlet" method="post" onsubmit="return checkForm()"> <!--如果表单提交时候触发的方法返回是false,那么该表单不允许提交，如果返回的是true允许提交 -->

           <table border="2px" width="40%" align="center" cellspacing="0px" cellpadding="3px">

              <tr>

                  <td width="25%" height="40px">姓名:</td>

                  <td height="40px">

                     <input type="text" name="username" id="username" onblur="checkName()"/>

                        <span id="userId"></span>

                  </td>

              </tr>

              <tr>

                  <td height="40px">密码:</td><td>

                     <input type="password"  name="pwd" id="pwd" onblur="checkPass()"/>

                        <span id="passId"></span>

                  </td>

              </tr>

              <tr>

                  <td height="40px">确认密码:</td><td>

              <input type="password" name="ensurepwd" id="ensurepwd" onblur="ensurepass()" />                    <span id="ensure"></span>

                  </td>

              </tr>

              <tr>

                  <td height="40px">邮箱</td><td>

                     <input type="text" name="email" id="email" onblur="checkEmail()"/>

                      <span id="emailspan"></span>

                     

                  </td>

              </tr>
              
              <tr>

                  <td width="25%" height="40px">电话:</td>

                  <td height="40px">

                     <input type="text" name="telephone" id="telephone" "/>

                        <span id="telspan"></span>

                  </td>

              </tr>

              <tr>

                  <td height="40px">性别</td><td>

                     <input type="radio" checked="ture" name="gender" id="male" value="male"/>

                  男

                      <input type="radio" name="gender" value="female"/>

 

                  女</td>

              </tr>

               

              <tr>

                  <td height="40px">爱好:</td><td>

                     <input type="checkbox" checked="checked"  name="like" />

                  eat

                     <input type="checkbox" name="like" />

                  sleep

                     <input type="checkbox" name="like"/>

                  play 

                    <span id="hobbySpan"></span>

                    </td>

              </tr>

              <tr>

                  <td height="40px">城市</td><td>

                  <select name="city" id="city">

                     <option value=""> 请选择</option>

                     <option value="bj">北京 </option>

                     <option value="gz">广州 </option>

                     <option value="sh">上海 </option>

                  </select>

                   

                    </td>

              </tr>

              <tr>

                  <td>自我介绍</td><td>                <textarea cols="15" rows="5"  name="myInfo" id="myInfo"></textarea></td>

              </tr>

              <tr align="center">

                  <td colspan="2"><!--提交按钮-->

                  <input type="submit"/>

                  </td>

              </tr>

           </table>

       </form>








<jsp:include page="footer.jsp" flush="true" />
</body>
</html>