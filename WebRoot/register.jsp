<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html"%>
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

<!-- 校验注册信息是否合法 -->
<script type="text/javascript" language="javascript">
	function loginvalidate(){
		var userName=document.forms[0].username.value;
		var Name=document.forms[0].name.value;
		var Address=document.forms[0].address.value;
		var Phone=document.forms[0].phone.value;
		var Email=document.forms[0].email.value;
		var passWord=document.forms[0].pwd_pwd.value;
		var passWorda=document.forms[0].pwd_pwda.value;
		
		if(userName.length<=0 || userName.length>10){
			alert("用户名输入不合法！");
			return false;}
		else if(Name.length<=0 || Name.length>30){
			alert("姓名不合法！");
			return false;}
		else if(Address.length<=0 || Address.length>30){
			alert("地址不合法！");
			return false;}
		else if(Phone.length<8 || Phone.length>11){
			alert("电话不合法！");
			return false;}
		else if(Email.length<=0 || Email.length>30){
			alert("邮箱不合法！");
			return false;}
		else if(passWord.length<6 || passWord.length>16){
			alert("密码输入不合法！");
			return false;}
		else if(passWord != passWorda){  //???判断var变量一致			
			alert("两次输入的密码不一致！");
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
			<div class="clearfix"> </div>
		</div>
		</div>	
 				<div class="clearfix"> </div>	
			</div>
<!---->
<div class="back">
	<h2>Register</h2>
</div>
		<!---->
		<div class="container">
		<div class="register">
		<h3>PERSONAL INFORMATION</h3>
		  	  <form action="./DoAddUserServlet" method="post" name="frm"> 				
				<div class="mation">
					<div>
						<span>Username</span>
						<input type="text"  name="username"> 
					</div>
					<div>
						<span>Name</span>
						<input type="text"  name="name"> 
					 </div>
					 <div>
						 <span>sex</span>
						 <input type="radio" name="rdo_sex" value="男" checked><font size="+1">男</font>
                         <input type="radio" name="rdo_sex" value="女" ><font size="+1">女</font>
				     </div>
					 <div>
						 <span>birth</span>
						 <select name="sel_year">
                         <option value="1990">1990</option>
                         <option value="1991">1991</option>
                         <option value="1992">1992</option>
                         <option value="1993">1993</option>
                         <option value="1994">1994</option>
                         <option value="1995">1995</option>
                         <option value="1996">1996</option>
                         <option value="1997">1997</option>
                         <option value="1998">1998</option>
                         <option value="1999">1999</option>
                         <option value="2000">2000</option>
                         <option value="2000">2001</option>
                         <option value="2000">2002</option>
                         <option value="2000">2003</option>
                         <option value="2000">2004</option>
                         <option value="2000">2005</option>
                         <option value="2000">2006</option>
                         <option value="2000">2007</option>
                         <option value="2000">2008</option>
                         <option value="2000">2009</option>
                         <option value="2000">2010</option>
                         </select>年
                         <select name="sel_month">
                         <option value="1">1</option>
                         <option value="2">2</option>
                         <option value="3">3</option>
                         <option value="4">4</option>
                         <option value="5">5</option>
                         <option value="6">6</option>
                         <option value="7">7</option>
                         <option value="8">8</option>
                         <option value="9">9</option>
                         <option value="10">10</option>
                         <option value="11">11</option>
                         <option value="12">12</option>                         
                         </select>月
                         <select name="sel_date">
                         <option value="1">1</option>
                         <option value="2">2</option>
                         <option value="3">3</option>
                         <option value="4">4</option>
                         <option value="5">5</option>
                         <option value="6">6</option>
                         <option value="7">7</option>
                         <option value="8">8</option>
                         <option value="9">9</option>
                         <option value="10">10</option>
                         <option value="11">11</option>
                         <option value="12">12</option>
                         <option value="13">13</option>
                         <option value="14">14</option>
                         <option value="15">15</option>
                         <option value="16">16</option>
                         <option value="17">17</option>
                         <option value="18">18</option>
                         <option value="9">19</option>
                         <option value="20">20</option>
                         <option value="21">21</option>
                         <option value="22">22</option>
                         <option value="23">23</option>
                         <option value="24">24</option>
                         <option value="25">25</option>
                         <option value="26">26</option>
                         <option value="27">27</option>
                         <option value="28">28</option>
                         <option value="29">29</option>
                         <option value="30">30</option>
                         <option value="31">31</option>
                         </select>日
					 </div>
                     <div>
						 <span>address</span>
						 <input type="text"  name="address">						 
					 </div>
                     <div>
						 <span>phone</span>
						 <input type="text" name="phone">						 
					 </div>
                     <div>
						 <span>e-mail</span>
						 <input type="text"  name="email">						 
					 </div>
                     <div>
						 <span>password</span>
						 <input type="password" name="pwd_pwd" style="height:40px;width:660px">						 
					 </div>
                     <div>
						 <span>password again</span>
						 <input type="password" name="pwd_pwda" style="height:40px;width:660px">						 
					 </div>
				  </div>
				  	 <input type="hidden" name="isma" value="0">
				     <input type="submit" value="submit" onclick="return loginvalidate();" >
				     <input type="reset" value="reset" style="height:35px;width:80px;background:none;border:1px solid #000">
				</form>
				
				
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