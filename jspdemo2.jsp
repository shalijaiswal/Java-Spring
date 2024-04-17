<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
int sum(int x,int y)
{
return x+y;
}
%>
<%= "sum of x and y is" +sum(10,20) %>
</body>
</html>