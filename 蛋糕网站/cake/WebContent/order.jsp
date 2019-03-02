<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import="java.util.*,bean.*" %>
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
<%--
			List<OrderBean> orderList=(List<OrderBean>)request.getAttribute("orderList");
			int size=(int)request.getAttribute("length");
			int array[]=new int[size];
			int i=0;
			for(OrderBean order:orderList){
				array[i]=order.getOrderDetailList().size();
				i++;
				
			}
			
--%>
<body>
<jsp:include page="header.jsp" flush="true" />


<!--cart-items-->
	<div class="cart-items">
		<div class="container">
		
			<h2>${dd }</h2>
			<c:forEach items="${orderList }" var="order1" varStatus="status">
			<%-- <c:forEach begin="0",end="${order.orderDetailList.size-1 }"  var="i" step="1">--%>
			<h2>订单${status.count }</h2>
			
			
			<c:forEach items="${order1.orderDetailList }" var="orderDetail">
				
			
			
			<%-- <div class="cart-header">
				<div class="close1"> </div>
				<div class="cart-sec simpleCart_shelfItem">
					<div class="cart-item cyc">
						 <img src="${order1.orderDetailList[0].cake.cakeImageUrl }" class="img-responsive" alt="">
					</div>
					<div class="cart-item-info">
						<h3><a href="#"> ${order1.orderDetailList[0].cake.cakeName } </a><span>Price:${order1.orderDetailList[0].cake.cakePrice }</span></h3>
						<ul class="qty">
							<li><p>数量：${order1.orderDetailList[0].count }</p></li>
							<li><p>状态：${order1.orderState }</p></li>
						</ul>
						<div class="delivery">
							<p>Time</p>
							<span>${order1.orderTime }</span>
							<div class="clearfix"></div>
						</div>	
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			--%>
			
			
			
			<div class="cart-header">
				<div class="close1"> </div>
				<div class="cart-sec simpleCart_shelfItem">
					<div class="cart-item cyc">
						 <img src="${orderDetail.cake.cakeImageUrl }" class="img-responsive" alt="">
					</div>
					<div class="cart-item-info">
						<h3><a href="#"> ${orderDetail.cake.cakeName } </a><span>Price:${orderDetail.cake.cakePrice }</span></h3>
						<ul class="qty">
							<li><p>数量：${orderDetail.count }</p></li>
							<li><p>状态：${order1.orderState }</p></li>
						</ul>
						<div class="delivery">
							<p>Time</p>
							<span>${order1.orderTime }</span>
							<div class="clearfix"></div>
						</div>	
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			</c:forEach>
			
			
			</c:forEach>
		</div>
	</div>
	<!--//checkout-->	
	
	<jsp:include page="footer.jsp" flush="true" />

</body>
</html>