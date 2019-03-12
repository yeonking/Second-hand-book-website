<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="bean.*,java.util.*" %>
<jsp:useBean id="uboperat" class="bean.BookOperatImpl" scope="request"/>
<jsp:useBean id="cloperat" class="bean.CollectionOperatImpl" scope="request"/>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Online-bookshop</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="I wear Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<!--fonts-->
<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Montez' rel='stylesheet' type='text/css'>
<!--//fonts-->
<!-- start menu -->
<!--//slider-script-->
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
		    <script type="text/javascript">
			    $(document).ready(function () {
			        $('#horizontalTab').easyResponsiveTabs({
			            type: 'default', //Types: default, vertical, accordion           
			            width: 'auto', //auto or any width like 600px
			            fit: true   // 100% fit in a container
			        });
			    });
				
</script>	
		  		 <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
	<!-- js -->
		 <script src="js/bootstrap.js"></script>
	<!-- js -->
<script src="js/simpleCart.min.js"> </script>
<!-- start menu -->
<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>	
<!-- /start menu -->
</head>
<body> 
<!--header-->
		<%request.setCharacterEncoding("utf-8"); %>
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
<div class="header">
	<div class="header-top">

			<div class="header-bottom">
			<div class="container">			
				<div class="logo">
					<h1><a href="index.jsp">Online-<span>Bookshop</span></a></h1>
				</div>
		 <!---->
		 
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
                        </h3>
						</a>
						<div class="clearfix"> </div>
					</div>

<div class="clearfix"> </div>
					<!---->
				</div>
			<div class="clearfix"> </div>
		</div>
		</div>

	<div class="banner">
		<div class="banner-top">
	         <h2>THIS IS I-READ</h2>
	         <p>People die, but books never die. No man and no force can abolish memory.</p><p> ——Franklin Roosevelt</p>
</div>
	<div class="now">
	         <a class="morebtn" href="product.jsp">Shop Now</a>
	         <a class="morebtn at-in" href="account.jsp">Log In</a>
	         <div class="clearfix"> </div>
	         </div>
 	</div>	
 				<div class="clearfix"> </div>	
			</div>
