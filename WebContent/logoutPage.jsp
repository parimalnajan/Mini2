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
<section class="container">
    <div class="login">
      <h1>Confirm Delete</h1>
	<% 	    
	 String driver= "com.mysql.jdbc.Driver";
	  String url="jdbc:mysql://localhost:3306/Student";
	  String userName = "root";
	  String passWord= "mysql";
	  Class.forName(driver);
	  Connection conn= DriverManager.getConnection(url,userName,passWord); 
	  Statement stmt=conn.createStatement();
	  	  String query= String.format("truncate table login");
	    System.out.println(query);
	    stmt.execute(query);
		conn.close();
 %>
 SUCCESSFULLY LOGGED OUT!!<input type="button" name="done" value="Done" onclick="window.location='indexPage.jsp'">
</body>
</html>