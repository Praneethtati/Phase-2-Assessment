<%@page import="com.la.*"%>
<%@page import="java.util.*" %>
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
String sname=request.getParameter("sname");
SubjectPOJO sub=new SubjectPOJO();
sub.setSid(sid);
sub.setSname(sname);
SubjectDAO dao=new SubjectDAO();
int row=dao.updateSub(sub);
if(row>0)
{
	response.sendRedirect("SubjectList.jsp");
}
else
{
	response.sendRedirect("Fail.jsp");
}
%>
</body>
</html>