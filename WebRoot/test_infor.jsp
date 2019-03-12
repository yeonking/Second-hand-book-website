<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'test_infor.jsp' starting page</title>
  </head>
  
  <body>
    <% String patient_id=request.getParameter("patient_id");
    out.print(patient_id);%>
  </body>
</html>
