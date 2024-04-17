<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
//Create a new cookie
Cookie cookie = new Cookie("Mycookie", "shalini");

// Set the maximum age of the cookie to 24 hours (in seconds)
cookie.setMaxAge(30);

// Add the cookie to the response
response.addCookie(cookie);
out.print("cookie submitted successfully");
%>
<a href ="check1.jsp">
Check CookIE
</a>
</body>
</html>