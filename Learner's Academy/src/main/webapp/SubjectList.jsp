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
<div style="text-align:center" >
<table border="1">
<%
SubjectDAO dao=new SubjectDAO();
List<SubjectPOJO> sub=(List<SubjectPOJO>)dao.display();
%>

<tr>
<th>Subject ID</th><th>Subject Name</th><th>Update</th><th>Delete</th>
</tr>

<%for(SubjectPOJO s:sub) {%>
<tr>
<td><%=s.getSid() %></td>
<td><%=s.getSname() %></td>
<td><a href="SubjectEdit.jsp">Edit Subject</a></td>
<td><a href="SubjectDelete.jsp">Delete Subject</a></td>
</tr>
<%} %>
</table>
</div>
</body>
</html>