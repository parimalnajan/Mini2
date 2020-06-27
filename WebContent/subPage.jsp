<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
      <h1>Subjects</h1>
      <center>
      <input type="button" name="show" value="TOC" onclick="window.location='assiPage1.jsp'" style="height:50px; width:300px"/><br>
      <input type="button" name="show" value="DBMS" onclick="window.location='assiPage2.jsp'" style="height:50px; width:300px"/><br>
      <input type="button" name="show" value="SEPM" onclick="window.location='assiPage3.jsp'"style="height:50px; width:300px"/><br>
      <input type="button" name="show" value="IS&EE" onclick="window.location='assiPage4.jsp'" style="height:50px; width:300px"/><br>
      <input type="button" name="show" value="CN" onclick="window.location='assiPage5.jsp'" style="height:50px; width:300px"/><br>
            <p><a href="welcomePage.jsp">Done</a></p>
           
            </center>
</body>
</html>