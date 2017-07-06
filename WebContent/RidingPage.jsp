<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="CSS/RideHistory.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Allerta+Stencil">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="JS/RideHistory.js"></script>
<title>Riding..</title>
</head>
<body style = "background-color: black;">
	<header>
	<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<br> <a href="UserProfile.jsp"><span
			class="glyphicon glyphicon-user"
			style="font-size: 30px; color: white;"></span>&ensp; Your Account</a> <a></a>
		<a href="HomePage.jsp"><span
			class="glyphicon glyphicon-star-empty"
			style="font-size: 30px; color: white;"></span>&ensp; Your Ride</a> <a></a>

		<a href="RideHistory.jsp"><span class="glyphicon glyphicon-list"
			style="font-size: 30px; color: white;"></span>&ensp; Rides History</a> <a></a>
		<a href="WelcomePage.html"><span class="glyphicon glyphicon-off"
			style="font-size: 30px; color: white;"></span>&ensp; Log Out</a>
	</div>

	<div id="main">
		<span style="font-size: 40px; cursor: pointer" onclick="openNav()">&#9776;</span>
	</div>

	</div>

	<div id="title" style="cursor: pointer" onclick="">
		<a href="SelectionPage.jsp" style="color: white"><span
			class="glyphicon glyphicon-map-marker"></span>Cabriolet </a>
	</div>
	
	</header>
	<div class="bgimg" style= "color:white"><center><h1>Riding....</h1></center></div>

<script>
	function Redirect() {
        window.location="http://localhost:8080/Cabriolet-Online-Cab-Booking/CheckStatus2.jsp";
     }
	setTimeout('Redirect()', 1000);
</script>	

</body>
</html>