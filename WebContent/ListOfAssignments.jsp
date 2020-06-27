<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List of Assignments</title>
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
	<h1>Recent Assignments</h1>
	<%@ page import = "java.sql.*" %>
	
	
	<%
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/Mini"; //test is the db name. 3306 is the default port
		String username = "root"; //username to db
		String password = "123"; //password to db
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url,username,password);

		String query;
	    PreparedStatement ps;
	    ResultSet rs;
		int i=0;
		String Subjects[]=new String[10];//TODO use count
		String Titles[]=new String[10];
		String Duedates[]=new String[10];
		String Startdates[]=new String[10];
		String Status[]=new String[10];
		int flag = 0;
	    try
	    {
		    query = "SELECT * FROM assignments";
		    ps = conn.prepareStatement(query);
			rs = ps.executeQuery(query);
			
			while(rs.next())
			{
				Subjects[i] = rs.getString("subject");
				Titles[i] = rs.getString("title");
				Duedates[i] = rs.getString("duedate");
				Startdates[i] = rs.getString("startdate");
				Status[i] = rs.getString("status");
				i++;
			}
	    }
	    catch (Exception e)
	    {
	    	out.println("No ongoing assignments!");
	    	flag = 1;
	    }
	    if(flag==0)
	    {
	 %> 
	 
	 <table>
<tr>
<th>Sr.No.</th>
<th>Subject</th>
<th>Title</th>
<th>Start-Date</th>
<th>Due-Date</th>
<th>Status</th>
</tr>
	<%
		for (int j =0; j < i ; j++)
		{
	
	%>
		<tr>
		<td> <%=j+1%></td>
		<td> <%=Subjects[j]%></td>
		<td><%=Titles[j]%> </td>
		<td> <%=Startdates[j]%></td>
		<td> <%=Duedates[j]%></td>
		<td><%=Status[j]%> </td>
		</tr>
		
	<%       
		}
	   }
	%>
	

</table>

</div>

</section><br>

</body>
</html>