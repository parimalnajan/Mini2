<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link rel="stylesheet" href="style2.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sign Up</title>
</head>
<body>

<section class="container">
    <div class="login">
      <h1>Confirmation Page</h1>
	<center>
     
    </center>
    <%@ page import = "java.sql.*" %>  
    
	<% 	    
	 String driver= "com.mysql.jdbc.Driver";
	  String url="jdbc:mysql://localhost:3306/Student";
	  String userName = "root";
	  String passWord= "mysql";
	  Class.forName(driver);
	  Connection conn= DriverManager.getConnection(url,userName,passWord);
	  String name= request.getParameter("name");
	  String mobile= request.getParameter("mobile");
	  String email= request.getParameter("email");
	  String username= request.getParameter("username");
	  String password= request.getParameter("password");
    
	    try{
	  	  String query= String.format("insert into registration2(name,mobile,email,username,password) values('"+name+"','"+mobile+"','"+email+"','"+username+"','"+password+"')");
	    System.out.println(query);
		PreparedStatement ps =conn.prepareStatement(query);
		ps.execute();		
		ps.close();
		conn.close();
	    }
	    catch (SQLException e)
	    {
	    	if(e.getErrorCode() == 1062) //Looks like mysql is throwing 1062 error code for Duplicate Primary Key
	    		{
	 %>
	    	
	    		<br><br><a href="http://localhost:8080/SMSWebApp1/registrationPage1.jsp"><b>TRY AGAIN.</b></a> Username taken.<br><br>
	    	
	 <% 
	    		System.out.println("Duplicate primary key error");
	    		return;
	    		}
	    	else
	    		System.out.println("Some Error");
	    }
    %>
    
    Name entered : <%=request.getParameter("name")%><br>
     Mobile entered :<%=request.getParameter("mobile")%><br>
    Email entered : <%=request.getParameter("email")%><br>
    Username  entered : <%=request.getParameter("username")%><br>
    Password entered :<%=request.getParameter("password")%><br>
      
      <% 
      	System.out.println(name); 
       	System.out.println(mobile);
       	System.out.println(email);
       	System.out.println(username);
       	System.out.println(password);
      %>
      Please LogIn<input type="button" name="login" value="Login" onclick="window.location='loginPage.jsp'">
     
</body>
</html>