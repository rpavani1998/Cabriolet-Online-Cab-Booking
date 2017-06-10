<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!DOCTYPE html>
<html>
<head>
	<title>Ride Successful</title>
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="CSS/RideCompleted.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Allerta+Stencil">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Quattrocento+Sans">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Arvo" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="JS/RideCompleted.js"></script>
</head>

<body >
	<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<br> 
		<a href="UserProfile.jsp"><span class="glyphicon glyphicon-user" style="font-size: 30px; color: white;"></span>&ensp; Your Account</a> 			<a></a>
		<a href="HomePage.jsp"><span class="glyphicon glyphicon-star-empty" style="font-size: 30px; color: white;"></span>&ensp; Your Ride</a> 
		<a></a>
		<a href="RideCompleted.jsp"><span class="glyphicon glyphicon-credit-card" style="font-size: 30px; color: white;"></span>&ensp; Payment</a> 
		<a></a>
		<a href="RideHistory.jsp"><span class="glyphicon glyphicon-list" style="font-size: 30px; color: white;"></span>&ensp; Rides History</a>
		<a></a>
		<a href="WelcomePage.html"><span class="glyphicon glyphicon-off" style="font-size: 30px; color: white;"></span>&ensp; Log Out</a>
	</div>

	<div id="main">
		<span style="font-size: 40px; cursor: pointer" onclick="openNav()">&#9776;</span>
	</div>

	<div id="title" style="cursor: default">
		<span class="glyphicon glyphicon-map-marker"></span>Cabriolet
	</div>
	<hr>

	<center>
	<h>Your Ride has been completed!</h>
	</center>
	<div class="route">
		<div class="col-lg-6 text-left">
			<div class="source">
				<h1> Source:</h1>
			</div>
		</div>
		<div class="col-lg-6 text-right">   
  		<div class="destination">
				<h2> Destination:</h2>
			</div>
		</div>
	</div>
	<br>
	<p>Your bill is:</p>
	<p style="font-size: 50px">&#8377;</p>
	<br>
	<div class="container">
		<div class="row lead">
    <div class="col-md-6 col-md-offset-3" style="text-align: center; font-size: 30px">
        <div id="stars" class="starrr"></div>
        You've rated us <span id="count">0</span> star(s)
		</div>
		</div>
	</div>
	<center>
	<button type="button" class="btn btn-default submit"> Submit</button>
	</center>
</body>
</html>