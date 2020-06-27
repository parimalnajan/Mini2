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

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
    <center>
  <font size="5">VIEW</font>
  </center>
  <br>
  <br>
  <!DOCTYPE html>
<html>
<head>
<style>
button.accordion {
    background-color: #eee;
    color: #444;
    cursor: pointer;
    padding: 18px;
    width: 100%;
    border: none;
    text-align: left;
    outline: none;
    font-size: 15px;
    transition: 0.4s;
}

button.accordion.active, button.accordion:hover {
    background-color: #ddd;
}

button.accordion:after {
    content: '\002B';
    color: #777;
    font-weight: bold;
    float: right;
    margin-left: 5px;
}

button.accordion.active:after {
    content: "\2212";
}

div.panel {
    padding: 0 18px;
    background-color: white;
    max-height: 0;
    overflow: hidden;
    transition: max-height 0.2s ease-out;
}
</style>
</head>
<body>
<button class="accordion">ASSIGNMENTS</button>
<div class="panel">
  <p>                  <%@ page import = "java.sql.*" %>  
      
			<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<div class="w3-container">
  <table class="w3-table">
    <% 	    
	    String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/Mini"; //test is the db name. 3306 is the default port
		String userName = "root"; //username to db
		String passWord = "123"; //password to db
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url,userName,passWord);
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
				Status[i] = rs.getString("status");
				i++;
			}
	    }
	    catch (Exception e)
	    {
	    	e.printStackTrace();
	    }
	    if(flag==0)
	    {
	 %> 
	 
	 <table>
<tr>
<th>Subject</th>
<th>TitleOfAssignments</th>
<th>Due-Date</th>
<th>Status</th>
</tr>
	<%
		for (int j =0; j < i ; j++)
		{
	
	%>
		<tr>
		<td> <%=Subjects[j]%></td>
		<td><%=Titles[j]%> </td>
		<td> <%=Duedates[j]%></td>
		<td><%=Status[j]%> </td>
		</tr>
		
	<%       
		}
	   } %>
      </tr>
  </table>
</div>

</body>
</html>

</div>

<button class="accordion">NOTICE</button>
<div class="panel">
  <p>                   <%@ page import = "java.sql.*" %>  
      <% 	    
	    String driver1 = "com.mysql.jdbc.Driver";
		String url1 = "jdbc:mysql://localhost:3306/Mini"; //test is the db name. 3306 is the default port
		String userName1 = "root"; //username to db
		String passWord1 = "123"; //password to db
		Class.forName(driver);
		Connection connn = DriverManager.getConnection(url,userName,passWord);
		String query4;
	    PreparedStatement ps1;
	    ResultSet rs1;
		int k=0;
		String n_duedates[]=new String[10];
		String n_descriptions[]=new String[10];
		int flag1 = 0;
	    try
	    {
		    query = "SELECT * FROM notice";
		    ps1 = conn.prepareStatement(query);
			rs1= ps1.executeQuery(query);
			
			while(rs1.next())
			{
				
				n_duedates[k] = rs1.getString("duedate");
				n_descriptions[k] = rs1.getString("description");
				k++;
			}
	    }
	    catch (Exception e)
	    {
	    	e.printStackTrace();
	    }
	    if(flag1==0)
	    {
	 %> 
	 
	 <table>
<tr>

<th><b>Date</b></th>
<th><b>Description</b></th>
</tr>
	<%
		for (int j =0; j < k ; j++)
		{
	
	%>
		<tr>
		<td> <%=n_duedates[j]%></td>
		<td><%=n_descriptions[j]%> </td>
		</tr>
		
	<%       
		}
	   } %>
      </tr>
  </table>
</div>

<button class="accordion">TEST</button>
<div class="panel">
  <p>                  <%@ page import = "java.sql.*" %>  
      <% 	    
	    String driver2 = "com.mysql.jdbc.Driver";
		String url2 = "jdbc:mysql://localhost:3306/Mini"; //test is the db name. 3306 is the default port
		String userName2 = "root"; //username to db
		String passWord2 = "123"; //password to db
		Class.forName(driver);
		Connection conn1 = DriverManager.getConnection(url,userName,passWord);
		String query5;
	    PreparedStatement ps5;
	    ResultSet rs5;
		int k1=0;
		String m_duedates[]=new String[10];
		String m_descriptions[]=new String[10];
		int flag7 = 0;
	    try
	    {
		    query = "SELECT * FROM test";
		    ps5 = conn.prepareStatement(query);
			rs5 = ps5.executeQuery(query);
			
			while(rs5.next())
			{
				
				n_duedates[k1] = rs5.getString("duedate");
				n_descriptions[k1] = rs5.getString("description");
				k1++;
			}
	    }
	    catch (Exception e)
	    {
	    	e.printStackTrace();
	    }
	    if(flag7==0)
	    {
	 %> 
	 
	 <table>
<tr>

<th><b>Date</b></th>
<th><b>Description</b></th>
</tr>
	<%
		for (int j =0; j < k1 ; j++)
		{
	
	%>
		<tr>
		<td> <%=n_duedates[j]%></td>
		<td><%=n_descriptions[j]%> </td>
		</tr>
		
	<%       
		}
	   } %>
      </tr>
  </table>
</div>

<script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].onclick = function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.maxHeight){
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
    } 
  }
}
</script>

</div>
</div>
<div align="left">
<br>
<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Click Here</span>
</div>
<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "450px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
</script>
     
<section class="container">
    <div class="login">
      <h1>Result of Student</h1>
                    <%@ page import = "java.sql.*" %>  
    <% 	    
      String driver5 = "com.mysql.jdbc.Driver";
		String url5 = "jdbc:mysql://localhost:3306/Mini"; //test is the db name. 3306 is the default port
		String userName5 = "root"; //username to db
		String passWord5 = "123"; //password to db
		Class.forName(driver5);
		Connection connnn = DriverManager.getConnection(url5,userName5,passWord5);
		Statement st=conn.createStatement();
		 String name = request.getParameter("result");
		String query8 = String.format("select * from result where username ='"+name+"'");
		ResultSet rsn=st.executeQuery(query8);
		if(rsn.next())
		{%>
			<tr>
			<tr><td>Name</td><td><input type="text" name="name" value="<%=rsn.getString("username")%>"></td></tr>
			<tr><td>Marks</td><td><input type="text" name="name" value="<%=rsn.getString("marks")%>"></td></tr>
			<tr><td>Grade</td><td><input type="text" name="name" value="<%=rsn.getString("grade")%>"></td></tr>
			
		<%}
%>
 <p><a href="welcomePage1.jsp">Done</a>.</p>
</body>
</html>