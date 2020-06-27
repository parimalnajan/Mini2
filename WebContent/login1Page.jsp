<script type="text/javascript">
function validateLoginForm() {
	if(loginFrm.login.value==""){
		alert("Enter UserName");
		return false;
	}
	else  if(loginFrm.password.value==""){
		alert("Enter Password");
		return false;
	}
}
</script>
<%@ page session="false" %>
<html><head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Login Form</title>
  <link rel="stylesheet" href="style.css">
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>
<body>
  <section class="container">
    <div class="login">
      <h1>Login to Student Database</h1>
<form name ="loginFrm" action="check2.jsp" method="post" onsubmit="return validateLoginForm()">
        <p><input type="text" name="login" value="" placeholder="Username or Email"></p>
       <input type="password" name="password" id="password" placeholder="Password" />
<br/>
<div align="left">
<input type="checkbox" id="eye" onclick="if(password.type=='text')password.type='password'; else password.type='text';">
Show Password</div>
        <p class="remember_me">
          <label>
            <input type="checkbox" name="remember_me" id="remember_me">
            Keep me logged in
          </label>
        </p>
        <p class="submit"><input type="submit" value="Login"></p>
        <a href="indexPage.jsp">Home Page</a>
      </form>
    </div>

    <div class="login-help">
      <p>Forgot your password? <a href="index.html">Click here to reset it</a>.</p>
    </div>
  </section>
</body>
</html>