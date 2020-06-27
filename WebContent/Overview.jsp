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
  <section class="container">
    <div class="login">
      <h1>OverView to Student Database</h1>
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
<button class="accordion">ABOUT PROJECT</button>
<div class="panel">
  <p>A simple project including DataBase Management and Java.</p>
    <p> Project is to record the workload between student and teachers.
     </p>
</div>

<button class="accordion">MEMBERS OF PROJECT</button>
<div class="panel">
  <p> EADHUNATH V    R.no.- 8</p>
    <p>  SHIVANI HOLE   R.No.- 11</p>
     <p> PARIMAL NAJAN  R.No.- 26
  </p>
</div>

<button class="accordion">USE OF PROJECT</button>
<div class="panel">
  <p>Will reduce workload of keeping Manual Records.</p>
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

</body>
</html>

<br>
<br>
<center>
<a href="indexPage.jsp">BACK</a></center>
</body>
</html>