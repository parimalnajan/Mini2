<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="style2.css">
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
    <h1>Submission Done</h1>
        <%@ page import = "java.sql.*" %>  
    
<%
String driver= "com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/Student";
String userName = "root";
String passWord= "mysql";
Class.forName(driver);
Connection conn= DriverManager.getConnection(url,userName,passWord);
String name= request.getParameter("NAME");
String submitted_1= request.getParameter("hobbies1");
String submitted_2= request.getParameter("hobbies2");
String submitted_3= request.getParameter("hobbies3");
String submitted_4= request.getParameter("hobbies4");
String submitted_5= request.getParameter("hobbies5");
String submitted_6= request.getParameter("hobbies6");
String project= request.getParameter("hobbies7");


  try{
	  String query= String.format("insert into TOC(username,submitted_1,submitted_2,submitted_3,submitted_4,submitted_5,submitted_6,project) values('"+name+"','"+submitted_1+"','"+submitted_2+"','"+submitted_3+"','"+submitted_4+"','"+submitted_5+"','"+submitted_6+"','"+project+"')");
  System.out.println(query);
	PreparedStatement ps =conn.prepareStatement(query);
	ps.execute();		
	ps.close();
	conn.close();
  }
  catch (SQLException e)
  {
  		System.out.println("Some Error");
  }
%>

UserName  : <%=request.getParameter("NAME")%><br>
ASSI-1 :<%=request.getParameter("hobbies1")%><br>
ASSI-2 : <%=request.getParameter("hobbies2")%><br>
ASSI-3 : <%=request.getParameter("hobbies3")%><br>
ASSI-4 : <%=request.getParameter("hobbies4")%><br>
ASSI-5 : <%=request.getParameter("hobbies5")%><br>
ASSI-6 : <%=request.getParameter("hobbies6")%><br>
PROJECT : <%=request.getParameter("project")%><br>


<% 
	System.out.println(name); 
 	System.out.println(submitted_1);
 	System.out.println(submitted_2);
	System.out.println(submitted_3); 
 	System.out.println(submitted_4);
 	System.out.println(submitted_5);
	System.out.println(submitted_6); 
 	System.out.println(project);
%>
<center>
<a href="welcomePage1.jsp">Go to Welcome Page</a>
</center>
</body>
</html>