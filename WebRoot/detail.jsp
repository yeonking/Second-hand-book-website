<%@ page language="java" import="java.util.*,bean.*" pageEncoding="utf-8"%>
<jsp:useBean id="bookope" class="bean.BookOperatImpl" scope="request"/>
<jsp:useBean id="cloperat" class="bean.CollectionOperatImpl" scope="request"/>
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
<!-- start menu -->
<!-- start menu -->
<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>	
<!-- /start menu -->
<!--//slider-script-->
<script src="js/main.js"></script> <!-- Resource jQuery -->
<script>
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  	ga('create', 'UA-48014931-1', 'codyhouse.co');
  	ga('send', 'pageview');

  	jQuery(document).ready(function($){
  		$('.close-carbon-adv').on('click', function(){
  			$('#carbonads-container').hide();
  		});
  	});
</script>	
<script src="js/simpleCart.min.js"> </script>
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
						<h3> 
                            <p>Cart</p>
							<img src="images/cart2-2.png" alt=""/></h3>
						</a>
						
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
<!---->
<div class="back">
	<h2>Product Details</h2>
</div>
		<!---->
		<div class="product">
			<div class="container">
				<div class="col-md-3 product-price">
					  
				<div class=" rsidebar span_1_of_left">
					<div class="of-left">
						<h3 class="cate">CATEGORIES</h3>
					</div>
		 <ul class="menu">
		<li class="item1"><a href="#">文学类 </a>
			<ul class="cute">
				<li class="subitem1"><a href="./DoCateBookServlet?cate=小说">小说</a></li>
				<li class="subitem2"><a href="./DoCateBookServlet?cate=散文">散文</a></li>
				<li class="subitem3"><a href="./DoCateBookServlet?cate=青春文学">青春文学</a></li>
                <li class="subitem4"><a href="./DoCateBookServlet?cate=传记">传记</a></li>
                <li class="subitem5"><a href="./DoCateBookServlet?cate=哲学">哲学</a></li>
                
			</ul>
		</li>
		<li class="item2"><a href="#">社会科学 </a>
			<ul class="cute">
				<li class="subitem1"><a href="./DoCateBookServlet?cate=历史">历史</a></li>
				<li class="subitem2"><a href="./DoCateBookServlet?cate=政治">政治</a></li>
				<li class="subitem3"><a href="./DoCateBookServlet?cate=财经">财经</a></li>
                <li class="subitem4"><a href="./DoCateBookServlet?cate=军事">军事</a></li>
                <li class="subitem5"><a href="./DoCateBookServlet?cate=管理">管理</a></li>
                <li class="subitem6"><a href="./DoCateBookServlet?cate=科学">科学</a></li>
                
			</ul>
		</li>
				
		<li class="item4"><a href="#">教辅类
</a>
			<ul class="cute">
				<li class="subitem1"><a href="./DoCateBookServlet?cate=小学教辅">小学教辅</a></li>
				<li class="subitem2"><a href="./DoCateBookServlet?cate=中学教辅">中学教辅</a></li>
				<li class="subitem3"><a href="./DoCateBookServlet?cate=大学教辅">大学教辅</a></li>
			</ul>
		</li>
	</ul>
					</div>
				<!--initiate accordion-->
		<script type="text/javascript">
			$(function() {
			    var menu_ul = $('.menu > li > ul'),
			           menu_a  = $('.menu > li > a');
			    menu_ul.hide();
			    menu_a.click(function(e) {
			        e.preventDefault();
			        if(!$(this).hasClass('active')) {
			            menu_a.removeClass('active');
			            menu_ul.filter(':visible').slideUp('normal');
			            $(this).addClass('active').next().stop(true,true).slideDown('normal');
			        } else {
			            $(this).removeClass('active');
			            $(this).next().stop(true,true).slideUp('normal');
			        }
			    });
			
			});
		</script>
<!---->
	<div class="product-middle">
		
					<div class="fit-top">
						<h6 class="shop-top">ENJOY READING</h6>
						<a href="product.jsp" class="shop-now">SHOP NOW</a>
<div class="clearfix"> </div>
	</div>
				</div>
	<!----></div>
				
			<%request.setCharacterEncoding("UTF-8");			 
			 String bookid=request.getParameter("bookid");			 		
			 BookBean bookbean = bookope.selectbookbyid(bookid);			 
			%>
		
			<!--------显示书本详情----------->
				<div class="col-md-9 product-price1">
				
                <div class="col-md-5 single-top" >	
						<div class="flexslider">
							<ul class="slides" >
                            	<img src="images/<%=bookbean.getDbBookimage().trim() %>.jpg" style="border:1px solid #CCC"/>
                          	</ul>
				        </div>

