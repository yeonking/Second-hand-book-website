<%@ page language="java" import="java.util.*" contentType="text/html" pageEncoding="utf-8"%>
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
<!---->
<div class="back">
	<%if(session.getAttribute("mark")==null) {%>
	<h2>Products</h2>
	<%}else if((int)session.getAttribute("mark")==2){ %>
	<h2>My Favourite</h2>
	<%} else{%>
	<h2>Products</h2>
	<%} %>
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
	<!---->
	<div class=" per1"></div>
</div>
				
		

			
				<!---->
				<%request.setCharacterEncoding("utf-8"); %>
                <form action="./DoUnameBookServlet"  style="float:right;" method="post">
         	<table style="margin-top:25px"><tr>
            <td><input type="text" name="bookname" style="height:24px;margin-right:15px;margin-top:10px"></td>
           
            <td><input type="image" src="images/search.png" style="height:25px;width:25px;float:right;margin-top:10px" onclick="return isempty();"></td> 
           
            </tr>
            </table>
         </form>
				<div class="col-md-9 product-price1">
					<div class="mens-toolbar">
					  <div class="clearfix"></div>		
		        </div>
		        <div class="product-right-top">
		        	<div class="top-product">
		        	<%List list=null;
		        	if(session.getAttribute("mark")==null){
				  		list=uboperat.getallbook(); }
				    else if((int)session.getAttribute("mark")==0){
				    	String bookname=(String)request.getAttribute("bookname");
				    	list=uboperat.selectbookbyname(bookname);
				    	session.setAttribute("mark", null);
				    } else if((int)session.getAttribute("mark")==1){
				    	String bookcate=(String)request.getAttribute("bookcate");
				    	list=uboperat.selectbookbycate(bookcate);
				    	session.setAttribute("mark", null);
				    } else if((int)session.getAttribute("mark")==2){
				    	String memid=(String)request.getAttribute("memid");
				    	list=cloperat.selectcollect(memid);
				    	session.setAttribute("mark", null);
				    }
				   
				    BookBean bookbean=null;
				    for(int i=0;i<list.size();i++){
				    	//从list中获取Object对象，强制转换为UserBean对象
				    	bookbean=(BookBean)list.get(i);
				    %>
		            <!--------------  单件书本显示   --------------------->
		        			        	                    
		        	    <%if(i % 3==0) {%>
		        	    <div class="clearfix"></div>	
		        	    <%} %>
                        <div class="col-md-4 chain-grid  simpleCart_shelfItem" style="margin-left:auto">
		        			<div class="grid-span-1">
	   		     		<a  href="detail.jsp?bookid=<%=bookbean.getDbBookID() %>"><img class="img-responsive " src="images/<%=bookbean.getDbBookimage() %>.jpg" alt=" ">
	   		     			<div class="link">
	   		     			<ul >
								<li><i class="glyphicon glyphicon-search"> </i></li>										
							</ul>
	   		     		</div>
	   		     		</a>
	   		     	</div>
	   		     		<div class="grid-chain-bottom ">
	   		     			<a href="detail.jsp?bookid=<%=bookbean.getDbBookID() %>"><%=bookbean.getDbBookName() %></a>
	   		     			<div class="star-price">
	   		     				<div class="price-at">
		   		     				<ul class="star-footer">
										<li><a href="#"><i> </i></a></li>
										<li><a href="#"><i> </i></a></li>
										<li><a href="#"><i> </i></a></li>
										<li><a href="#"><i> </i></a></li>
										<li><a href="#"><i> </i></a></li>
									</ul>
									</div>
									<div class="price-at-bottom ">
										<span class="item_price">￥<%=bookbean.getDbSellPrice() %></span>
									</div>
	   		     				<div class="clearfix"> </div>
							</div>
							<div class="cart-add">								
								<a class="add1 item_add" href="./AddBookToCartServlet?bookid=<%=bookbean.getDbBookID() %>">ADD TO CART <i> </i></a>
								
								<%if(session.getAttribute("userbean_s")==null){%>
									<a class="add2" href="account.jsp"><i class="glyphicon glyphicon-heart-empty"> </i></a>
								<%} else {%>
								<%UserBean userbean = (UserBean)session.getAttribute("userbean_s");
								if(cloperat.selectcollectbyid(bookbean.getDbBookID(),userbean.getDbMemberID())==null) {%>
								<a class="add2" href="./DoAddCollectServlet?bookid=<%=bookbean.getDbBookID() %>"><i class="glyphicon glyphicon-heart-empty"> </i></a>
								<%}else{ %>
								<a class="add2" href="./DoDeleteCollectServlet?bookid=<%=bookbean.getDbBookID() %>"><i class="glyphicon glyphicon-heart-empty" style="color:#FF6666"> </i></a>
								<%} }%>
								<div class="clearfix"> </div>
							</div>
	   		     		</div>	   		     		
	   		     	</div>
	   		     	<!-- --------- -->
	   		     	<%} %>
	   		   
	   		     	<div class="clearfix"> </div>
		        </div>
             </div>
		        <ul class="start">
					<li><a href="#"><i> </i></a></li>
					<li></li>
					<li class="arrow"></li>
					<li class="arrow"></li>
					
					
					<li><a href="#"><i class="next"> </i></a></li>
				</ul>
				<div class="clearfix"> </div>
				</div>
				
			<div class="clearfix"> </div>
			
				<div class="shipping">
				  <div class="clearfix"> </div>
			</div>
					
				</div>
				
			<!---->
		
		</div>
		<div class="bottom-grid1">
					
					<div class="fit1">
						<h3>ENJOY READING</h3>
						<p>People die, but books never die. No man and no force can abolish memory. ——Franklin Roosevelt</p>
					</div>
				</div>
		
<!---->

<script src="js/simpleCart.min.js"> </script>
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