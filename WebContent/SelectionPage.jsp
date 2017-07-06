<!DOCTYPE html>
<html>
<head>
	<title>Car Types</title>
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="CSS/SelectionPage.css"> 
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Allerta+Stencil">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Francois+One">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cuprum">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Convergence">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="JS/RideHistory.js"></script>
	
</head>

<body>
	<header>
		<div id="mySidenav" class="sidenav">
			<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
			<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
			<br>
 			<a href="UserProfile.jsp"><span class="glyphicon glyphicon-user" style="font-size:30px;color:white;"></span>&ensp; Your Account</a>
 			<a></a>

			<a href="RideHistory.jsp"><span class="glyphicon glyphicon-list" style="font-size:30px;color:white;"></span>&ensp; Rides History</a>
			<a></a>
			<a href="WelcomePage.html"><span class="glyphicon glyphicon-off" style="font-size:30px;color:white;"></span>&ensp; Log Out</a>
		</div>

		<div id="main">
			<span style="font-size:40px;cursor:pointer" onclick="openNav()">&#9776;</span>
		</div>

		<div id="title" style="cursor: pointer" onclick="">
			<a href="SelectionPage.jsp" style="color:white"><span class="glyphicon glyphicon-map-marker"></span>Cabriolet
		</a>
		</div>
	</header>
	
	<section class="bgimg">
		<section class="row">
			<section class="col-md-5 col-md-offset-2">
				<br style="line-height: 7em;">
				<p>
					<button type="button" class="btn btn-basic btn-lg" onclick="window.location='HomePage.jsp'"><strong>Book For Yourself</strong></button>
					<span class="spacing">
					<button type="button" class="btn btn-basic btn-lg" onclick="window.location='FriendDetails.jsp'"><strong>Book For A Friend</strong>  </button>
				</p>
				<br style="line-height: 5.6em;">
			</section>
		</section>
		<div class="container"  style="position: relative;bottom: 0; width:100%;">
			<div class="col-lg-4 divider">
    			<center>
					<img src="Images/Micro.png"  style="width:100px">
	    			<h1>Micro</h1>
				</center>
 				<ul id="details">
 					<li><strong>Base fare:</strong> Rs.35</li>
 					<li><strong>Rate/km:</strong> Rs.6</li>
					<li><strong>Lagguage & Seating Capacity:</strong> <br> 4 passengers and can accommodate up to 2-3 small size bags.</li>
				</ul>							
			</div>
			<div class="col-lg-4 divider">
    			<center>
					<img src="Images/Mini.png"  style="width:100px">
					<h1 >Mini</h1>
				</center>
	   			<ul id="details">
	 				<li><strong>Base fare:</strong> Rs.45</li>
  					<li><strong>Rate/km:</strong> Rs.8</li>
					<li><strong>Lagguage & Seating Capacity:</strong> <br>4 passengers and can accommodate up to 3-4 medium size bags or 2 large bags.</li>
				</ul>	
			</div>
			<div class="col-lg-4">
				<center>
					<img src="Images/SUV.png" style="width:100px">
					<h1 >SUV</h1>
				</center>
				<ul id="details">
					<li><strong>Base fare:</strong> Rs.150</li>
  					<li><strong>Rate/km:</strong> Rs.18</li>
					<li><strong>Lagguage & Seating Capacity:</strong> <br> 6 passengers and can accommodate up to 3-4 medium size bags or 2 large bags</li>
				</ul>				
			</div>
		</div>
	</section>

</body>

</html>