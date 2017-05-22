<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Jaguars</title>
</head>
<body>
<jsp:include page="Login.html"/>
 
 <%   
 session.invalidate();  
  %>
  
  <font size="4" color="green"><p align="center">You are successfully logged out!</p></font>
</body>
</html>