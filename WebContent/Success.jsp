<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Jaguars</title>
</head>
<body background="Jaguar-Logo-1208 (1).jpg">
<p align="right"><a href="Logout.jsp">Signout</a></p>
<p align="center"><font size="6" color="green">You are Successfully signed in</font></p>
<% String n=request.getParameter("username");%>
<p align="center"><font size="5"color="green">Welcome <% out.print(n); %></font></p>
</body>
</html>