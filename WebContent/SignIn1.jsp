<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="style4.css">
<title>Sign In</title>
</head>
<body>
<section class="container">
    <div class="login">
      <h1>Login to Database</h1>
<form action = "SignIn2.jsp" method="post">
	<pre>
		Username : <input type = "text" name = "username"/>
		Password : <input type = "password" name = "password"/>
		<input type="submit" value="Sign In!"/>
		<br>
 <input type="button" type="submit" onclick="window.location='indexPage.jsp'" value="HOME"><br>
		
	</pre>
</form>
</div>
</section>
</body>
</html>