<!-- FlexSlider -->
<script defer src="js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

<script>
// Can also be used with $(document).ready()
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    controlNav: "thumbnails"
  });
});
</script>

				  </div>
 				
                  
					<div class="col-md-7 single-top-in simpleCart_shelfItem" style="margin-top:50px">
						<div class="single-para ">
						<h4><%=bookbean.getDbBookName() %></h4>
							<div class="star-on">
								<ul class="star-footer">
										<li><a href="#"><i> </i></a></li>
										<li><a href="#"><i> </i></a></li>
										<li><a href="#"><i> </i></a></li>
										<li><a href="#"><i> </i></a></li>
										<li><a href="#"><i> </i></a></li>
							  </ul>
							  <div class="clearfix"> </div>
							</div>
							
							<h5 class="item_price">￥<%=bookbean.getDbSellPrice() %></h5>
							
							
							<ul class="tag-men">
								<li><span>作者:</span>
								<span class="women1"><%=bookbean.getDbWriter() %></span></li>
								<li><span>出版社:</span>
								<span class="women1"><%=bookbean.getDbPublisher() %></span></li>
							</ul>
								
                                
                                <%if(session.getAttribute("userbean_s")==null){%>
									<a class="add2" href="account.jsp"><i class="glyphicon glyphicon-heart-empty"> </i></a>
								<%} else {%>
								<%UserBean userbean = (UserBean)session.getAttribute("userbean_s");
								if(cloperat.selectcollectbyid(bookbean.getDbBookID(),userbean.getDbMemberID())==null) {%>
								<a class="add2" href="./DoAddCollectServlet?bookid=<%=bookbean.getDbBookID() %>"><i class="glyphicon glyphicon-heart-empty" style="margin-top:31px"> </i></a>
								<%}else{ %>
								<a class="add2" href="./DoDeleteCollectServlet?bookid=<%=bookbean.getDbBookID() %>"><i class="glyphicon glyphicon-heart-empty" style="color:#FF6666;margin-top:31px"> </i></a>
								<%} }%>
                                <a href="./AddBookToCartServlet?bookid=<%=bookbean.getDbBookID() %>" class="add-cart item_add">ADD TO CART</a>
                                
							
						</div>
					</div>
				<div class="clearfix"> </div>
			<!---->
				  <div class="cd-tabs">
			<nav>
				<ul class="cd-tabs-navigation">
					<li><a data-content="fashion"  href="#0">Description </a></li>
					<li><a data-content="cinema" href="#0" >Parameter</a></li>
					<li></li>
					
				</ul> 
			</nav>
	           <ul class="cd-tabs-content">
		            <li data-content="fashion" >
		                 <div class="facts">
		                 			 <%if(bookbean.getDbBrief()==null) {%>
		                 			 <p>无</p>
		                 			 <%}else{ %>
		                 			 <p ><%=bookbean.getDbBrief() %></p>
		                 			 <%} %>
										<ul>
											<li>Research</li>
											<li>Design and Development</li>
											<li>Porting and Optimization</li>
											<li>System integration</li>
											<li>Verification, Validation and Testing</li>
											<li>Maintenance and Support</li>
										</ul>         
	                     </div>

                    </li>
                    <li data-content="cinema" >
		            	<div class="facts1">					
						<div class="color"><p>书名：</p>
							<span ><%=bookbean.getDbBookName() %></span>
							<div class="clearfix"></div>
						</div>
						<div class="color"><p>作者：</p>
							<span ><%=bookbean.getDbWriter() %></span>
							<div class="clearfix"></div>
						</div>
                        <div class="color"><p>出版社：</p>
							<span ><%=bookbean.getDbPublisher() %></span>
							<div class="clearfix"></div>
						</div>
                        <div class="color"><p>类别：</p>
							<span ><%=bookbean.getDbCategory() %></span>
							<div class="clearfix"></div>
						</div>
                        <div class="color"><p>售价：</p>
							<span ><%=bookbean.getDbSellPrice() %></span>
							<div class="clearfix"></div>
						</div>
                        <div class="color"><p>对应课程：</p>
							<%if(bookbean.getDbCourse()==null) {%>
							<span >无</span>
							<%}else{ %>
							<span ><%=bookbean.getDbCourse() %></span>
							<%} %>
							<div class="clearfix"></div>
						</div>					        
		                </div>
		            </li>
                    <li data-content="television" class="selected">
	                	<div class="comments-top-top">
				            <div class="top-comment-left"></div>
				            <div class="clearfix"> </div>
				        </div>

                    </li>
                    <div class="clearfix"></div>
	            </ul> 
            </div> 
<!-- -------书本详情显示结束----------- -->
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