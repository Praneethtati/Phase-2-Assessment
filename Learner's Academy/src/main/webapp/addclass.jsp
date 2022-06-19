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
<center>
<h1>Insert Class</h1>
<form action="addccode.jsp">
<pre>
Id                 <input type="text" name="clid"><br><br>
Class Name         <input type="text" name="clname"><br><br>
Teacher Name       <input type="text" name="case"><br><br>
Subject Name        <input type="text" name="case2"><br><br>
<input type="submit">
</pre>
</form>
Kindly Input Values from Below List<br>
<table border="1" align="left" style="width:48%">

<%SubjectDAO dao=new  SubjectDAO();
List<SubjectPOJO> emp=(List<SubjectPOJO>)dao.display();
%>
<tr><th>Subjects</th></tr>
<%for(SubjectPOJO e:emp){ %>
<tr align="center"><td><%=e.getSname() %></td></tr>
<%} %>


</table>
<table border="1" align="left" style="width:48%">

<%TeacherDAO dao1=new  TeacherDAO();
List<TeacherPOJO> emp1=(List<TeacherPOJO>)dao1.display();
%>
<tr><th>Teachers</th></tr>
<%for(TeacherPOJO e:emp1){ %>
<tr align="center"><td><%=e.getTname() %></td></tr>
<%} %>

</table>
</center>

</body>
</html>