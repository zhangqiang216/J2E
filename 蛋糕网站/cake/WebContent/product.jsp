<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Products</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //js -->	
<!-- cart -->
<script src="js/simpleCart.min.js"> </script>
<!-- cart -->
<!-- the jScrollPane script -->
<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
		<script type="text/javascript" id="sourcecode">
			$(function()
			{
				$('.scroll-pane').jScrollPane();
			});
		</script>
<!-- //the jScrollPane script -->
<script type="text/javascript" src="js/jquery.mousewheel.js"></script>
<!-- the mousewheel plugin -->		
</head>
<body>
<jsp:include page="header.jsp" flush="true" />


<div class="products">	 
		<div class="container">
			<h2>Our Products</h2>			
			<div class="col-md-9 product-model-sec">
			
			<c:forEach items="${subCakeList }" var="cake2">
				<div class="product-grid">
					<a href="SingleServlet?cake_Id=${cake2.cakeId }">				
						<div class="more-product"><span> </span></div>						
						<div class="product-img b-link-stripe b-animate-go  thickbox">
							<img src="${cake2.cakeImageUrl }" class="img-responsive" alt="">
							<div class="b-wrapper">
								<h4 class="b-animate b-from-left  b-delay03">							
									<button>View</button>
								</h4>
							</div>
						</div>
					</a>				
					<div class="product-info simpleCart_shelfItem">
						<div class="product-info-cust prt_name">
							<h4>${cake2.cakeName }</h4>								
							<span class="item_price">${cake2.cakePrice }</span>
							<div class="ofr">
								
								<c:set var="price" value="${cake2.cakePrice*(1+cake2.cakeDiscount/100)}"></c:set>
								
								<p class="pric1"><del>${price }</del></p>
								<p class="disc">[${cake2.cakeDiscount }% Off]</p>
							</div>
							<form action="MakeShoppingCartServlet?remark=add&cakeId=${cake2.cakeId }" method="post">
								<input type="text" class="item_quantity" value="1" name="number"/>
								<input type="submit" class="item_add items" value="Add" name="ddd"/>
							</form>
							
							<div class="clearfix"> </div>
						</div>												
					</div>
				</div>
			</c:forEach>
			<c:if test="${page.currentPage != 1 }">
			<a href="CakeServlet?currentPage=${page.currentPage - 1}">上一页</a>
			</c:if> 
			<c:if test="${page.currentPage != page.pageCount }">
			<a href="CakeServlet?currentPage=${page.currentPage + 1}">下一页</a>
			</c:if>
			<%-- 
			<c:forEach begin="1" end="${page.pageCount }" var="i">
				<a href="CakeServlet?currentPage=${i}">${i }</a>
			</c:forEach>
			--%>
			</div>
			

			<div class="col-md-3 rsidebar span_1_of_left">
				<section  class="sky-form">
					<div class="product_right">
						<h4 class="m_2"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Categories</h4>
						<div class="tab1">
							<ul class="place">								
								<li class="sort">Regular Cakes</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>								
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">						
								<a href="TypeCakeServlet?Type=3&TypeValue=Cassata"><p>Cassata</p></a>
							
								<a href="TypeCakeServlet?Type=3&TypeValue=椰子蛋糕"><p>椰子蛋糕</p></a>
								
						    </div>
					    </div>						  
						<div class="tab2">
							<ul class="place">								
								<li class="sort">Special Cakes</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">						
								<a href="TypeCakeServlet?Type=3&TypeValue=美味的蛋糕"><p>美味的蛋糕</p></a>
								<a href="TypeCakeServlet?Type=3&TypeValue=好看的蛋糕"><p>好看的蛋糕</p></a>									
						    </div>
					    </div>
						<div class="tab3">
							<ul class="place">								
								<li class="sort">Eggless Cake</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">						
								<a href="TypeCakeServlet?Type=3&TypeValue=牛奶蛋糕"><p>牛奶蛋糕</p></a>
								<a href="TypeCakeServlet?Type=3&TypeValue=水果蛋糕"><p>水果蛋糕</p></a>
						    </div>
					    </div>
						<div class="tab4">
							<ul class="place">								
								<li class="sort">2-3 Tier Cakes</li>
								<li class="by"><span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span></li>
							</ul>
							<div class="clearfix"> </div>
							<div class="single-bottom">						
							
								<a href="TypeCakeServlet?Type=3&TypeValue=花卉层"><p>花卉层</p></a>
								<a href="TypeCakeServlet?Type=3&TypeValue=双心层"><p>双心层</p></a>
						    </div>
					    </div>
						<!--script-->
						<script>
							$(document).ready(function(){
								$(".tab1 .single-bottom").hide();
								$(".tab2 .single-bottom").hide();
								$(".tab3 .single-bottom").hide();
								$(".tab4 .single-bottom").hide();
								$(".tab5 .single-bottom").hide();
								
								$(".tab1 ul").click(function(){
									$(".tab1 .single-bottom").slideToggle(300);
									$(".tab2 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
								})
								$(".tab2 ul").click(function(){
									$(".tab2 .single-bottom").slideToggle(300);
									$(".tab1 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
								})
								$(".tab3 ul").click(function(){
									$(".tab3 .single-bottom").slideToggle(300);
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})
								$(".tab4 ul").click(function(){
									$(".tab4 .single-bottom").slideToggle(300);
									$(".tab5 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})	
								$(".tab5 ul").click(function(){
									$(".tab5 .single-bottom").slideToggle(300);
									$(".tab4 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})	
							});
						</script>
						<!--//script -->	
					</div>
				</section>
				<section  class="sky-form" >
					<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>DISCOUNTS</h4>
					<div class="row row1 scroll-pane">
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Upto - 10% (20)</label>
						</div>
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox" name="checkbox"><a href="TypeCakeServlet?Type=6&TypeValue=30"><i></i></a>35% - 40% (5)</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><a href="TypeCakeServlet?Type=6&TypeValue=25"><i></i></a>25% - 30% (7)</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><a href="TypeCakeServlet?Type=6&TypeValue=20"><i></i></a>20% - 25% (2)</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><a href="TypeCakeServlet?Type=6&TypeValue=15"><i></i></a>15% - 20% (5)</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><a href="TypeCakeServlet?Type=6&TypeValue=10"><i></i></a>10% - 15% (7)</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><a href="TypeCakeServlet?Type=6&TypeValue=5"><i></i></a>5% - 10% (2)</label>
							
						</div>
					</div>
				</section>  				 
				<section  class="sky-form">
					<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Price</h4>
					<ul class="dropdown-menu1">
						<li><a href="#">								               
							<div id="slider-range"></div>							
							<input type="text" id="amount" style="border: 0; font-weight: NORMAL;   font-family: 'Dosis-Regular';" />
							</a></li>			
					</ul>
				</section>
				<!---->
				<script type="text/javascript" src="js/jquery-ui.min.js"></script>
				<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
					<script type='text/javascript'>//<![CDATA[ 
						$(window).load(function(){
						 $( "#slider-range" ).slider({
									range: true,
									min: 0,
									max: 100000,
									values: [ 500, 100000 ],
									slide: function( event, ui ) {  $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
									}
						 });
						$( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) + " - $" + $( "#slider-range" ).slider( "values", 1 ) );

						});//]]> 
					</script>
				<!---->
				<section  class="sky-form">
					<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>By Flavour</h4>
					<div class="row row1 scroll-pane">
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><a href="TypeCakeServlet?Type=1&TypeValue=香草"><i></i></a>香草</label>			
						</div>
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox" name="checkbox"><a href="TypeCakeServlet?Type=1&TypeValue=巧克力"><i></i></a>巧克力</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><a href="TypeCakeServlet?Type=1&TypeValue=奶油"><i></i></a>奶油</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><a href="TypeCakeServlet?Type=1&TypeValue=草莓"><i></i></a>草莓</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><a href="TypeCakeServlet?Type=1&TypeValue=黑森林"><i></i></a>黑森林</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><a href="TypeCakeServlet?Type=1&TypeValue=混合水果"><i></i></a>混合水果</label>
							
						</div>
					</div>
				</section>
				<section  class="sky-form">
					<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Weight</h4>
					<div class="row row1 scroll-pane">
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><a href="TypeCakeServlet?Type=5&TypeValue=1"><i></i></a>1 KG</label>
						</div>		
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox" name="checkbox"><a href="TypeCakeServlet?Type=5&TypeValue=1.5"><i></i></a>1.5 KG</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><a href="TypeCakeServlet?Type=5&TypeValue=2"><i></i></a>2 KG</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><a href="TypeCakeServlet?Type=5&TypeValue=2.5"><i></i></a>2.5kg</label>
						</div>
					</div>
				</section>	
				<section  class="sky-form">
					<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Color</h4>
					<div class="row row1 scroll-pane">
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><a href="TypeCakeServlet?Type=2&TypeValue=白"><i></i></a>白</label>
						</div>
						<div class="col col-4">
							<label class="checkbox"><input type="checkbox" name="checkbox"><a href="TypeCakeServlet?Type=2&TypeValue=粉"><i></i></a>粉</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><a href="TypeCakeServlet?Type=2&TypeValue=褐"><i></i></a>褐</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><a href="TypeCakeServlet?Type=2&TypeValue=彩"><i></i></a>彩</label>
						</div>
					</div>
				</section>			 
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//products-->
	<jsp:include page="footer.jsp" flush="true" />
</body>
</html>



























































</body>
</html>