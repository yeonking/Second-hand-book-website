<%@ page language="java" session="true" import="java.util.*,bean.*,java.text.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Online-Bookshop</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="I-wear Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<!--fonts-->
<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Montez' rel='stylesheet' type='text/css'>
<!--//fonts-->	
<script src="js/simpleCart.min.js"> </script>
<!-- start menu -->
<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>	
<!-- /start menu -->

<!-- --------校验---------- -->
<script type="text/javascript" language="javascript">
	function emptyalert(){
			alert("购物车为空！");
			return false;
	}
</script>


		  		 <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
	<!-- js -->
		 <script src="js/bootstrap.js"></script>
	<!-- js -->

</head>
<body> 
<!--header-->	
		<div class="header-info">
			<div class="container">
					<div class="header-top-in">
						
						<ul class="support">
							<li><a href="mailto:info@example.com"><i class="glyphicon glyphicon-envelope"> </i>info@example.com</a></li>
							<li><span><i class="glyphicon glyphicon-earphone" class="tele-in"> </i>233 233 233</span></li>			
						</ul>
						<ul class=" support-right">
							<li><a href="information.jsp"><i class="glyphicon glyphicon-user" class="men"> </i>Account</a></li>
                            <li><a href="account.jsp"><i class="glyphicon glyphicon-user" class="men"> </i>Login</a></li>
							<li><a href="register.jsp"><i class="glyphicon glyphicon-lock" class="tele"> </i>Create an Account</a></li>			
						</ul>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>	
<div class="header header5">
	<div class="header-top">

			<div class="header-bottom">
			<div class="container">			
				<div class="logo">
					<h1><a href="index.jsp">Online-<span>Bookshop</span></a></h1>
				</div>
				
				
				
		 
			<div class="top-nav">
				<ul class="memenu skyblue"><li class="active"><a href="index.jsp">Home</a></li>
					<li class="grid"><a href="#">Literature</a>
						<div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>文学类</h4>
									<ul>
										<li><a href="./DoCateBookServlet?cate=小说">小说</a></li>
										<li><a href="./DoCateBookServlet?cate=散文">散文</a></li>
										<li><a href="./DoCateBookServlet?cate=青春文学">青春文学</a></li>
										<li><a href="./DoCateBookServlet?cate=传记">传记</a></li>
										<li><a href="./DoCateBookServlet?cate=哲学">哲学</a></li>
									</ul>
								</div>
								
							</div>
						</div>
					</li>
					<li class="grid"><a href="#">SocialSciences</a>
						<div class="mepanel">
							<div class="row">
								
								<div class="col1 me-one">
									<h4>社会科学类</h4>
									<ul>
										<li><a href="./DoCateBookServlet?cate=历史">历史</a></li>
                                        <li><a href="./DoCateBookServlet?cate=政治">政治</a></li>
                                        <li><a href="./DoCateBookServlet?cate=财经">财经</a></li>
                                        <li><a href="./DoCateBookServlet?cate=军事">军事</a></li>
                                        <li><a href="./DoCateBookServlet?cate=管理">管理</a></li>
                                        <li><a href="./DoCateBookServlet?cate=科学">科学</a></li>
									</ul>	
								</div>
								
							</div>
						</div>
					</li>
					<li class="grid"><a href="#">Study</a>
						<div class="mepanel">
							<div class="row">
								
								<div class="col1 me-one">
									<h4>教辅类</h4>
									<ul>
										<li><a href="./DoCateBookServlet?cate=小学教辅">小学教辅</a></li>
                                        <li><a href="./DoCateBookServlet?cate=中学教辅">中学教辅</a></li>
                                        <li><a href="./DoCateBookServlet?cate=大学教辅">大学教辅</a></li>
									</ul>	
								</div>
							</div>
						</div>
					</li>
					<li class="grid"><a href="product.jsp">ALLBOOKS</a>
						
					</li>
					
				</ul>
				<div class="clearfix"> </div>
			</div>
					<!---->
					<div class="cart box_1">
						
						<h3><div class="total">
                           
                           <p><a href="checkout.jsp">Cart</a></p>
                           <a href="checkout.jsp"><img src="images/cart2-2.png" alt="" /></a>
                        </h3>
						<div class="clearfix"> </div>
					</div>

<div class="clearfix"> </div>
					<!---->
				</div>
				
			</div>
			<div class="clearfix"> </div>
		</div>
		</div>
