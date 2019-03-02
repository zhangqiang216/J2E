<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312" pageEncoding="gb2312"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 
  </head>
  
  <body topmargin="0" leftmargin="0" rightmargin="0">
     <form action="">
             <table  width="100%" height="79" border="0" cellpadding="0"
                     cellspacing="0" align=center>
             <tr>
                <td bgcolor="F9A859" valign="top">
                <table width="100%" height="50" border="0" align="center"
                       cellpadding="0" cellspacing="0" bgcolor="FBEAD0">
                 <tr>
                   <td align="center" style="font-size:40px;">
                     网上聊天室
                   </td>
                 </tr> 
                
                </table>
                
                </td>
             </tr>
               <tr>
                 <td bgcolor="F9A859" valign="top">
                 <table width="100%" border="0" align="center" cellpadding="0"
                         cellspacing="0">
                  <tr>
                     <td align="center" style="font-size:20px" valign="middle">
                     欢迎<%=(String)request.getSession().getAttribute("nameSession") %>访问!
                     当前在线人数为<%=application.getAttribute("peopleOnline")%>人
                     </td>
                  </tr>       
                 
                 </table>
                 
                 </td>
              </tr>              
             
             </table>
           </form>
  </body>
</html>
