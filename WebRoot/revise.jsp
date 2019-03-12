<%@ page language="java" pageEncoding="utf-8" contentType="text/html" %>
<%@ page import="bean.*,java.lang.reflect.*,java.util.*,java.text.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		var Year=document.forms[0].sel_y.value;
		var Month=document.forms[0].sel_m.value;
		var Date=document.forms[0].sel_d.value;
		
		if(userName.length<=0 || userName.length>10){
			alert("用户名输入不合法！");
			return false;}
		else if(Name.length<=0 || Name.length>30){
			alert("姓名不合法！");
			return false;}
		else if(Year.length==0||Month.length==0||Date.length==0){
			alert("出生日期不合法");
			return false;
		}		
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
						<h3><div class="total">
                           
                           <p><a href="checkout.jsp">Cart</a></p>
                           <a href="checkout.jsp"><img src="images/cart2-2.png" alt="" /></a>
                        </h3>
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
	<h2>Revise</h2>
</div>
		<!---->
		<div class="container">
		<div class="register">
		<h3>PERSONAL INFORMATION</h3>
		  	  <%request.setCharacterEncoding("utf-8"); %>
		  	  <form action="./DoUpdateUserServlet" method="post" name="frmu"> 				
					<div class="mation">
					<div>
						<span>Username</span>
						<input type="text"  name="username" readOnly="true" value="<%=request.getParameter("username").trim() %>"> 
					</div>
					<div>
						<span>Name</span>
						<input type="text"  name="name" value="<%=request.getParameter("name").trim() %>"> 
					 </div>
					 <div>
						 <span>sex</span>
						 <% 
						 if(request.getParameter("sex").trim().equals("男"))
						 {
						 	out.print(" <input type=\"radio\" name=\"rdo_sex\" value=\"男\" checked><font size=\"+1\">男</font> ");
                         	out.print(" <input type=\"radio\" name=\"rdo_sex\" value=\"女\" ><font size=\"+1\">女</font> ");
                         }
                         else
                         {
                         	out.print(" <input type=\"radio\" name=\"rdo_sex\" value=\"男\" ><font size=\"+1\">男</font> ");
                         	out.print(" <input type=\"radio\" name=\"rdo_sex\" value=\"女\" checked><font size=\"+1\">女</font> ");
                         }
                         %>
				     </div>
				  	 <div>
						 <span>birth</span>
						 
					    <c:set var="x" value='<%=request.getParameter("year").trim() %>'></c:set>
						 <select name="sel_y">
                         <option value="1990" <c:if test="${x=='1990'}">selected</c:if>>1990</option>
                         <option value="1991" <c:if test="${x=='1991'}">selected</c:if>>1991</option>
                         <option value="1992" <c:if test="${x=='1992'}">selected</c:if>>1992</option>
                         <option value="1993" <c:if test="${x=='1993'}">selected</c:if>>1993</option>
                         <option value="1994" <c:if test="${x=='1994'}">selected</c:if>>1994</option>
                         <option value="1995" <c:if test="${x=='1995'}">selected</c:if>>1995</option>
                         <option value="1996" <c:if test="${x=='1996'}">selected</c:if>>1996</option>
                         <option value="1997" <c:if test="${x=='1997'}">selected</c:if>>1997</option>
                         <option value="1998" <c:if test="${x=='1998'}">selected</c:if>>1998</option>
                         <option value="1999" <c:if test="${x=='1999'}">selected</c:if>>1999</option>
                         <option value="2000" <c:if test="${x=='2000'}">selected</c:if>>2000</option>
                         <option value="2000" <c:if test="${x=='2001'}">selected</c:if>>2001</option>
                         <option value="2000" <c:if test="${x=='2002'}">selected</c:if>>2002</option>
                         <option value="2000" <c:if test="${x=='2003'}">selected</c:if>>2003</option>
                         <option value="2000" <c:if test="${x=='2004'}">selected</c:if>>2004</option>
                         <option value="2000" <c:if test="${x=='2005'}">selected</c:if>>2005</option>
                         <option value="2000" <c:if test="${x=='2006'}">selected</c:if>>2006</option>
                         <option value="2000" <c:if test="${x=='2007'}">selected</c:if>>2007</option>
                         <option value="2000" <c:if test="${x=='2008'}">selected</c:if>>2008</option>
                         <option value="2000" <c:if test="${x=='2009'}">selected</c:if>>2009</option>
                         <option value="2000" <c:if test="${x=='2010'}">selected</c:if>>2010</option>
                         </select>年
					    <c:set var="x" value='<%=request.getParameter("month").trim() %>'></c:set>
                         <select name="sel_m">
                         <option value="1" <c:if test="${x=='01'}">selected</c:if>>1</option>
                         <option value="2" <c:if test="${x=='02'}">selected</c:if>>2</option>
                         <option value="3" <c:if test="${x=='03'}">selected</c:if>>3</option>
                         <option value="4" <c:if test="${x=='04'}">selected</c:if>>4</option>
                         <option value="5" <c:if test="${x=='05'}">selected</c:if>>5</option>
                         <option value="6" <c:if test="${x=='06'}">selected</c:if>>6</option>
                         <option value="7" <c:if test="${x=='07'}">selected</c:if>>7</option>
                         <option value="8" <c:if test="${x=='08'}">selected</c:if>>8</option>
                         <option value="9" <c:if test="${x=='09'}">selected</c:if>>9</option>
                         <option value="10" <c:if test="${x=='10'}">selected</c:if>>10</option>
                         <option value="11" <c:if test="${x=='11'}">selected</c:if>>11</option>
                         <option value="12" <c:if test="${x=='12'}">selected</c:if>>12</option>                       
                         </select>月
					    <c:set var="x" value='<%=request.getParameter("date").trim() %>'></c:set>
                         <select name="sel_d">
                         <option value="1" <c:if test="${x=='01'}">selected</c:if>>1</option>
                         <option value="2" <c:if test="${x=='02'}">selected</c:if>>2</option>
                         <option value="3" <c:if test="${x=='03'}">selected</c:if>>3</option>
                         <option value="4" <c:if test="${x=='04'}">selected</c:if>>4</option>
                         <option value="5" <c:if test="${x=='05'}">selected</c:if>>5</option>
                         <option value="6" <c:if test="${x=='06'}">selected</c:if>>6</option>
                         <option value="7" <c:if test="${x=='07'}">selected</c:if>>7</option>
                         <option value="8" <c:if test="${x=='08'}">selected</c:if>>8</option>
                         <option value="9" <c:if test="${x=='09'}">selected</c:if>>9</option>
                         <option value="10" <c:if test="${x=='10'}">selected</c:if>>10</option>
                         <option value="11" <c:if test="${x=='11'}">selected</c:if>>11</option>
                         <option value="12" <c:if test="${x=='12'}">selected</c:if>>12</option>
                         <option value="13" <c:if test="${x=='13'}">selected</c:if>>13</option>
                         <option value="14" <c:if test="${x=='14'}">selected</c:if>>14</option>
                         <option value="15" <c:if test="${x=='15'}">selected</c:if>>15</option>
                         <option value="16" <c:if test="${x=='16'}">selected</c:if>>16</option>
                         <option value="17" <c:if test="${x=='17'}">selected</c:if>>17</option>
                         <option value="18" <c:if test="${x=='18'}">selected</c:if>>18</option>
                         <option value="19" <c:if test="${x=='19'}">selected</c:if>>19</option>
                         <option value="20" <c:if test="${x=='20'}">selected</c:if>>20</option>
                         <option value="21" <c:if test="${x=='21'}">selected</c:if>>21</option>
                         <option value="22" <c:if test="${x=='22'}">selected</c:if>>22</option>
                         <option value="23" <c:if test="${x=='23'}">selected</c:if>>23</option>
                         <option value="24" <c:if test="${x=='24'}">selected</c:if>>24</option>
                         <option value="25" <c:if test="${x=='25'}">selected</c:if>>25</option>
                         <option value="26" <c:if test="${x=='26'}">selected</c:if>>26</option>
                         <option value="27" <c:if test="${x=='27'}">selected</c:if>>27</option>
                         <option value="28" <c:if test="${x=='28'}">selected</c:if>>28</option>
                         <option value="29" <c:if test="${x=='29'}">selected</c:if>>29</option>
                         <option value="30" <c:if test="${x=='30'}">selected</c:if>>30</option>
                         <option value="31" <c:if test="${x=='31'}">selected</c:if>>31</option>
                         </select>日
					 </div>
                     <div>
						 <span>address</span>
						 <input type="text"  name="address" value="<%=request.getParameter("address").trim() %>">						 
					 </div>
                     <div>
						 <span>phone</span>
						 <input type="text" name="phone" value="<%=request.getParameter("phone").trim() %>">						 
					 </div>
                     <div>
						 <span>e-mail</span>
						 <input type="text"  name="email" value="<%=request.getParameter("email").trim() %>">						 
					 </div>
                     <div>
						 <span>password</span>
						 <input type="password" name="pwd_pwd" value="<%=request.getParameter("password").trim() %>" style="height:40px;width:660px">						 
					 </div>
                     <div>
						 <span>password again</span>
						 <input type="password" name="pwd_pwda" value="<%=request.getParameter("password").trim() %>" style="height:40px;width:660px">						 
					 </div>
					 </div>
				     <input type="submit" value="Save" onclick="return loginvalidate();">
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
						<li><span><i class="glyphicon glyphicon-earphone"> </i>+62 226759804 </span></li>
						<li><a href="mailto:info@example.com"><i class="glyphicon glyphicon-envelope" class="mes"> </i>info@example.com</a></li>
						<li><a href="#"><i class="glyphicon glyphicon-link" class="mes-in"> </i>http://example.com</a></li>
					</ul>
					<a href="#"><img src="images/pa.png" alt=""></a>
					</div>
			</div>
			<div class="clearfix"> </div>
			<p class="footer-class"> </p>
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