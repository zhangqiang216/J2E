<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <style type="text/css">
        *
        {
            margin: 0;
            padding: 0;
        }
        body
        {
            font-size: 15px;
            padding: 00px;
        }
        .menu
        {
            width: 500px;
            border-bottom: solid 1px gray;
        }
	</style>
 
</head>
  <body >

  <div class="menu">
 <textarea  cols="105" rows="25" name="show_textarea"><%=request.getAttribute("users")%></textarea>
  </div>
  </body>
</html>