<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Checkout</title>
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
<jsp:include page="header.jsp" flush="true" />
<!--cart-items-->
	<div class="cart-items">
		<div class="container">
			<h2>My Shopping Cart</h2>
			<c:forEach items="${cartDetailList }" var="cartDetail">
			<%-- 
			<script>$(document).ready(function(c) {
				$('.close1').on('click', function(c){
					$('.cart-header').fadeOut('slow', function(c){
						$('.cart-header').remove();
					});
					});	  
				});
			</script>
			--%>
			
			<div class="cart-header">
				<div class="close1"> </div>
				<div class="cart-sec simpleCart_shelfItem">
					<div class="cart-item cyc">
						 <img src="${cartDetail.cake.cakeImageUrl }" class="img-responsive" alt="">
					</div>
					<div class="cart-item-info">
						<h3><a href="#"> ${cartDetail.cake.cakeName } </a><span>Price: ${cartDetail.cake.cakePrice }</span></h3>
						<ul class="qty">
							<li><p>数量： ${cartDetail.count }</p></li>
							<li><p>规格：${cartDetail.cake.cakeSize }Kg</p></li>
						</ul>
						<div class="delivery">
							<p>运费 : $10.00</p>
							<span>Delivered in 1-1:30 hours</span>
							<div class="clearfix"></div>
							<a href="MakeShoppingCartServlet?remark=delete&cakeId=${cartDetail.cake.cakeId }"><font color="red">清除</font></a><br/>
							
							<a href="MakeOrderServlet?cakeId=${cartDetail.cake.cakeId }&number=${cartDetail.count }"><font color="red">加入订单</font></a>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			</c:forEach>		
		</div>
	</div>
	<!--//checkout-->	
	<jsp:include page="footer.jsp" flush="true" />
</body>
</html>