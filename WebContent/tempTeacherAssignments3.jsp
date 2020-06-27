<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Review Assignments</title>
</head>
<body>

<object align = "right">
<form action = "tempTeacherAssignments3.jsp" method = "post">
	<select name = "filter">
	<option disabled selected value = ""> -- Select an option -- </option>
		<option value = "D">Done</option>
		<option value = "S">Submitted for Review</option>
		<option value = "R">Redo</option>
		<option value = "NS">Not Submitted</option>
	</select>
	
	<input type = submit value = "Apply Filter"><br><br/>
	
</form>
</object>
<br><br/>
 	<object align = "left"><jsp:include page="TeacherAssignments3.jsp"/></object>
 	

</body>
</html>