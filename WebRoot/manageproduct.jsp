<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="bean.*,java.util.*" %>
<jsp:useBean id="bookoperat" class="bean.BookOperatImpl" scope="request"/>
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

<!-- ------------------->
<script type="text/javascript" language="javascript">
	function isempty(){
		var Bookname=document.forms[0].bookname.value;
		
		if(Bookname.length<=0){
			alert("搜索内容为空！");
			return false;
		}
		else
			document.forms[0].submit();
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

																
							
								
							<div class="clearfix"> </div>
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
<div class=" per1">
				
			</div>
				</div>
				<!---->
				<%request.setCharacterEncoding("utf-8"); %>
				<div class="col-md-9 product-price1">
	  <div class="check-out">	 
		
         <div class="in-check">
         <%UserBean userbean =null;
			 if(session.getAttribute("userbean_s")==null){%>
					  
					  <a href="account.jsp" style="color:#F60">您还未登陆，点击此处进行登陆</a>
					  
					  <% }else{
							  userbean=(UserBean)session.getAttribute("userbean_s"); 
							  if(userbean.getDbIsManage()==0){%>
					  <a href="account.jsp" style="color:#F60">您没有权限，请点击此处登陆管理员账户，</a>
					  <%        }else{%>	
              
         <a href="addbook.jsp" style="margin:30px;float:right;background-color:#FF5959;border:none;color:#FFF;padding:10px">Add Book</a>
         
         <form action="./DoNameBookServlet"  style="float:right;" method="post">
         	<table style="margin-top:25px"><tr>
            <td><input type="text" name="bookname" style="height:24px;margin-right:15px;margin-top:10px"></td>
           
            <td><input type="image" src="images/search.jpg" style="height:22px;width:22px;float:right;margin-top:10px" onclick="return isempty();"></td> 
           
            </tr>
            </table>
         </form>
         	
         </div>
         <div class=" cart-items">
			 <h3>Book Information</h3>				
			
	         
		         <div class="in-check" >
				  <ul class="unit">
					<li><span>bookID</span></li>
	            	<li><span>BookName</span></li>
	            	<li><span>Write</span></li>
	            	<li><span>Cateory</span></li>
	            	<li><span>Price</span></li>		     
					<div class="clearfix"> </div>
				  </ul>
				  <%List list=null;
				  if(session.getAttribute("mark")==null){
				  		list=bookoperat.getallbook(); }
				    else if((int)session.getAttribute("mark")==0){
				    	String bookname=(String)request.getAttribute("bookname");
				    	list=bookoperat.selectbookbyname(bookname);
				    	session.setAttribute("mark", null);
				    }
				    BookBean bookbean=null;
				    for(int i=0;i<list.size();i++){
				    	//从list中获取Object对象，强制转换为UserBean对象
				    	bookbean=(BookBean)list.get(i);
				  %>
				  <ul class="cart-header">
				    <a href="detailma.jsp?bookid=<%=bookbean.getDbBookID() %>"><li><p style="text-decoration:underline;color:#F90"><%=bookbean.getDbBookID() %></p></li></a>
				    <li><%=bookbean.getDbBookName() %></li>			    
				    <li><%=bookbean.getDbWriter() %></li>
				    <li><%=bookbean.getDbCategory() %></li>			    
				    <li><%=bookbean.getDbSellPrice() %></li>				    
				    
                    <form action="./DoDeleteBookServlet" method="post">	
				    	<input type="hidden" name="bookid" value="<%=bookbean.getDbBookID() %>" />	
				    	<input type="submit" value="delete" style="margin:10px;float:right;background-color:#FF5959;border:none;color:#FFF"/>	
			        </form> 
                    <form action="editbook.jsp" method="post">	
				    	<input type="hidden" name="bookid" value="<%=bookbean.getDbBookID() %>" />
				    	<input type="hidden" name="imagename" value="<%=bookbean.getDbBookimage() %>" />
				    	<input type="hidden" name="bookname" value="<%=bookbean.getDbBookName() %>" />	
				    	<input type="hidden" name="writer" value="<%=bookbean.getDbWriter() %>" />
				    	<input type="hidden" name="publisher" value="<%=bookbean.getDbPublisher() %>" />
				    	<input type="hidden" name="category" value="<%=bookbean.getDbCategory() %>" />
				    	<input type="hidden" name="course" value="<%=bookbean.getDbCourse() %>" />
				    	<input type="hidden" name="price" value="<%=bookbean.getDbSellPrice() %>" />
				    	<input type="hidden" name="brief" value="<%=bookbean.getDbBrief() %>" />				    	
				    	<input type="submit" value="edit" style="margin:10px;float:right;background-color:#FF5959;border:none;color:#FFF"/>	
			        </form> 
				    <div class="clearfix"> </div>
				  </ul>
			      <%}}} %>			  
			</div>
			 	
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