</div>
<!---->
<div class="back">
	<h2>Cart</h2>
</div>
		<!---->
		<div class="product">
			<div class="container">
				<div class="col-md-3 product-price">
					  
				
				<!---->
				<div class="product-bottom">
					<div class="of-left-in">
								<h3 class="best">MY ACCOUNT</h3>
							</div>
					<div class="product-go">
					  
						  <h6 class="best2"><a href="checkout.jsp">My Cart  </a></h6>
																
							
								
							<div class="clearfix"> </div>
				  </div>
							<div class="product-go">
							 
								<h6 class="best2"><a href="order.jsp">My Order </a></h6>
								
															
								
							<div class="clearfix"> </div>
							</div>
							<div class="product-go">
							  
								<h6 class="best2"><a href="./DoViewCollectServlet">My Favourite </a></h6>
								<ul class="star-footer">
									<li><a href="#"><i> </i></a></li>
									<li><a href="#"><i> </i></a></li>
									<li><a href="#"><i> </i></a></li>
									<li><a href="#"><i> </i></a></li>
									<li><a href="#"><i> </i></a></li>
								</ul>
								
							
								
							<div class="clearfix"> </div>
				  </div>
				</div>
                <div class=" per1"></div>
				</div>
				<!---->
				<div class="col-md-9 product-price1">
				<div class="check-out">	 
			
		 <div class=" cart-items">
			 <h3>My Shopping Bag </h3>
				<script>$(document).ready(function(c) {
					$('.close1').on('click', function(c){
						$('.cart-header').fadeOut('slow', function(c){
							$('.cart-header').remove();
						});
						});	  
					});
			   </script>
			<script>$(document).ready(function(c) {
					$('.close2').on('click', function(c){
						$('.cart-header1').fadeOut('slow', function(c){
							$('.cart-header1').remove();
						});
						});	  
					});
			   </script>
				
		<% if(session.getAttribute("carterr")!=null){ %>
				  <div>
					<span style="color:#F00" ><%=(String)session.getAttribute("logerr") %></span> 
				  </div>
				  <%}%>
				  <%session.setAttribute("carterr", null); %>
		<%
		HashMap cart = (HashMap)session.getAttribute("cart");
		double total=0;
		if(cart==null||cart.size()==0){%>
		<div class="in-check" >
		  <ul class="unit">
			<li><span>Item</span></li>
			<li><span>Product Name</span></li>		
			<li><span>Unit Price</span></li>
			<li><span>Quantity</span></li>
            <li><span>Subtotal</span></li>
			<li> </li>
			<div class="clearfix"> </div>
		  </ul>		  
		  <ul class="cart-header">
			<li><span>暂无商品</span></li>
			<div class="clearfix"></div>
		  </ul>		  
		   
          <ul class=" cart-header1">
            <li> 
            	<form>
            		<input type ="submit" value="结算" onclick="return emptyalert();"  style="background-color:#FF5959;border:none;color:#FFF;padding:5px 12px"/>
            	</form>
			</li>
            <li style="margin-top:6px"> Total: ￥ 0.00</li>
			<div class="clearfix"> </div>
		  </ul>           
		</div>
		<% } else {
		Set cartitems=cart.keySet();//获取购物车中所有cartitem项的书号集合
		Object[] bookid = cartitems.toArray();//将书号转为bookid数组
		BookBean book;
		CartItem cartitem ;
		int quantity;
		double price,subtotal;
		%>
		<div class="in-check" >
		  <ul class="unit">
			<li><span>Item</span></li>
			<li><span>Product Name</span></li>		
			<li><span>Unit Price</span></li>
			<li><span>Quantity</span></li>
            <li><span>Subtotal</span></li>
			<li> </li>
			<div class="clearfix"> </div>
		  </ul>
		  <%
		  int i=0;
		  while(i<bookid.length){
		  cartitem =(CartItem)cart.get((String)bookid[i]);
		  book=cartitem.getBookbean();
		  quantity=cartitem.getQuantity();
		  price=book.getDbSellPrice();
		  subtotal=quantity*price;
		  total+=subtotal;
		  i++;
		   %>
		  <!-- ------购物车单件商品显示---- -->
		  <ul class="cart-header">
		   <div><a href="./RemoveBookFromCartServlet?bookid=<%=book.getDbBookID() %>"><img src="images/close_1.png" class="img-responsive" alt=""></a></div>
			<li class="ring-in"><img src="images/<%=book.getDbBookimage().trim() %>.jpg" class="img-responsive" alt=""></li>
			<li><span><%=book.getDbBookName() %></span></li>
			<li><span><%=new DecimalFormat("0.00").format(price) %></span></li>
			<li><span><%=quantity %></span></li>
			<li><span><%=new DecimalFormat("0.00").format(subtotal) %></span></li>
			<div class="clearfix"> 
		   </div>
		  </ul>
		  <!-- -----单品结束------- -->	
		  <%} %> 
          <ul class=" cart-header1">
            <li> <a href="./DoAddOrderServlet" class="add-cart cart-check">结算</a></li>
            <li style="margin-top:37px"> Total:<%=new DecimalFormat("0.00").format(total) %></li>
			<div class="clearfix"> </div>
		  </ul>           
		</div>
		<%
		session.setAttribute("total",new Double(total));
		} %>
	</div>
