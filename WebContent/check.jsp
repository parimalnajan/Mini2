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
	    String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/Student"; //test is the db name. 3306 is the default port
		String userName = "root"; //username to db
		String passWord = "123"; //password to db
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url,userName,passWord);
		String username= request.getParameter("login"); 
	    String password= request.getParameter("password");
		    
	  try{
		  	
	    String query = String.format("select username,password from registration2 where username = '"+username+"'");
	    System.out.println(query);
		PreparedStatement ps =conn.prepareStatement(query);
		ResultSet rs = ps.executeQuery(query);
		String pa="",un="";
		if(rs.next()){
			pa=rs.getString("password");
			un=rs.getString("username");
		if(password.equals(pa) && username.equals(un))
		{
			%>
			LogIn Successful
			<input type="button" name="log" value="Welcome" onclick="window.location='welcomePage.jsp'">
			
		<%}
		else
		{      	
		%> 
			Credentials don't match. Please try again.
			<input type="button" name="log" value="LogIn" onclick="window.location='loginPage.jsp'">
			
		<% }
	  }
		try{
			 String ks= String.format("insert into login(username,password) values('"+username+"','"+password+"')");
			    System.out.println(ks);
				PreparedStatement pstmt =conn.prepareStatement(ks);
				pstmt.execute();		
				pstmt.close();
				conn.close();	
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		rs.close();
		ps.close();
		conn.close();
	  }
	  catch(SQLException e)
	  {
		  System.out.println("Some Error");
	  }
	%>
     
</body>
</html>