<%@page import="com.la.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int sid=Integer.parseInt(request.getParameter("sid"));
SubjectPOJO sub=new SubjectPOJO();
sub.setSid(sid);
SubjectDAO dao=new SubjectDAO();
int row=dao.deleteSub(sub);
if(row>0)
{
	response.sendRedirect("Success.jsp");
}
else
{
	response.sendRedirect("Fail.jsp");
}
%>
</body>
</html>