</div>		 
			<div class=" per2"></div>
			<div class=" per3"></div>
			<div class=" per4"></div>
		</div>
		<div class="clearfix"> </div>
	</div>
</div>
			<!---->
				<div class="bottom-grid1">
					
					<div class="fit1">
						<h3>ENJOY READING</h3>
						<p>People die, but books never die. No man and no force can abolish memory. ——Franklin Roosevelt</p>
					</div>
				</div>
<!---->
	<div class="footer">
		<div class="container">
			<div class="col-md-4 footer-top">
				<h3>LINKS</h3>
				<ul>
						<li>   https://book.douban.com/review/best/</li>
						<li>   http://book.ifeng.com/dynlist/shuping/1/doclist.shtml</li>
						<li>   http://www.duxieren.com/</li>
						<li>   http://www.bookreporter.com/</li>
						<li>   http://bookpage.com/</li>
						<li>   http://allreaders.com/</li>
						<li>   http://article.yeeyan.org/view/55058/47316</li>
						
				</ul>

			</div>
			<div class="col-md-4 footer-middle">
				<h3>Recommended Books</h3>
					<div class="product-go">
							<div class="grid-product">
								<h6>《追风筝的人》</h6>
								
							</div>
								<div class="fashion">
									<img class="img-responsive " src="images/f1.jpg" alt="">
									
								</div>
							<div class="clearfix"> </div>
							</div>
								<div class="product-go">
							<div class="grid-product">
								<h6>《向着光亮那方》</h6>								
							</div>
								<div class="fashion">
									<img class="img-responsive " src="images/f2.jpg" alt="">
									
								</div>
							<div class="clearfix"> </div>
							</div>
								<div class="product-go">
							<div class="grid-product">
								<h6>《最动听的事》</h6>								
							</div>
								<div class="fashion">
									<img class="img-responsive " src="images/f3.jpg" alt="">
									
								</div>
							<div class="clearfix"> </div>
							</div>

			</div>
			<div class="col-md-4 footer-bottom">
				<h3>Get In Touch</h3>
				<div class="logo-footer">
					<ul class="social">
		                    <li><a href="#"><i class="fb"> </i> </a></li>
		                    <li><a href="#"><i class="rss"></i></a></li>
		                    <li><a href="#"><i class="twitter"></i></a></li>
		                    <li><a href="#"><i class="dribble"></i></a></li>
		                    <div class="clearfix"></div>
		                </ul>
					<div class="clearfix"> </div>
				</div>
				<div class="indo">
					<ul class="social-footer ">
						<li><span><i class="glyphicon glyphicon-earphone"> </i>+62 226759804 </span></li>
						<li><a href="mailto:info@example.com"><i class="glyphicon glyphicon-envelope" class="mes"> </i>info@example.com</a></li>
						<li><a href="#"><i class="glyphicon glyphicon-link" class="mes-in"> </i>http://example.com</a></li>
					</ul>
					<a href="#"><img src="images/pa.png" alt=""></a>
					</div>
			</div>
			<div class="clearfix"> </div>
			<p class="footer-class">Copyrights © 2015 I Wear. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
		</div>
	</div>
				 <!---->
<script type="text/javascript">
		$(document).ready(function() {
				/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
				*/
		$().UItoTop({ easingType: 'easeOutQuart' });
});
</script>
<a href="#to-top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!----> 
<!---->
</body>
</html>