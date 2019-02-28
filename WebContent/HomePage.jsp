<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<title>HomePage</title>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="CSS/Home_Page.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Allerta+Stencil">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="JS/Home_Page.js"></script>

</head>

<body>
	
	<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<br> <a href="UserProfile.jsp"><span
			class="glyphicon glyphicon-user"
			style="font-size: 30px; color: white;"></span>&ensp; Your Account</a> <a></a>
		<a href="HomePage.jsp"><span class="glyphicon glyphicon-star-empty"
			style="font-size: 29px; color: white;"></span>&ensp; Your Ride</a> <a></a>
		
			
			
		<a href="RideHistory.jsp"><span class="glyphicon glyphicon-list"
			style="font-size: 30px; color: white;"></span>&ensp; Rides History</a> <a></a>
		<a href="WelcomePage.html"><span class="glyphicon glyphicon-off"
			style="font-size: 30px; color: white;"></span>&ensp; Log Out</a>
	</div>
	
	
	
	<div id="main">
		<span style="font-size: 40px; cursor: pointer" onclick="openNav()">&#9776;</span>
	</div>

	<div id="title" style="cursor: pointer" onclick="">
			<a href="SelectionPage.jsp" style="color:white"><span class="glyphicon glyphicon-map-marker"></span>Cabriolet
		</a>
		</div>
	<hr>
	
	<input id="origin-input" class="controls" type="text"
		placeholder="Enter an origin location">
	<input id="destination-input" class="controls" type="text"
		placeholder="Enter a destination location">

	<div id="mode-selector" class="controls">
		<input id="submit" type="button" class="btn btn-default submit"
		value="Get Your Current Location">
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
			<form role="form" action="RideController" method="post">
				<div class="col-md-offset-6">
					<div>
						<br> &ensp;
						<h>Source:</h>
						<span class="tab-space"></span> <input name="source"  id ="source" class="control"
							type="text" placeholder="Your Source" required title="Enter Source"><br> &ensp;
						<h>Destination:</h>
						<span class="tab-space"></span> <input name="destination" id="destination"
							class="control" type="text" placeholder="Your Destination" title="Enter Destination">
						<br> &ensp;
						<h>Car Type:</h>
						&ensp;&ensp; <select class="selectpicker show-tick"
							data-style="btn-primary" id="type" name="type">
							<option value=6>Micro</option>
							<option value=8>Mini</option>
							<option value=18>SUV</option>
						</select> <br> <br> <span class="tab-space"></span>
						<button type="button" class="btn btn-default submit"
							onclick="getDistance()">Estimate Ride</button>
						&ensp; <br> <br> &ensp;
						<h> Estimated Distance :</h>
						<input id="distanceEstimate"  name="distanceEstimate" class="control" type="text"
							placeholder="" required title="Click Estimate Ride"><br> &ensp;
						<h> Estimated Ride Cost :(in Rs.)</h>
						<input id="costEstimate"  name="costEstimate" class="control" type="text"
							placeholder="" required title="Click Estimate Ride"><br> &ensp;
						<h> Estimated Ride Time :</h>
						<input id="timeEstimate" class="control" type="text"
							placeholder="" required title="Click Estimate Ride"> &ensp; <br> <span class="tab-space"></span>
						<button type="submit" class="btn btn-default submit">
							Confirm Your Ride</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
