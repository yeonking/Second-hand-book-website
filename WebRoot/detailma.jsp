<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="bean.*,java.util.*" %>
<jsp:useBean id="bookope" class="bean.BookOperatImpl" scope="request"/>
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
							<li><a href="management.jsp"><i class="glyphicon glyphicon-user" class="men"> </i>Managment</a></li>
                            <li><a href="account.jsp"><i class="glyphicon glyphicon-user" class="men"> </i>Login</a></li>
							<li><a href="registerma.jsp"><i class="glyphicon glyphicon-lock" class="tele"> </i>Add A Manager</a></li>			
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
			  <div class="clearfix"> </div>
			</div>
					
			  </div>
				
			</div>
			<div class="clearfix"> </div>
		</div>
		</div>
</div>
<!---->
<div class="back">
	<h2>Book Information</h2>
</div>
		<!---->
		<div class="product">
			<div class="container">
				<div class="col-md-3 product-price">
					  
				
				<!---->
				<div class="product-bottom">
					<div class="of-left-in">
								<h3 class="best">Management</h3>
					</div>
					<div class="product-go">
					  
						  <h6 class="best2"><a href="manageuser.jsp">User  Management  </a></h6>
						  <div class="clearfix"> 
				    </div>
				</div>
							<div class="product-go">
							 
								<h6 class="best2"><a href="manageorder.jsp">Order Information</a></h6>
								
															
								
							<div class="clearfix"> </div>
							</div>
							<div class="product-go">
							  
								<h6 class="best2"><a href="manageproduct.jsp">Book Management</a></h6>
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
             
			<!--------显示书本详情----------->
				<div class="col-md-9 product-price1">
				<h3 style="margin-left:25px;font-size:24px">Book Information</h3>
                <% if(session.getAttribute("userbean_s")==null){%>
				  
				  <a href="account.jsp" style="color:#F60">您还未登陆，点击此处进行登陆</a>
				  
				  <% }else{
						  UserBean userbean=(UserBean)session.getAttribute("userbean_s"); 
						  if(userbean.getDbIsManage()==0){%>
				  <a href="account.jsp" style="color:#F60">您没有权限，请点击此处登陆管理员账户，</a>
				  <%        }else{%>
             <%request.setCharacterEncoding("UTF-8");			 
			 String bookid=request.getParameter("bookid").trim();			 		
			 BookBean bookbean = bookope.selectbookbyid(bookid);			 
			%>
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
						  <div class="clearfix"> </div>
						</div>
						    <ul class="tag-men" style="border-top:none;border-bottom:none">
								<li><span>书号:</span>
								<span class="women1"><%=bookbean.getDbBookID() %></span></li>
								
							</ul>
						    <ul class="tag-men" style="border-bottom:none">
								<li><span>书名:</span>
								<span class="women1"><%=bookbean.getDbBookName() %></span></li>
								
							</ul>
                            <ul class="tag-men" style="border-bottom:none">
								<li><span>作者:</span>
								<span class="women1"><%=bookbean.getDbWriter() %></span></li>
								
							</ul>
							<ul class="tag-men" style="border-bottom:none">
								<li><span>出版社:</span>
								<span class="women1"><%=bookbean.getDbPublisher() %></span></li>	
							</ul>
                            <ul class="tag-men" style="border-bottom:none">
								<li><span>类别:</span>
								<span class="women1"><%=bookbean.getDbCategory() %></span></li>	
							</ul>
                            <ul class="tag-men" style="border-bottom:none">
								<li><span>售价:</span>
								<span class="women1"><%=bookbean.getDbSellPrice() %></span></li>	
							</ul>
                            <ul class="tag-men">
								<li><span>对应课程:</span>
                                 <%if(bookbean.getDbBrief()==null) {%>
		                 			 <span class="women1">无</span>
		                 			 <%}else{ %>
								<span class="women1"><%=bookbean.getDbCourse() %></span>
                                <%} %>
                                </li>	
							</ul>
                            
             <div class="cd-tabs">
			
				<ul class="cd-tabs-navigation">
					<li style="margin-top:20px;background-color:#E7E7E7;padding:10px 20px;color:#666">Description </li>
				</ul> 
			
            
		                 <div class="facts">
		                 			 <%if(bookbean.getDbBrief()==null) {%>
		                 			 <p>无</p>
		                 			 <%}else{ %>
		                 			 <p ><%=bookbean.getDbBrief() %></p>
		                 			 <%} %>   
	                     </div>

            </div>
                                
							
						</div>
					</div>
				<div class="clearfix"> </div>
			<!---->
				  <div class="cd-tabs">
			
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
     <%}} %>
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