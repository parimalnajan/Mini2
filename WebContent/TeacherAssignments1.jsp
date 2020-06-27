<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Assignment</title>
<link rel="stylesheet" href="style4.css">
</head>
<body>
<style>
body {
    font-family: "Lato", sans-serif;
}

.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #ADD8E6;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.sidenav a:hover {
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
</head>
<body>

<div id="mySidenav" class="sidenav" align="centre">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <center>
  <font size="5">UPDATE</font>
  </center>
  <br>
  <br>
  <a href="TeacherAssignments1.jsp">ASSIGNMENTS</a><br>
    <a href="Notice.jsp">NOTICE</a><br>
    <a href="Test.jsp">TEST</a>
  
</div>
<div align="left">
<br>
<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Click Here</span>
</div>
<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "400px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
</script>
<section class="container">
    <div class="login">
<object align = "right">	<a href = "SignOut.jsp">Sign Out</a> </object>
	<form action = "TeacherAssignments2.jsp" method="post">
		<pre>
			Assignment ID : <input type = "text" name = "assignmentID"/>
			Title : <input type = "text" name = "title"/>
			Start Date : <input type = "date" name = "startdate"/>
			Due Date(dd/mm/yyyy) : <input type = "date" name = "duedate"/>
			Description :<input type="text" name="description1"></textarea>
			Attachment : <input type = "file" name = "attachment">
			
			
			<input type="submit" value="Submit!"/><br>
			 <input type="button" type="submit" onclick="window.location='tempTeacherAssignments1.jsp'" value="BACK"><br>
			
		</pre>
	</form>
</div>
</section>
</body>
</html>