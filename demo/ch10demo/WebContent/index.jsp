<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,bean.UserBean"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:catch var="e">
		<%
			int i=2/0;
		%>
	</c:catch>
	<c:out value="${e }" default="无"></c:out>
	<c:out value="${str }" default="空"></c:out>
	<h1>c:set</h1><br>
	<c:set var="num" value="16"></c:set>
	<c:set var="num2" scope="session">17</c:set>
	<c:out value="${num }"></c:out><br>
	<c:out value="${num2 }"></c:out><br>
	<jsp:useBean id="user" class="bean.UserBean"></jsp:useBean>
	<c:set target="${user }" property="name" value="张三"></c:set>
	<c:set target="${user }" property="gender" value="true"></c:set>
	<c:set target="${user }" property="age" value="6"></c:set>
	<c:set target="${user }" property="limit" value="4"></c:set>
	<br>姓名：<c:out value="${user.name }"></c:out>
	<h1>c:remove</h1>
	<c:remove var="num2" scope="session"></c:remove>
	<c:out value="${num2 }" default="空2"></c:out>
	<h1>c:if</h1>
	性别：<c:if test="${user.gender==true }">男</c:if> 
	<c:if test="${user.gender==false }">女</c:if>
	<br>角色
	<c:choose>
		<c:when test="${user.limit==1 }">超级管理员</c:when>
		<c:when test="${user.limit==2 }">普通管理员</c:when>
		<c:when test="${user.limit==3 }">版主</c:when>
		<c:when test="${user.limit==4 }">会员</c:when>
		<c:otherwise>游客</c:otherwise>
	</c:choose>
	<h1>c:forEach</h1>
	<c:forEach begin="1" end="5" var="i" step="2">
		大学生${i }
	</c:forEach>
	<%
		List<UserBean> userList=new ArrayList<>();
		for(int i=0;i<10;i++){
			UserBean u=new UserBean();
			u.setName("zhang"+i);
			if(i%2==0){
				u.setGender(true);
				
			}else{
				u.setGender(false);
			}
			u.setAge(6+i*2);
			if(i<=5){
				u.setLimit(i);
			}else{
				u.setLimit(i-5);
			}
			userList.add(u);
		}
		application.setAttribute("userList",userList);
		
	%>
	<c:forEach items="${userList }" var="u" varStatus="status">
		<br>
		index:${status.index }<br><%--0 1 2 --%>
		count:${status.count }<br><%--1 2 3 --%>
		first:${status.first }<br><%--true false --%>
		last:${status.last }<br>
		<p>
			${u.name }
			<c:if test="${u.gender==true }">男</c:if>
			<c:if test="${u.gender==false }">女</c:if>
			${u.age }
			<c:choose>
				<c:when test="${user.limit==1 }">超级管理员</c:when>
				<c:when test="${user.limit==2 }">普通管理员</c:when>
				<c:when test="${user.limit==3 }">版主</c:when>
				<c:when test="${user.limit==4 }">会员</c:when>
				<c:otherwise>游客</c:otherwise>
			</c:choose>
			
		</p>
	</c:forEach>
	<h1>c:forTokens</h1>
	<c:forTokens items="12,34,56,22,11" delims="," var="va">
		${va }
	</c:forTokens>
	<h1>九九乘法表</h1>
	<c:forEach begin="1" end="9" step="1" var="i">
		<c:forEach begin="1" end="${i }" step="1" var="j">
		<c:out value="${i}X${j}=" />
		<c:out value="${i*j}" />
	</c:forEach>
	<br>
	</c:forEach>
	

</body>
</html>