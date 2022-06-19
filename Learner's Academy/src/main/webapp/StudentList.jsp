<%@ page import="com.la.*" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="text-align:center">
<table border="1" align="center">

<%StudentDAO dao=new  StudentDAO();
List<StudentPOJO> emp=(List<StudentPOJO>)dao.display();
%>

<tr>
<th>Id</th>
<th>Name</th>
<th>DOB</th>
<th>Address</th>
<th>Phone</th>
<th>Class</th>
<th>Action</th></tr>

<%for(StudentPOJO e:emp){ %>
<tr>
<td><%=e.getId() %></td>
<td><%=e.getName() %></td>
<td><%=e.getDob() %></td>
<td><%=e.getAddress() %></td>
<td><%=e.getPhone() %></td>
<td><%=e.getClasses() %></td>
<td><a href="StudentEdit.jsp">Edit</a></td>
<td><a href="StudentDelete.jsp">Delete</a></td>
</tr>

<%} %>
</div>
</table> <br><br><br>
<a href="Student.jsp">Back to Students</a>

</body>
</html>