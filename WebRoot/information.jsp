<%@ page language="java"  session="true" pageEncoding="utf-8" contentType="text/html"%>
<%@ page import="bean.*,java.lang.reflect.*,java.util.*,java.text.*" %>
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
						<a href="checkout.jsp">
						<h3><div class="total">
                           <p>Cart</p>
                           <img src="images/cart2-2.png" alt=""/>
                        </h3></a>
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
	<h2>Information</h2>
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
			 <h3>Personal Information</h3>				
				
         <%request.setCharacterEncoding("utf-8"); %>
         <%if(session.getAttribute("userbean_s")==null){ 
               session.setAttribute("logerr",null);%>
               <div><a href="account.jsp" style="color:#F60">您还未登陆，点击此处进行登陆</a></div>
		 <%}else{ UserBean userbean = (UserBean)session.getAttribute("userbean_s"); %>
         <form action="revise.jsp" method="post">
	         <div class="in-check" >
			  <ul class="unit">
				<li><span>基本信息</span></li>			
				<div class="clearfix"> </div>
			  </ul>
			  <ul class="cart-header">
			    <li><span>Username</span></li>
			    <li><span><%=userbean.getDbMemberID() %></span></li>			    
			    <li><span><input type="hidden" name="username" value="<%=userbean.getDbMemberID() %>" /></span></li>
			    <div class="clearfix"> </div>
			  </ul>
	          <ul class=" cart-header1">
	            <li><span>Name</span></li>
				<li><span><%=userbean.getDbMemberName() %></span></li>
				<li><span><input type="hidden" name="name" value="<%=userbean.getDbMemberName() %>" /></span></li>			
				<div class="clearfix"> </div>
			  </ul>
			  <%if(userbean.getDbIsManage()==0) {%>
			  <ul class=" cart-header1">
	            <li><span>Sex</span></li>
				<li><span><%=userbean.getDbSex() %></span></li>
				<li><span><input type="hidden" name="sex" value="<%=userbean.getDbSex().trim() %>" /></span></li>			
				<div class="clearfix"> </div>
			  </ul>
	 		  <ul class=" cart-header1">
	            <li><span>Birth</span></li>
				<li><span><%=userbean.getDbBirth() %></span></li>
				<li><span><input type="hidden" name="year" value="<%=userbean.getDbYear().trim() %>" /></span></li>
				<li><span><input type="hidden" name="month" value="<%=userbean.getDbMonth().trim() %>" /></span></li>
				<li><span><input type="hidden" name="date" value="<%=userbean.getDbDate().trim() %>" /></span></li>			
				<div class="clearfix"> </div>
			  </ul>
			  <ul class=" cart-header1">
	            <li><span>Address</span></li>
				<li><span><%=userbean.getDbAdd() %></span></li>
				<li><span><input type="hidden" name="address" value="<%=userbean.getDbAdd() %>" /></span></li>			
				<div class="clearfix"> </div>
			  </ul>
			  <ul class=" cart-header1">
	            <li><span>Phone</span></li>
				<li><span><%=userbean.getDbTel() %></span></li>
				<li><span><input type="hidden" name="phone" value="<%=userbean.getDbTel() %>" /></span></li>			
				<div class="clearfix"> </div>
			  </ul>
			  <ul class=" cart-header1">
	            <li><span>E-mail</span></li>
				<li><span><%=userbean.getDbEmail() %></span></li>
				<li><span><input type="hidden" name="email" value="<%=userbean.getDbEmail() %>" /></span></li>			
				<div class="clearfix"> </div>
			  </ul> 
			  
			<input type="hidden" name="password" value="<%=userbean.getDbMemberPassword() %>" />
			</div>
			       	
	        
	        <div class="container"><div class="account_grid"><div class=" login-right">
            <input type="submit" value="change information" />
            <%} %>            
            </div></div></div>
            
        </form>
        <%} %>
	</div>
					  
</div>
		 
<div class=" per2">
				
			</div>
			<div class=" per3">
				
			</div>
						<div class=" per4">
				
			</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
			<!---->
				<div class="bottom-grid1">
					
					<div class="fit1">
						<h3>HAPPY READING</h3>
						<p>People die, but books never die. No man and no force can abolish memory. ——Franklin Roosevel</p>
					</div>
				</div>
<!---->
	<div class="footer">
		<div class="container">
			<div class="col-md-4 footer-top">
				<h3>Link</h3>
				<ul>
						<div class="grid-product">
								<h6>https://book.douban.com/review/best/</h6>		
						</div>
                        <div class="grid-product">
								<h6>http://www.duxieren.com/</h6>		
						</div>
                        <div class="grid-product">
								<h6>http://www.bookreporter.com/</h6>		
						</div>
                        <div class="grid-product">
								<h6>http://bookpage.com/</h6>		
						</div>
                        <div class="grid-product">
								<h6>http://allreaders.com/</h6>		
						</div>
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
						<li><span><i class="glyphicon glyphicon-earphone"> </i>+86 233 233 233 </span></li>
						<li><a href="mailto:info@example.com"><i class="glyphicon glyphicon-envelope" class="mes"> </i>info@example.com</a></li>
						<li><a href="#"><i class="glyphicon glyphicon-link" class="mes-in"> </i>http://example.com</a></li>
					</ul>
					<a href="#"><img src="images/pa.png" alt=""></a>
					</div>
			</div>
			<div class="clearfix"> </div>
			<p class="footer-class">Copyrights © 2016 E Book. All rights reserved | Design by Xxxxxx</p>
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