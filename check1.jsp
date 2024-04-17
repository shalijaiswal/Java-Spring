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
Cookie []cks=request.getCookies();
int tmp=0;
for (int i=0;i<cks.length; i++)
{
if (cks [i].getName(). equals("Mycookie"))
{
out.print("<font color='green' size='30px'>" +cks[i].getName()+ ":"+cks[i].getValue()+"<font>");
tmp=1;
}
}
if (tmp==0)
{
out.print("<font color='red' size='30px'>JSP cookie not found <font>");
}
%>

</body>
</html>