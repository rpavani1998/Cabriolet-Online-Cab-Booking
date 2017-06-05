<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Place Autocomplete</title>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="CSS/HomePage.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Allerta+Stencil">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="JS/HomePage.js"></script>
</head>

<body>
	<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>

		<br> <a href="#"><span class="glyphicon glyphicon-user"
			style="font-size: 30px; color: white;"></span>&ensp; Your Account</a> <a></a>
		<a href="#"><span class="glyphicon glyphicon-star-empty"
			style="font-size: 30px; color: white;"></span>&ensp; Your Ride</a> <a></a>
		<a href="#"><span class="glyphicon glyphicon-credit-card"
			style="font-size: 30px; color: white;"></span>&ensp; Payment</a> <a></a>
		<a href="display.jsp"><span class="glyphicon glyphicon-list"
			style="font-size: 30px; color: white;"></span>&ensp; Rides History</a> <a></a>
		<a href="#"><span class="glyphicon glyphicon-off"
			style="font-size: 30px; color: white;"></span>&ensp; Log Out</a>
	</div>

	<div id="main">
		<span style="font-size: 40px; cursor: pointer" onclick="openNav()">&#9776;</span>
	</div>

	<div id="title" style="cursor: pointer" onclick="#">
		<span class="glyphicon glyphicon-map-marker"></span>Cabriolet
	</div>
	<hr>
	<input id="origin-input" class="controls" type="text"
		placeholder="Enter an origin location">
	<input id="destination-input" class="controls" type="text"
		placeholder="Enter a destination location">

	<div id="mode-selector" class="controls">
		<input type="radio" name="type" id="changemode-walking"> <label
			for="changemode-walking">Walking</label> <input type="radio"
			name="type" id="changemode-transit"> <label
			for="changemode-transit">Transit</label> <input type="radio"
			name="type" id="changemode-driving" checked="checked"> <label
			for="changemode-driving">Driving</label>
	</div>

	<div id="map"></div>

	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAaUnlvOLz0h3PlhKnbBCcph86jMWYUHf0&libraries=places&callback=initMap"
		async defer></script>
	<div class="d-flex flex-row-reverse">
		<div class="heading">Take a Ride</div>
		<div class="row">
			<form>
				<div class="col-md-offset-6">
					<div>
						<br>
						<div>
							&ensp;Source:
							<div id="source"></div>
						</div>
						<div id="destination">&ensp;Destination:</div>
						&ensp;
						<div class="btn-group">
							<button type="button"
								class="btn btn-default btn-lg btn-block dropdown-toggle"
								data-toggle="dropdown">
								Car Type <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#"> Micro</a></li>
								<li><a href="#"> Mini</a></li>
								<li><a href="#"> Sedan</a></li>
								<li><a href="#"> Prime</a></li>
							</ul>
						</div>
						<br>
						<br> &ensp;
						<button type="button" class="btn btn-default submit">
							Estimate Ride Cost</button>
						&ensp;&ensp;
						<button type="button" class="btn btn-default submit">
							Confirm Your Ride</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>