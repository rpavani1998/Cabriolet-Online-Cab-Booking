<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Cabriolet</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="CSS/Selection_Page.css">
<link rel="stylesheet" href="CSS/WelcomePage.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Allerta+Stencil">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="JS/Home_Page.js"></script>
</head>

<body>
	<header>
		<div id="mySidenav" class="sidenav">
			<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
			<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
			<br>
 			<a href="#"><span class="glyphicon glyphicon-user" style="font-size:30px;color:white;"></span>&ensp; Your Account</a>
 			<a></a>
  		<a href="#"><span class="glyphicon glyphicon-star-empty" style="font-size:30px;color:white;"></span>&ensp; Your Ride</a>
   		<a></a>
			<a href="#"><span class="glyphicon glyphicon-credit-card" style="font-size:30px;color:white;"></span>&ensp; Payment</a>
   		<a></a>
			<a href="#"><span class="glyphicon glyphicon-list" style="font-size:30px;color:white;"></span>&ensp; Rides History</a>
			<a></a>
			<a href="#"><span class="glyphicon glyphicon-off" style="font-size:30px;color:white;"></span>&ensp; Log Out</a>
		</div>

		<div id="main">
			<span style="font-size:40px;cursor:pointer" onclick="openNav()">&#9776;</span>
		</div>

		<div id="title" style="cursor:pointer" onclick="#"><span class="glyphicon glyphicon-map-marker"></span>Cabriolet</div>

	</header>
	
	<section class="bgimg1">
		
		<section class="bgimg w3-display-container w3-text-black ">
		
		<section class="col-md-6 col-md-offset-2 w3-container w3-xlarge">
			<br>
			<br>
			<br>
			<br>
			<p>
				<button type="button" class="btn btn-basic btn-lg" onclick="window.location='HomePage.jsp'">Book For Yourself</button>
			</p>
			<p>
				<button type="button" class="btn btn-basic btn-lg" onclick="window.location='FriendDetails.jsp'">Book For A Friend  </button>
			</p>
		</section>

	</section>
	
		<div class="container-fluid">
			<div class="col-lg-offset-9">
				<div class="media">
  				<div class="media-left media-top">
    				<img src="Images/Micro.png" class="media-object" style="width:100px">
  				</div>
  				<div class="media-body">
    				<h1 class="media-heading">Micro</h1>
    				<ul id="details">
  						<li>Base fare: Rs.35</li>
 							<li>Rate/km: Rs.6</li>
							<li>Lagguage & Seating Capacity: <br> 4 passengers and can accommodate up to 2-3 small size bags.</li>
						</ul>
  				</div>
				</div>
				<hr>
				<div class="media">
  				<div class="media-left media-top">
    				<img src="Images/Mini.png" class="media-object" style="width:100px">
  				</div>
  				<div class="media-body">
   					<h1 class="media-heading">Mini</h1>
   					<ul id="details">
 							<li>Base fare: Rs.45</li>
  						<li>Rate/km: Rs.8</li>
							<li>Lagguage & Seating Capacity: <br>4 passengers and can accommodate up to 3-4 medium size bags or 2 large bags.</li>
						</ul>
 					</div>
				</div>
				<hr>
				<div class="media">
  				<div class="media-left media-top">
    				<img src="Images/SUV.png" class="media-object" style="width:100px">
  				</div>
  				<div class="media-body">
   					<h1 class="media-heading">SUV</h1>
   					<ul id="details">
  						<li>Base fare: Rs.150</li>
  						<li>Rate/km: Rs.18</li>
							<li>Lagguage & Seating Capacity: <br> 6 passengers and can accommodate up to 3-4 medium size bags or 2 large bags</li>
						</ul>
  				</div>
				</div>
			</div>
		</div>
	</section>
	



</body>
</html>