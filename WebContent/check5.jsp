<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                    <%@ page import="java.sql.*" %>
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
      <h1>Confirm Update</h1>
      
	<% 	    
	 String driver= "com.mysql.jdbc.Driver";
	  String url="jdbc:mysql://localhost:3306/Mini";
	  String userName = "root";
	  String passWord= "123";
	  Class.forName(driver);
	  Connection conn= DriverManager.getConnection(url,userName,passWord);
	  String name= request.getParameter("stuname");
	  int marks= Integer.parseInt(request.getParameter("course"));
	  String grade= request.getParameter("grade");
	  
    
	    try{
	  	  String query= String.format("insert into result(username,marks,grade) values('"+name+"','"+marks+"','"+grade+"')");
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
    
    Name entered : <%=request.getParameter("stuname")%><br>
     Marks entered :<%=request.getParameter("course")%><br>
    Grade entered : <%=request.getParameter("grade")%><br>
      
      <% 
      	System.out.println(name); 
       	System.out.println(marks);
       	System.out.println(grade);
       	%>
      Update Done<input type="button" name="done" value="Done" onclick="window.location='result.jsp'"><br>
      <br>
     <input type="button" type="submit" onclick="window.location='updtresultPage.jsp'" value="BACK"><br>
      
</body>
</html>