<!---->
		<!---->
		<div class="sap_tabs">
			<div class="container">
			<label class="line"> </label>
			<h2>Hotest Books</h2>
            <!-- --中间三个框--  -->
						 <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
						  <ul class="resp-tabs-list">
						  	  <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>Literature</span></li>
							  <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Social Sciences</span></li>
							  <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>Study</span></li>
							  <div class="clearfix"></div>
						  </ul>				  	 
							<div class="resp-tabs-container">
							    <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
									<div class="tab_img">
									  <div class="img-top simpleCart_shelfItem">
										
					   		  			   <img src="images/book1.jpg" class="img-responsive" alt="" />
											
								              <div class="tab_desc">
												 <ul class="round-top">
												 	<li><a href="detail.jsp?bookid=101"><i class="glyphicon glyphicon-search"> </i></a></li>
												 	
												 </ul>
												 
												 	<div class="agency ">
													<div class="agency-left">
														<h6 class="jean">《追风筝的人》</h6>
														<span class="dollor item_price" style="color:#000">￥29.00</span>
														<div class="clearfix"> </div>
													</div>
													<div class="agency-right">
														<ul class="social">
																									</ul>
														<ul class="social-in">
															
														</ul>
														<div class="clearfix"> </div>
													</div>
												 </div>
											  </div>
										
										</div>
										<div class="img-top simpleCart_shelfItem">
										  
					   		  			   <img src="images/book2.jpg" class="img-responsive" alt="" />
											<div class="tab_desc">
													 <ul class="round-top">
												 	<li><a href="detail.jsp?bookid=102"><i class="glyphicon glyphicon-search"> </i></a></li>
												 	
												 </ul>
												 
												<div class="agency ">
													<div class="agency-left">
														<h6 class="jean">《向着光亮那方》</h6>
														<span class="dollor item_price" style="color:#F00;">￥42.00</span>
														<div class="clearfix"> </div>
													</div>
													<div class="agency-right">
														<ul class="social">
															
														</ul>
														<ul class="social-in">
															
														</ul>
														<div class="clearfix"> </div>
													</div>
												 </div>
											  </div>
											  <div class="col-in">
											  	<p>NEW</p>
											  </div>
											 </div>
											  <div class="img-top simpleCart_shelfItem">
										  
					   		  			   <img src="images/book3.jpg" class="img-responsive" alt="" />
											<div class="tab_desc">
															 <ul class="round-top">
												 	<li><a href="detail.jsp?bookid=103"><i class="glyphicon glyphicon-search"> </i></a></li>
												 	
												 </ul>
												 
												 <div class="agency ">
													<div class="agency-left">
														<h6 class="jean">《最动听的事》</h6>
														<span class="dollor item_price" style="color:#F00">￥35.00</span>
														<div class="clearfix"> </div>
													</div>
													<div class="agency-right">
														<ul class="social">
															
														</ul>
														<ul class="social-in">
															
														</ul>
														<div class="clearfix"> </div>
													</div>
												 </div>
											  </div>
											 <div class="col-in col-in-1">
											  	
											  </div>
											</div>
											<div class="clearfix"></div>
							     </div> 	        					 
						  </div>
							    <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
									<div class="tab_img">
									  <div class="img-top simpleCart_shelfItem">
										
					   		  			   <img src="images/book4.jpg" class="img-responsive" alt=""/>
											
								              <div class="tab_desc">
												 <ul class="round-top">
												 	<li><a href="detail.jsp?bookid=104"><i class="glyphicon glyphicon-search"> </i></a></li>
												 	
												 </ul>
												 
												 <div class="agency ">
													<div class="agency-left">
														<h6 class="jean">《“伊斯兰国”简论》</h6>
														<span class="dollor item_price">￥35.00</span>
														<div class="clearfix"> </div>
													</div>
													<div class="agency-right">
														<ul class="social">
															
														</ul>
														<ul class="social-in">
															
														</ul>
														<div class="clearfix"> </div>
													</div>
												 </div>
											  </div>
										</div>
										<div class="img-top simpleCart_shelfItem">
					   		  			   <img src="images/book5.jpg" class="img-responsive" alt=""/>
											<div class="tab_desc">
												 <ul class="round-top">
												 	<li><a href="detail.jsp?bookid=105"><i class="glyphicon glyphicon-search"> </i></a></li>
												 
												 </ul>
												 <div class="agency ">
													<div class="agency-left">
														<h6 class="jean">《战争论》</h6>
														<span class="dollor item_price">￥29.80</span>
														<div class="clearfix"> </div>
													</div>
													<div class="agency-right">
														<ul class="social">
															
														</ul>
														<ul class="social-in">
															
														</ul>
														<div class="clearfix"> </div>
													</div>
												 </div>
											  </div>
											  <div class="col-in">
											  	<p>NEW</p>
											  </div>
											 </div>
											  <div class="img-top simpleCart_shelfItem">
					   		  			   <img src="images/book6.jpg" class="img-responsive" alt=""/>
											<div class="tab_desc">
												 <ul class="round-top">
												 	<li><a href="detail.jsp?bookid=106"><i class="glyphicon glyphicon-search"> </i></a></li>
												 	
												 </ul>
												 <div class="agency ">
													<div class="agency-left">
														<h6 class="jean">《时间简史》</h6>
														<span class="dollor item_price">￥45.00</span>
														<div class="clearfix"> </div>
													</div>
													<div class="agency-right">
														<ul class="social">
															
														</ul>
														<ul class="social-in">
															
														</ul>
														<div class="clearfix"> </div>
													</div>
												 </div>
											  </div>
											 <div class="col-in col-in-1">
											  	
											  </div>
											</div>
											<div class="clearfix"></div>
							     </div>						 
						  </div>
						    <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
									<div class="tab_img">
									  <div class="img-top simpleCart_shelfItem">
										
					   		  			   <img src="images/book7.jpg" class="img-responsive" alt=""/>
											
								              <div class="tab_desc">
												 <ul class="round-top">
												 	<li><a href="detail.jsp?bookid=107"><i class="glyphicon glyphicon-search"> </i></a></li>
												 	
												 </ul>
												 
												 <div class="agency ">
													<div class="agency-left">
														<h6 class="jean">《小学教材全解-五年级语文下(人教版)》</h6>
														<span class="dollor item_price">￥27.80</span>
														<div class="clearfix"> </div>
													</div>
													<div class="agency-right">
														<ul class="social">
															
														</ul>
														<ul class="social-in">
															
														</ul>
														<div class="clearfix"> </div>
													</div>
												 </div>
											  </div>
										</div>
										<div class="img-top simpleCart_shelfItem">
										  
					   		  			   <img src="images/book8.jpg" class="img-responsive" alt=""/>
											<div class="tab_desc">
												 <ul class="round-top">
												 	<li><a href="detail.jsp?bookid=108"><i class="glyphicon glyphicon-search"> </i></a></li>
												 	
												 </ul>
												 	<div class="agency ">
													<div class="agency-left">
														<h6 class="jean">《2016挑战压轴题·中考数学：强化训练篇》</h6>
														<span class="dollor item_price">$30.00</span>
														<div class="clearfix"> </div>
													</div>
													<div class="agency-right">
														<ul class="social">
															
														</ul>
														<ul class="social-in">
															
														</ul>
														<div class="clearfix"> </div>
													</div>
												 </div>
											  </div>
											  <div class="col-in">
											  	<p>NEW</p>
											  </div>
											 </div>
											  <div class="img-top simpleCart_shelfItem">
										  
					   		  			   <img src="images/book9.jpg" class="img-responsive" alt=""/>
											<div class="tab_desc">
												 <ul class="round-top">
												 	<li><a href="detail.jsp?bookid=109"><i class="glyphicon glyphicon-search"> </i></a></li>
												 	
												 </ul>
												 
												 	<div class="agency ">
													<div class="agency-left">
														<h6 class="jean">《计算机网络（第6版）》</h6>
														<span class="dollor item_price">$39.00</span>
														<div class="clearfix"> </div>
													</div>
													<div class="agency-right">
														<ul class="social">
															
														</ul>
														<ul class="social-in">
															
														</ul>
														<div class="clearfix"> </div>
													</div>
												 </div>
											  </div>
											 <div class="col-in col-in-1">
	
											  </div>
											</div>
											<div class="clearfix"></div>
							     </div>	 	        					 
						  </div>		
                  </div>
          </div>
         </div>
	</div>
	<!--start-----> 
	<div class="goggles"> 
		<div class="container"> 
			<h2>Latest Books</h2>
			<div class="product-one">
			<%List list=null;
			list=uboperat.getallbook();
			BookBean bookbean=null;
				    for(int i=0;i<8;i++){
				    	//从list中获取Object对象，强制转换为UserBean对象
				    	bookbean=(BookBean)list.get(i);
			%>
			<!-- ------------书本开始----------- -->
				<%if(i % 4==0) {%>
		        	    <div class="clearfix"></div>	
		        <%} %>
				<div class="col-md-3 product-left"> 
					<div class="p-one simpleCart_shelfItem">							
							<a href="detail.jsp?bookid=<%=bookbean.getDbBookID() %>">
								<img src="images/<%=bookbean.getDbBookimage() %>.jpg" alt="" style="width:200px"/>
								<div class="mask">
									<span>Quick View</span>
								</div>
							</a>
						<h4><%=bookbean.getDbBookName() %></h4>
						<p><a class="item_add" href="./AddBookToCartServlet?bookid=<%=bookbean.getDbBookID() %>"><i></i> <span class=" item_price">$<%=bookbean.getDbSellPrice() %></span></a></p>
					
					</div>
				</div>
			<!-- ------------书本结束----------- -->	
			<%} %>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--end-shoes-->
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
		                    <li><a href="#"><i class="rss"> </i></a></li>
		                    <li><a href="#"><i class="twitter"> </i></a></li>
		                    <li><a href="#"><i class="dribble"> </i></a></li>
		                    <div class="clearfix"> </div>
		                </ul>
					<div class="clearfix"> </div>
				</div>
				<div class="indo">
					<ul class="social-footer ">
						<li><span><i class="glyphicon glyphicon-earphone"> </i>+86 233233233 </span></li>
						<li><a href="mailto:info@example.com"><i class="glyphicon glyphicon-envelope" class="mes"> </i>info@example.com</a></li>
						<li><i class="glyphicon glyphicon-link" class="mes-in"> </i>http://example.com</li>
					</ul>
					<img src="images/pa.png" alt="">
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