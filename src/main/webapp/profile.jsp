<%@page import="dto.userDto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%userDto user=(userDto)request.getSession().getAttribute("user"); %>
<h3><%=user.getuserName() %></h3>
<h3><%=user.getuserEmail() %></h3>
<h3><%=user.getuserContact() %></h3>
</body>
</html>