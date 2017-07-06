<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<META Http-Equiv="Cache-Control" Content="no-cache">
<META Http-Equiv="Pragma" Content="no-cache">
<META Http-Equiv="Expires" Content="0">
<link rel="stylesheet" type="text/css"
	href="CSS/ConfirmBookingPage.css">
	<link rel="stylesheet" type="text/css"
	href="CSS/WelcomePage.css">
<title>LogoutPage</title>
<script type="text/javascript">
function logout(){
	window.location.replace("WelcomePage.html");
	
}
setInterval(logout(),0);

function preventBack(){
	window.history.forword();
}
setTimeout("preventBack()",0);
window.onunload = function(){null};

window.onbeforeload = function(){
	return "Login!!";
}
</script>


</head>
<body>
	<header>
	<div id="main">
		<span style="font-size: 40px; cursor: pointer" onclick="openNav()">&#9776;</span>
	</div>

	<div id="title" style="cursor: pointer" onclick="HomePage.jsp">
		<span class="glyphicon glyphicon-map-marker"></span>Cabriolet
	</div>
	<hr>
	</header>
	
	
	<center>
		<h>Your session has expired. Click </h>
		<p>
		<button type="button" class="btn btn-basic btn-lg" id="myBtn" onclick='logout()'>here</button> to login again.</p>
	</center>
	
	
	<br>
	
</body>
</html>
