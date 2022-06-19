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

<table border="1" align="center">

<%ClassDAO dao=new  ClassDAO();
List<ClassPOJO> emp=(List<ClassPOJO>)dao.display();
%>
<tr>
<th>Id</th>
<th>Classes</th>
<th>Teachers</th>
<th>Subjects</th>
<th>Action</th>
</tr>
<%for(ClassPOJO e:emp){ %>
<tr align="center">
<td><%=e.getClid() %></td>
<td><%=e.getClname() %></td>
<td><%=e.getClteacher() %></td>
<td><%=e.getClsub() %></td>
<td><a href="editclass.jsp">Edit</a></td>
<td><a href="deleteclass.jsp">Delete</a></td>
</tr>
<%} %>

</table> <br><br><br>
<div style="text-align:center">
<a href="Classes.jsp">Back to Classes</a>
</div>
</body>
</html>