<%@page import="com.la.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<%
TeacherDAO dao=new TeacherDAO();
List<TeacherPOJO> tea=(List<TeacherPOJO>)dao.display();
%>
<tr>
<th>Teacher ID</th>
<th>Teacher Name</th>
<th>Update</th>
<th>Delete</th>
</tr>
<%for(TeacherPOJO t:tea){ %>
<tr>
<td><%=t.getTid() %></td>
<td><%=t.getTname() %></td>
<td><a href="TeacherEdit.jsp">Edit Teacher</a></td>
<td><a href="TeacherDelete.jsp">Delete Teacher</a></td>
</tr>
<%} %>
</table>
</body>
</html>