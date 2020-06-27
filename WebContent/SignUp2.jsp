<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sign Up</title>
<link rel="stylesheet" href="style4.css">
</head>
<body>
<section class="container">
    <div class="login">
	<center>
      <h1>Confirmation Page</h1>
    </center>
    <%@ page import = "java.sql.*" %>  
    
	<% 	    
	    String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/Mini"; //test is the db name. 3306 is the default port
		String username = "root"; //username to db
		String password = "123"; //password to db
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url,username,password);
	    String name= request.getParameter("name"); 
	    String email= request.getParameter("email"); 
	    String uname= request.getParameter("username"); 
	    String pass= request.getParameter("password");
	    String designation= request.getParameter("designation");
	    String subject= "N/A";
	    if(designation.equals("teacher"))
	    {
	    	subject = request.getParameter("subject");
	    }
	    
	    try
	    {
		    String query = String.format("insert into registrations values (\"%s\",\"%s\",\"%s\",\"%s\",\"%s\",\"%s\")",name,email,uname,pass,designation,subject);
		    System.out.println(query);
			PreparedStatement ps =conn.prepareStatement(query);
			ps.execute();
			
			if(designation.equalsIgnoreCase("student"))
			{
				query = String.format("insert into student(username,name) values (\"%s\",\"%s\")",uname,name);
			    System.out.println(query);
			    PreparedStatement ps1 =conn.prepareStatement(query);
			    ps1.execute();
			    
			    query = String.format("insert into studentAssignment(username,name) values (\"%s\",\"%s\")",uname,name);
			    System.out.println(query);
			    ps1 =conn.prepareStatement(query);
				ps1.execute();
				
				ps1.close();
			}
			
			else if(designation.equalsIgnoreCase("teacher"))
			{
				query = String.format("insert into teacher values (\"%s\",\"%s\",\"%s\")",uname,name,subject);
			    System.out.println(query);
			    PreparedStatement ps2 =conn.prepareStatement(query);
				ps2.execute();
				ps2.close();
			}
			ps.close();
			conn.close();
	  	}
	    catch (SQLException e)
	    {
	    	if(e.getErrorCode() == 1062) //Looks like mysql is throwing 1062 error code for Duplicate Primary Key
	    		{
	 %>
	    	
	    		<br><br><a href="http://localhost:8080/Mini2/SignUp1.jsp"><b>TRY AGAIN.</b></a> Username taken.<br><br>
	    	
	 <% 
	    		System.out.println("Duplicate primary key error");
	    		return;
	    		}
	    	else
	    		System.out.println("Some Error");
	    }
    %>
    <center><h2><b>Your Credentials</b></h2></center>

    <b>Name :</b> <%=request.getParameter("name")%><br>
    <b>Email :</b> <%=request.getParameter("email")%><br>
    <b>Username :</b> <%=request.getParameter("username")%><br>
   	<b>Password :</b> <%=request.getParameter("password")%><br>
   	<b>Designation :</b> <%=request.getParameter("designation")%><br>

    
    <h5><a href=http://localhost:8080/Mini2/SignIn1.jsp>Sign in</a></h5>  
      <% 
      	System.out.println(name); 
       	System.out.println(email);
       	System.out.println(uname);
       	System.out.println(pass);
       	System.out.println(designation);
      %>
</div>
</section>     
</body>
</html>