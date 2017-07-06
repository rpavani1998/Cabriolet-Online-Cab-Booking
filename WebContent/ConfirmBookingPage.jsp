<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>


<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<meta charset="utf-8">
<link rel="stylesheet" type="text/css"
	href="CSS/ConfirmBookingPage.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Allerta+Stencil">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Ubuntu" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="JS/RideHistory.js"></script>
<title>Booking Confirmed</title>
<script>
	function confirmGo(m, u) {
		if (confirm(m)) {
			window.location = u;
		}
	}
</script>
</head>
<body>
	<header>
		<div id="mySidenav" class="sidenav">
			<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
			<br> <a href="UserProfile.jsp"><span
				class="glyphicon glyphicon-user"
				style="font-size: 30px; color: white;"></span>&ensp; Your Account</a> <a></a>
			<a href="HomePage.jsp"><span
				class="glyphicon glyphicon-star-empty"
				style="font-size: 30px; color: white;"></span>&ensp; Your Ride</a> <a></a>
			<a href="RideCompleted.jsp"><span class="glyphicon glyphicon-credit-card"
				style="font-size: 30px; color: white;"></span>&ensp; Payment</a> <a></a>
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
	</header>
	<center>
		<h>Your Booking has been confirmed! </h>
		<p>Here are your driver's details:</p>
	</center>
	<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/Cabriolet1" user="root" password="rajula" />
		<!-- url="jdbc:mysql://192.168.3.247:3306/cabriolet" user="srividya"
		password="srividyaswamy" /> -->
<%System.out.print("Inside"); %>
	<sql:query dataSource="${dbsource}" var="result">
         select d.firstName,d.lastName,d.emailId,d.phoneNumber,d.gender,d.DOB,d.cabNumber from Driver d where phoneNumber = (select driverId from Ride order by bookingTime desc limit 1);
         
        </sql:query>
	<sql:query dataSource="${dbsource}" var="result1">
        select c.type,c.name from Cab c where c.cabNumber = (select cabNumber from Driver where phoneNumber = (select driverId from Ride order by bookingTime desc limit 1));
	     </sql:query>

	<div class="container">
		<br>
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="well well-sm">
					<div class="row">
						<div class="col-sm-6 col-md-4">
							<img src="http://placehold.it/380x500" alt=""
								class="img-rounded img-responsive" />
						</div>
						<div class="col-sm-6 col-md-8">
							<c:forEach var="row" items="${result.rows}">
								<h1>
									<c:out value="${row.firstName}" />
									<c:out value="${row.lastName}" />
								</h1>
								<p1> <i class="glyphicon glyphicon-envelope"></i>
								<c:out value="${row.emailId}" /> <br>
								<i class="glyphicon glyphicon-phone"></i>
								<c:out value="${row.phoneNumber}" /> <br>
								<i class="glyphicon glyphicon-user"> Male</i> <br>
								<i class="glyphicon glyphicon-calendar"></i>
								<c:out value="${row.DOB}" /> <br>
								<i class="glyphicon glyphicon-edit"></i>${row.cabNumber} <br>
								</p1>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br>
		<center>
			<p>Enjoy your ride!</p>
		</center>
		
		<form action="Cancellation.jsp" method="post">
		    <input type="submit" class="btn btn-default submit" value="Cancel Your Ride" />
		</form>
<script>
	function Redirect() {
        window.location="http://localhost:8080/Cabriolet-Online-Cab-Booking/CheckStatus2.jsp";
     }
	setTimeout('Redirect()', 10000);
</script>			
</body>
</html>