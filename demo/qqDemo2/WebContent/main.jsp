<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
  
  <body>
  <form action="InputInformation" method=post>
  <textarea  cols="105" rows="25" name="show_textarea"><%=request.getAttribute("input_textarea")%></textarea>
  <br>
  <textarea  cols="105" rows="5"  name="input_textarea"></textarea><br>
  <input type="submit" value="发送" name="button_one" 
  style="width: 100px; height: 40px;font-size: 25px;"><br>
  </form>
  </body>
</html>