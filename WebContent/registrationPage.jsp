
 <script type="text/javascript" >
	function validateRegistrationForm() {
		if(registrationFrm.name.value==""){
			alert("Enter FullName");
			return false;
		}
		else  if(registrationFrm.mobile.value==""){
			alert("Enter mobileNo");
			return false;
		}
		else  if(registrationFrm.email.value==""){
			alert("Enter mobileNo");
			return false;
		}
		else  if(registrationFrm.username.value==""){
			alert("Enter Username");
			return false;
		}
		else  if(registrationFrm.password.value==""){
			alert("Enter Password");
			return false;
		}
	}
</script>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head></head>
<link rel="stylesheet" href="style2.css">
</head>
<body>
  <section class="container">
    <div class="login">
      <h1>Registration to Student Database</h1>
<form name ="registrationFrm" action="check3.jsp" method="post" onsubmit="return validateRegistrationForm()">
<table border='0' width='240px' cellpadding='0' cellspacing='0' align='center'>
<tr>
    <td align='center'>Full Name:</td>
    <td><input type='text' name='name' placeholder="FullName"></td>
</tr>
<tr> <td>&nbsp;</td> </tr>
<tr>
    <td align='center'>Phone:</td>
    <td><input type='text' name='mobile' placeholder="MobileNo."></td>
</tr>
	<tr> <td>&nbsp;</td> </tr>
	<tr>
    <td align='center'>EMAIL:</td>
    <td><input type='text' name='email' placeholder="Email"></td>
</tr>
<tr> <td>&nbsp;</td> </tr>
					<tr>
					<td>USERNAME:</td>
					<td><input type="text" name="username" placeholder="Username"></td>
				</tr>
				<tr> <td>&nbsp;</td> </tr>
					<tr>
					<td>PASSWORD:</td>
					<td><input type="password" name="password" placeholder="Password"></td>
				</tr>
					<tr> <td>&nbsp;</td> </tr>
<table border='0' cellpadding='0' cellspacing='0' width='480px' align='center'>
<tr>
    <td align='center'><input type='submit' value="Register" ></td>
    <a href="indexPage.jsp">Home Page</a>
</tr>
</table>
</table>
</center>
</center>
 
</table>
</form>
</body>
</html>
