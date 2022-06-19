<%@page import="com.la.StudentDAO"%>
<%@page import="com.la.StudentPOJO"%>
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
int stuid=Integer.parseInt(request.getParameter("id"));

StudentPOJO stu=new StudentPOJO();
stu.setId(stuid);
StudentDAO dao=new StudentDAO();
int row=dao.deleteStd(stu);
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