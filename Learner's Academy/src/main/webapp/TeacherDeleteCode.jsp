<%@ page import="com.la.*" %>
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
int tid=Integer.parseInt(request.getParameter("tid"));


TeacherPOJO tea=new TeacherPOJO();
tea.setTid(tid);


TeacherDAO dao=new TeacherDAO();
int row=dao.deleteTch(tea);
if(row>0){
	response.sendRedirect("Success.jsp");
}
else{
	response.sendRedirect("Fail.jsp");
}
%>
</body>
</html>