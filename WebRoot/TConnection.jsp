<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import = "java.sql.*" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'TConnection.jsp' starting page</title>
    
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
  <%
  	//声明数据库连接对象
  	Connection conn = null;
  	//加载数据库驱动类
  	Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
  	String url="jdbc:oracle:thin:@localhost:1521:orcl";
  	//根据数据库参数取得一个数据库连接
  	conn = DriverManager.getConnection(url,"sysman","AAAaaa123");
  	//out.print("取得数据库连接:\n");
  	//	out.print(conn.toString());
  	
  	Statement stat = null;
  	stat = conn.createStatement();
  	/*String sql = "insert into \"test\"(id,name,password) values('0102','lin','654321')";
  	if(stat.executeUpdate(sql)==1)
	  	out.print("插入成功\n");
  	else
  		out.print("插入失败\n");
  	if(stat!=null)
  		stat.close();
  	if(conn!=null)
  		conn.close();*/
  		
  	String sql = "select * from \"test\"";
  	ResultSet rs = null;
  	rs=stat.executeQuery(sql);
  	%>
  	<table width ="260" cellSpacing=0 height="12" style="font-size:10pt;border:1pt">
  	<% 
  		
  		while(rs.next())
  		{
  			out.print("<tr style='border:solid 1pt'>");
  			out.print("<td style='border:solid 1pt'>"+rs.getString("id")+"</td>");
  			out.print("<td style='border:solid 1pt'>"+rs.getString("name")+"</td>");
  			out.print("<td style='border:solid 1pt'>"+rs.getString("password")+"</td>");
  			out.print("</tr>");
  		}
  		
  		if(rs!=null)
  			rs.close();
  		if(stat!=null)
  			stat.close();
  		if(conn!=null)
  			conn.close();
  	%>  	
  	
  	</table>
  </body>
</html>
