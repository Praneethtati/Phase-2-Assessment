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
<h1>Insert the subject</h1>
<form action="SubjectInsertCode.jsp">

Subject ID&emsp;<input type="text" name="sid"><br><br>
Subject Name&emsp;<input type="text" name="sname"><br><br>
<input type="submit" value="Insert">

</form>

<br>
<br>

<a href="SubjectList.jsp">View existing subjects</a>
</div>
</body>
</html>