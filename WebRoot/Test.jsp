<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="utf-8" contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
     
  </head>
  
  <body>
         
     					 <%String cc="1991";%>
     					 <c:set var="x" value="cc"></c:set>
						 <select name="sel_y">				 
                         <option value="1990" <c:if test="${x == '1990'}">selected</c:if>>1990</option>
                         <option value="1991" <c:if test="${x == '1991'}">selected</c:if>>1991</option>
                         <option value="1992" <c:if test="${x == '1992'}">selected</c:if>>1992</option>
                         <option value="1993" <c:if test="${x == '1993'}">selected</c:if>>1993</option>
                         <option value="1994" <c:if test="${x == '1994'}">selected</c:if>>1994</option>
                         
                         </select>年
  </body>
</html>
