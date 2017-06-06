<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<title>UserProfile</title>
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="../CSS/UserProfile.css"> 
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Allerta+Stencil">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="../JS/UserProfile.js"></script>
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

	<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/Cabriolet1" user="root" password="rajula" />
	
	
	<sql:query dataSource="${dbsource}" var="result">
            SELECT * from Customer ;
              
        </sql:query>
	<div class="container">
  	<h1>Your Profile</h1>
		<br>
		<div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="well well-sm">
                <div class="row">
                    <div class="col-sm-6 col-md-4">
                        <img src="http://placehold.it/380x500" alt="" class="img-rounded img-responsive" />
                    </div>
                    <div class="col-sm-6 col-md-8">
                        <h4> ${firstName} ${lastName}</h4>
                        <small><cite title="San Francisco, USA"> <i class="glyphicon glyphicon-map-marker">
                        </i></cite></small>
                        <p>
                            <i class="glyphicon glyphicon-envelope"></i>email@example.com
                            <br>
                            <i class="glyphicon glyphicon-globe"></i><a href="http://www.jquery2dotnet.com">www.jquery2dotnet.com</a>
                            <br>
                            <i class="glyphicon glyphicon-gift"></i>June 02, 1988</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>

</html>
