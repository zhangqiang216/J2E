<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach items="${subBookList }" var="book">
	<p>
		${book.bookId }
		${book.bookName }
		${book.bookAuth }
		${book.bookPublisher }
		${book.bookPrice }
	</p>
	<img src="${book.bookImageUrl }" />
</c:forEach>

<c:if test="${page.currentPage != 1 }">
	<a href="BookServlet1?currentPage=${page.currentPage - 1}">上一页</a>
</c:if>
<c:if test="${page.currentPage != page.pageCount }">
	<a href="BookServlet1?currentPage=${page.currentPage + 1}">下一页</a>
</c:if>

<c:forEach begin="1" end="${page.pageCount }" var="i">
	<a href="BookServlet1?currentPage=${i}">${i }</a>
</c:forEach>
</body>
</html>