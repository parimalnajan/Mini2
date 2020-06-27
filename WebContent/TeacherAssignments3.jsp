<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "aA.Test" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Review Assignments</title>
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
	<center><h1><b>Review Assignments</b></h1></center>
	<%@ page import = "java.sql.*" %>
	
	<a href = "http://localhost:8080/Mini2/TeacherWelcome.jsp">HOME</a>
	
	<%
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/Mini"; //test is the db name. 3306 is the default port
		String username = "root"; //username to db
		String password = "123"; //password to db
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url,username,password);
		
		String filter = request.getParameter("filter");
		System.out.println("Filter : "+filter);
		if(filter == null)
		{
			filter = "D"; 
		}
		System.out.println("--> "+filter);
		
		int i=0;		
		String query;
	    PreparedStatement ps;
	    ResultSet rs,rs1;
			    
	    /*
	    	1. Look at all the submitted assignments.
	    	2. Change their status.
	    */
	    System.out.println("TEST_Subject : "+Test.subject);
	    query = String.format("SELECT assignmentID FROM assignments WHERE subject = \"%s\" AND status = \"Ongoing\"",Test.subject);
	    System.out.println(query);
	    ps =conn.prepareStatement(query);
		rs = ps.executeQuery(query);
		while(rs.next())
		{
			Test.assignmentID[i++]=rs.getString("assignmentID");
			Test.subjectAssignmentCount++;
			//System.out.println(Test.assignmentID[i-1]);
		}
		System.out.println(" i= "+i);
		int ji=0;
	    for(int k=0;k<i;k++)
	    {
		    query = String.format("SELECT username,name FROM studentAssignment WHERE %s = \"%s\"",Test.assignmentID[k],filter);
		    System.out.println(">"+query);
		    ps =conn.prepareStatement(query);
			rs1 = ps.executeQuery(query);
			while(rs1.next())
			{
				Test.names[ji]=rs1.getString("name");
				Test.unames[ji]=rs1.getString("username");
				Test.assignmentIDs[ji]=Test.assignmentID[k];
				//System.out.println("-->"+Test.names[ji]+" "+Test.unames[ji]+" "+Test.assignmentID[k]);
				ji++;
				Test.a++;				
			}
	    }
		ps.close();
		conn.close();
		//System.out.println("---->"+ji);
	%>
	
<form action = "tempTeacherAssignments.jsp" method="post">	
	<table>
		<tr>
			<th>Sr.No.</th>
			<th>Student Name</th>
			<th>Assignment ID</th>
			<th>Input</th>
		</tr>
		
	<%
		for (int j =0; j < ji ; j++)
		{
	%>
		<tr>
			<td align="center"> <%=j+1%></td>
			<td align="center"> <%=Test.names[j]%></td>
			<td align="center"> <%=Test.assignmentIDs[j]%></td>
			<td align="center">
				<select name = "<%="input"+j %>">
					<option value = "D">Done</option>
					<option value = "R">Redo</option>
					<option value = "NS">Not Submitted</option>
				</select>
			</td>
		</tr>
	<%       
		}
	%>
		
	</table>
	<input type="submit" value="Update"/><br>
<input type="button" type="submit" onclick="window.location='TeacherWelcome.jsp'" value="BACK"><br>
	
</form>	
</div>
</section>
</body>
</html>