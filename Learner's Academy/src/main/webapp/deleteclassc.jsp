<%@page import="com.la.ClassDAO"%>
<%@page import="com.la.ClassPOJO"%>
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
int clid=Integer.parseInt(request.getParameter("clid"));

ClassPOJO sb=new ClassPOJO();
sb.setClid(clid);

ClassDAO dao=new ClassDAO();
int row=dao.deleteCls(sb);

if(row>0)
{
	response.sendRedirect("Success.jsp");
}

else{
	response.sendRedirect("Fail.jsp");
}


%>
</body>
</html>