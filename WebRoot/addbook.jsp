<%@ page language="java" import="java.util.*,bean.*" pageEncoding="utf-8" contentType="text/html"%>
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

<!-- 校验信息是否合法 -->
<script type="text/javascript" language="javascript">
	function loginvalidate(){
		var Bookname=document.forms[0].bookname.value;
		var Imagename=document.forms[0].imagename.value;
		var Writer=document.forms[0].writer.value;
		var Publisher=document.forms[0].publisher.value;			
		var Price=document.forms[0].price.value;
		var Category=document.forms[0].category.value;
				
		if(Bookname.length==0 || Bookname.length>100){
			alert("书名输入不合法！");
			return false;}
		else if(Imagename.length<=0 || Imagename.length>60){
			alert("图片名称不合法！");
			return false;}
		else if(Writer.length<=0 || Writer.length>30){
			alert("作者输入不合法！");
			return false;}
		else if(Publisher.length<=0 || Publisher.length>50){
			alert("出版社输入不合法！");
			return false;}		
		else if(Price.length<=0){
			alert("价格输入不合法！");
			return false;}
		else if(Category.length<=0){
			alert("未选择类别！");
			return false;}
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

<script src="js/simpleCart.min.js"> </script>
<!-- start menu -->
<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>	
<!-- /start menu -->
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
		 <!---->
		 
			<div class="top-nav">
			  <div class="clearfix"> </div>
			</div>
					<!---->
					

<div class="clearfix"> </div>
					<!---->
				</div>
			<div class="clearfix"> </div>
		</div>
		</div>	
 				<div class="clearfix"> </div>	
			</div>
<!---->
<div class="back">
	<h2>Add Book</h2>
</div>
		<!---->
		<div class="container">
		<div class="register">
		<h3>BOOK INFORMATION</h3>
		<% if(session.getAttribute("userbean_s")==null){%>
				  
				  <a href="account.jsp" style="color:#F60">您还未登陆，点击此处进行登陆</a>
				  
				  <% }else{
						  UserBean userbean=(UserBean)session.getAttribute("userbean_s"); 
						  if(userbean.getDbIsManage()==0){%>
				  <a href="account.jsp" style="color:#F60">您没有权限，请点击此处登陆管理员账户，</a>
				  <%        }else{%>
		  	  <form action="./DoAddBookServlet" method="post" name="frm" ENCTYPE="multipart/form-data"> 				
				<div class="mation">
					<div>
						<span>BookName</span>
						<input type="text"  name="bookname" > 
					</div>
					<div>
						<span>ImageName</span>
						<input type="text"  name="imagename" > 
					 </div>
                     
                     <div>
						<span>UploadImage</span>
						<input type="file" name="file1" style="width:240;">                        
				 	 </div> 
					 
                     <div>
						 <span>Writer</span>
						 <input type="text"  name="writer" >						
					 </div>
                     <div>
						 <span>Publisher</span>
						 <input type="text"  name="publisher">						
					</div>
					<div>
					    <span>Category</span>
					    <select name="category">
                         <option value="">--请选择类别--</option>
                         <option value="小说">小说</option>
                         <option value="散文">散文</option>
                         <option value="青春文学">青春文学</option>
                         <option value="传记">传记</option>
                         <option value="哲学">哲学</option>
                         <option value="历史">历史</option>
                         <option value="政治">政治</option>
                         <option value="财经">财经</option>
                         <option value="军事">军事</option>
                         <option value="管理">管理</option>
                         <option value="科学">科学</option>
                         <option value="小学教辅">小学教辅</option>
                         <option value="中学教辅">中学教辅</option>
                         <option value="大学教辅">大学教辅</option>
                         </select>
					 </div>
                     
                     <div>
						 <span>Course</span>
						 <input type="text" name="course" >						 
					 </div>
                     <div>
						 <span>Price</span>
						 <input type="text"  name="price" >						 
					 </div>
                     <div>
						 <span>Brief</span>
						 <textarea wrap="soft" style="width:660;height:100" name="brief"></textarea>
                        
					 </div> 
					<!--   <div>
						<span>上传图片</span>
						<input type="file" name="file1">                        
					 </div>-->
				  </div>				  	 
				     <input type="submit" value="submit" onclick="return loginvalidate();" >
				     <input type="reset" value="reset" style="height:35px;width:80px;background:none;border:1px solid #000">
				</form>
				<%}} %>
				
		   </div>
			</div>
			
			<!---->
					<div class="bottom-grid1">
					
					<div class="fit1">
						<h3>HAPPY READING</h3>
						<p>People die, but books never die. No man and no force can abolish memory. ——Franklin Roosevelt</p>
					</div>
				</div>
<!---->
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