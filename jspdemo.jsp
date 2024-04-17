<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<STYLE>
H1{
color:red;
}</STYLE>
</head>
<body>
<%  
String name=request.getParameter("name");  
out.print("welcome "+name);  
%>  
<H1>my name</H1>

</body>
</html>