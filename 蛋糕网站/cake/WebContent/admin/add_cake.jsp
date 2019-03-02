<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
response.setContentType("text/html;charset=utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>主要内容区main</title>
<link href="css/css.css" type="text/css" rel="stylesheet" />
<link href="css/main.css" type="text/css" rel="stylesheet" />
<link rel="shortcut icon" href="images/main/favicon.ico" />
<style>
body{overflow-x:hidden; background:#f2f0f5; padding:15px 0px 10px 5px;}
#searchmain{ font-size:12px;}
#search{ font-size:12px; background:#548fc9; margin:10px 10px 0 0; display:inline; width:100%; color:#FFF}
#search form span{height:40px; line-height:40px; padding:0 0px 0 10px; float:left;}
#search form input.text-word{height:24px; line-height:24px; width:180px; margin:8px 0 6px 0; padding:0 0px 0 10px; float:left; border:1px solid #FFF;}
#search form input.text-but{height:24px; line-height:24px; width:55px; background:url(images/main/list_input.jpg) no-repeat left top; border:none; cursor:pointer; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; color:#666; float:left; margin:8px 0 0 6px; display:inline;}
#search a.add{ background:url(images/main/add.jpg) no-repeat 0px 6px; padding:0 10px 0 26px; height:40px; line-height:40px; font-size:14px; font-weight:bold; color:#FFF}
#search a:hover.add{ text-decoration:underline; color:#d2e9ff;}
#main-tab{ border:1px solid #eaeaea; background:#FFF; font-size:12px;}
#main-tab th{ font-size:12px; background:url(images/main/list_bg.jpg) repeat-x; height:32px; line-height:32px;}
#main-tab td{ font-size:12px; line-height:40px;}
#main-tab td a{ font-size:12px; color:#548fc9;}
#main-tab td a:hover{color:#565656; text-decoration:underline;}
.bordertop{ border-top:1px solid #ebebeb}
.borderright{ border-right:1px solid #ebebeb}
.borderbottom{ border-bottom:1px solid #ebebeb}
.borderleft{ border-left:1px solid #ebebeb}
.gray{ color:#dbdbdb;}
td.fenye{ padding:10px 0 0 0; text-align:right;}
.bggray{ background:#f9f9f9; font-size:14px; font-weight:bold; padding:10px 10px 10px 0; width:120px;}
.main-for{ padding:10px;}
.main-for input.text-word{ width:310px; height:36px; line-height:36px; border:#ebebeb 1px solid; background:#FFF; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; padding:0 10px;}
.main-for select{ width:310px; height:36px; line-height:36px; border:#ebebeb 1px solid; background:#FFF; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; color:#666;}
.main-for input.text-but{ width:100px; height:40px; line-height:30px; border: 1px solid #cdcdcd; background:#e6e6e6; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; color:#969696; float:left; margin:0 10px 0 0; display:inline; cursor:pointer; font-size:14px; font-weight:bold;}
#addinfo a{ font-size:14px; font-weight:bold; background:url(images/main/addinfoblack.jpg) no-repeat 0 1px; padding:0px 0 0px 20px; line-height:45px;}
#addinfo a:hover{ background:url(images/main/addinfoblue.jpg) no-repeat 0 1px;}
</style>
</head>
<body>
<!--main_top-->
<table width="99%" border="0" cellspacing="0" cellpadding="0" id="searchmain">
  <tr>
    <td width="99%" align="left" valign="top">您的位置：产品管理&nbsp;&nbsp;>&nbsp;&nbsp;添加蛋糕</td>
  </tr>
  <tr>
    <td align="left" valign="top" id="addinfo">
    <a href="add.html" target="mainFrame" onFocus="this.blur()" class="add">新增蛋糕</a>
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
    <form method="post" action="<%=request.getContextPath()%>/OperateCakeServlet?remark=1" enctype="multipart/form-data">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" id="main-tab">
      <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
        <td align="right" valign="middle" class="borderright borderbottom bggray">蛋糕名：</td>
        <td align="left" valign="middle" class="borderright borderbottom main-for">
        <input type="text" name="name"  class="text-word">
        </td>
        </tr>
      <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
        <td align="right" valign="middle" class="borderright borderbottom bggray">蛋糕图片：</td>
        <td align="left" valign="middle" class="borderright borderbottom main-for">
        <input type="file" name="file1"  class="text-word">
        </td>
        </tr>
      <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
        <td align="right" valign="middle" class="borderright borderbottom bggray">蛋糕价格($)：</td>
        <td align="left" valign="middle" class="borderright borderbottom main-for">
        <input type="text" name="price"  class="text-word">
        </td>
      </tr>
      <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
        <td align="right" valign="middle" class="borderright borderbottom bggray">折扣（%）：</td>
        <td align="left" valign="middle" class="borderright borderbottom main-for">
        <input type="text" name="discount"  class="text-word">
        </td>
      </tr>
      <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
        <td align="right" valign="middle" class="borderright borderbottom bggray">蛋糕type：</td>
        <td align="left" valign="middle" class="borderright borderbottom main-for">
        <select name="type" id="level">
	    <option value="牛奶蛋糕" >&nbsp;&nbsp;牛奶蛋糕</option>
	    <option value="扭转四层" >&nbsp;&nbsp;扭转四层</option>
	    <option value="水果蛋糕" >&nbsp;&nbsp;水果蛋糕</option>
	    <option value="美味蛋糕" >&nbsp;&nbsp;美味蛋糕</option>
	    <option value="好看蛋糕" >&nbsp;&nbsp;好看蛋糕</option>
	    <option value="椰子蛋糕" >&nbsp;&nbsp;椰子蛋糕</option>
        </select>
        </td>
      </tr>
      <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
        <td align="right" valign="middle" class="borderright borderbottom bggray">蛋糕style：</td>
        <td align="left" valign="middle" class="borderright borderbottom main-for">
        <select name="style" id="level">
	    <option value="巧克力" >&nbsp;&nbsp;巧克力</option>
	    <option value="香草" >&nbsp;&nbsp;香草</option>
	    <option value="蜜糖" >&nbsp;&nbsp;蜜糖</option>
	    <option value="混合水果" >&nbsp;&nbsp;混合水果</option>
	    <option value="奶油" >&nbsp;&nbsp;奶油</option>
	    
        </select>
        </td>
      </tr>
      <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
        <td align="right" valign="middle" class="borderright borderbottom bggray">蛋糕规格：</td>
        <td align="left" valign="middle" class="borderright borderbottom main-for">
        <select name="size" id="level">
	    <option value="1.0" >&nbsp;&nbsp;1.0kg</option>
	    <option value="1.5" >&nbsp;&nbsp;1.5kg</option>
	    <option value="2.0" >&nbsp;&nbsp;2.0kg</option>
	    <option value="2.5" >&nbsp;&nbsp;2.5kg</option>
	    <option value="3.0" >&nbsp;&nbsp;3.0kg</option>
	    
        </select>
        </td>
      </tr>
      <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
        <td align="right" valign="middle" class="borderright borderbottom bggray">蛋糕颜色：</td>
        <td align="left" valign="middle" class="borderright borderbottom main-for">
        <select name="color" id="level">
	    <option value="白" >&nbsp;&nbsp;白</option>
	    <option value="褐" >&nbsp;&nbsp;褐</option>
	    <option value="彩" >&nbsp;&nbsp;彩</option>
	    <option value="粉" >&nbsp;&nbsp;粉</option>
	   
	    
        </select>
        </td>
      </tr>
      <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
        <td align="right" valign="middle" class="borderright borderbottom bggray">蛋糕形状：</td>
        <td align="left" valign="middle" class="borderright borderbottom main-for">
        <select name="shape" id="level">
	    <option value="圆形" >&nbsp;&nbsp;圆形</option>
	    <option value="方形" >&nbsp;&nbsp;方形</option>
	    <option value="2-3层蛋糕" >&nbsp;&nbsp;2-3层蛋糕</option>
	    <option value="心形" >&nbsp;&nbsp;心形</option>
	    <option value="卡通蛋糕" >&nbsp;&nbsp;卡通蛋糕</option>
	    
        </select>
        </td>
      </tr>
      
      <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
        <td align="right" valign="middle" class="borderright borderbottom bggray">&nbsp;</td>
        <td align="left" valign="middle" class="borderright borderbottom main-for">
        <input name="tj" type="submit" value="提交" class="text-but">
        <input name="cz" type="reset" value="重置" class="text-but"></td>
        </tr>
    </table>
    </form>
    </td>
    </tr>
</table>
</body>
</html>
</body>
</html>