<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="style4.css">
<title>Sign Up</title>
</head>
<body>
<section class="container">
    <div class="login">
    <h1>Sign Up</h1>
<form action = "SignUp2.jsp" method="post">
<pre>
	Name        : <input type = "text" name = "name"><br>
	E-Mail ID   : <input type = "text" name = "email"><br>
	Username    : <input type = "text" name = "username"><br>
	Password    : <input type = "password" name = "password"><br>
	Designation : <select name = "designation" onchange="yesnoCheck(this);">
				    <option value="student">Student</option>
				    <option value="teacher">Teacher</option>
			      </select>			
			    <div id="ifYes" style="display: none;">
			    	<label for="subject">Subject : </label> <select name = "subject" id = "subject">
															    <option value="toc">ToC</option>
															    <option value="dbms">DBMS</option>
															    <option value="sepm">SEPM</option>
															    <option value="isee">ISEE</option>
															    <option value="cn">CN</option>
													      	</select>
				</div>			    
			    <script>
				    function yesnoCheck(that) {
				        if (that.value == "teacher") {
				            //alert("check");
				            document.getElementById("ifYes").style.display = "block";
				        } else {
				            document.getElementById("ifYes").style.display = "none";
				        }
				    }
				</script>
	<input type="submit" value="Sign Up!">
	
	<br>
	<br>
				 <input type="button" type="submit" onclick="window.location='indexPage.jsp'" value="HOME"><br>
	
</pre>
</form>
</div>
</section>
</body>
</html>