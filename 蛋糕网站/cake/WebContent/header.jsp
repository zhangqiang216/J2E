<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--//header-->
	<div class="header">
		<div class="container">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<h1 class="navbar-brand"><a  href="IndexServlet">美味</a></h1>
				</div>
				<!--navbar-header-->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="IndexServlet" class="active">首页</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">生日<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
																									
									<div class="col-sm-3">
										<h4>风格</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="TypeCakeServlet?Type=1&TypeValue=巧克力">巧克力</a></li>
											<li><a class="list" href="TypeCakeServlet?Type=1&TypeValue=混合水果">混合水果</a></li>
											<li><a class="list" href="TypeCakeServlet?Type=1&TypeValue=奶油">奶油</a></li>
											<li><a class="list" href="TypeCakeServlet?Type=1&TypeValue=草莓">草莓</a></li>
											<li><a class="list" href="TypeCakeServlet?Type=1&TypeValue=香草">香草</a></li>
											<li><a class="list" href="TypeCakeServlet?Type=1&TypeValue=蜜糖">蜜糖</a></li>
										</ul>
									</div>
									
									
									<div class="col-sm-3">
										<h4>尺寸</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="TypeCakeServlet?Type=5&TypeValue=1">1 kG</a></li>
											<li><a class="list" href="TypeCakeServlet?Type=5&TypeValue=1.5">1.5 kG</a></li>
											<li><a class="list" href="TypeCakeServlet?Type=5&TypeValue=2">2 kG</a></li>
											<li><a class="list" href="TypeCakeServlet?Type=5&TypeValue=2.5">2.5kG</a></li>
											<li><a class="list" href="TypeCakeServlet?Type=5&TypeValue=3">3 kG</a></li>
											<li><a class="list" href="TypeCakeServlet?Type=5&TypeValue=4">其他</a></li>
										</ul>
									</div>
								</div>
							</ul>
						</li>
					   <li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">婚礼<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
									
									
									<div class="col-sm-3">
										<h4>主题</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="TypeCakeServlet?Type=4&TypeValue=心形">心形</a></li>
											<%-- <li><a class="list" href="TypeCakeServlet?Type=4&TypeValue=卡通">卡通</a></li>--%>
											<li><a class="list" href="TypeCakeServlet?Type=4&TypeValue=2-3层蛋糕">2-3层蛋糕</a></li>
											<li><a class="list" href="TypeCakeServlet?Type=4&TypeValue=圆形">圆形</a></li>
											<li><a class="list" href="TypeCakeServlet?Type=4&TypeValue=方形">方形</a></li>
											<li><a class="list" href="TypeCakeServlet?Type=4&TypeValue=照片蛋糕">照片蛋糕</a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<h4>颜色</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="TypeCakeServlet?Type=2&TypeValue=粉">粉</a></li>
											<li><a class="list" href="TypeCakeServlet?Type=2&TypeValue=褐">褐</a></li>
											<li><a class="list" href="TypeCakeServlet?Type=2&TypeValue=白">白</a></li>
											<li><a class="list" href="TypeCakeServlet?Type=2&TypeValue=彩">彩</a></li>
											<li><a class="list" href="TypeCakeServlet?Type=2&TypeValue=银">银</a></li>
											 
										</ul>
									</div>
								</div>
							</ul>
						</li>				
						<li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">特别优惠<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-4">
								<div class="row">
									<div class="col-sm-3">
										<h4>折扣</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="TypeCakeServlet?Type=6&TypeValue=5">低于10%</a></li>
											<li><a class="list" href="TypeCakeServlet?Type=6&TypeValue=10">10%~15%</a></li>
											<li><a class="list" href="TypeCakeServlet?Type=6&TypeValue=15">15%~20%</a></li>
											<li><a class="list" href="TypeCakeServlet?Type=6&TypeValue=20">20%~25%</a></li>
											<li><a class="list" href="TypeCakeServlet?Type=6&TypeValue=25">25%~30%</a></li>
											<li><a class="list" href="TypeCakeServlet?Type=6&TypeValue=30">高于30%</a></li>
										</ul>
									</div>		
									
								</div>
							</ul>
						</li>
						<li class="dropdown grid">
							<a href="#" class="dropdown-toggle list1" data-toggle="dropdown">商店<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-3">
								<div class="row">
									<%-- 
									<div class="col-sm-4">
										<h4>By Relation</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.html">Friend</a></li>
											<li><a class="list" href="products.html">Lover</a></li>
											<li><a class="list" href="products.html">Sister</a></li>
											<li><a class="list" href="products.html">Brother</a></li>
											<li><a class="list" href="products.html">Kids</a></li>
											<li><a class="list" href="products.html">Parents</a></li>
										</ul>
									</div>	
									--%>
									<%-- 																	
									<div class="col-sm-4">
										<h4>By Flavour</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="products.html">Chocolate</a></li>
											<li><a class="list" href="products.html">Mixed Fruit</a></li>
											<li><a class="list" href="products.html">Butterscotch</a></li>
											<li><a class="list" href="products.html">Strawberry</a></li>
											<li><a class="list" href="products.html">Vanilla</a></li>
											<li><a class="list" href="products.html">Eggless Cakes</a></li>
										</ul>
									</div>		
									--%>						
									<div class="col-sm-4">
										<h4>类别</h4>
										<ul class="multi-column-dropdown">
											<li><a class="list" href="#">冰淇淋蛋糕</a></li>
											<li><a class="list" href="#">瑞士卷</a></li>
											<li><a class="list" href="#">Ruske kape</a></li>
											<li><a class="list" href="#">纸杯蛋糕</a></li>
											<li><a class="list" href="#">松饼</a></li>
											<li><a class="list" href="#">Merveilleux</a></li>										
										</ul>
									</div>
								</div>
							</ul>
						</li>								
					</ul> 
					<!--/.navbar-collapse-->
				</div>
				<!--//navbar-header-->
			</nav>
			<div class="header-info">
				<div class="header-right search-box">
					<a href="#"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>				
					<div class="search">
						<form class="navbar-form" action="SingleServlet" method="post">
							<input type="text" class="form-control" placeholder="请输入蛋糕ID" name="cake_Id" >
							<input type="submit" class="btn btn-default" aria-label="Left Align" value="搜索">
							
						</form>
					</div>	
				</div>
				<div class="header-right login">
					<a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
					<div id="loginBox">                
						<form id="loginForm" action="LoginServlet" method="post">
							<fieldset id="body">
								<fieldset>
									<label for="email">用户名</label>
									<input type="text" name="name" id="email">
								</fieldset>
								<fieldset>
									<label for="password">Password</label>
									<input type="password" name="password" id="password">
								</fieldset>
								<input type="submit" id="login" value="Sign in">
								<label for="checkbox"><input type="checkbox" id="checkbox" name="autoLogin"> <i>七天内自动登录</i></label>
								
							</fieldset>
							<p>New User ? <a class="sign" href="register.jsp">Sign Up</a> <span><a href="findpassword.jsp">Forgot your password?</a></span></p>
						</form>
					</div>
				</div>
				<div class="header-right cart">
					<a href="#"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></a>
					<div class="cart-box">
						<h4><a href="checkout.html">
							<span class="simpleCart_total"> $0.00 </span> (<span id="simpleCart_quantity" class="simpleCart_quantity"> 0 </span>) 
						</a></h4>
						<p><a href="ShoppingCartServlet" class="simpleCart_empty">购物车</a></p>
						<p><a href="ShowOrderServlet" class="simpleCart_empty">我的订单</a></p>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//header-->