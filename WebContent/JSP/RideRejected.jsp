<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>


<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<meta charset="utf-8">
<link rel="stylesheet" type="text/css"
	href="../CSS/ConfirmBookingPage.css">
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
<script src="../JS/RideHistory.js"></script>
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
		<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/Cabriolet1" user="root" password="rajula" />

	<sql:update dataSource="${dbsource}" var="result">
            update Ride set status = "Rejected"  where status ="Waiting" and customerID = <%=session.getAttribute("customerID") %> order by bookingTime desc limit 1;
        </sql:update>
		<div id="main">
			<span style="font-size: 40px; cursor: pointer" onclick="openNav()">&#9776;</span>
		</div>


		<div id="title" style="cursor: pointer" onclick="HomePage.jsp">
			<span class="glyphicon glyphicon-map-marker"></span>Cabriolet
		</div>
		<hr>
	</header>
	<center>
	<br><br><br>
	<div id="hello">
		<h1><h>Sorry! :(</h></h1>
		<h2>Your request has been rejected by the driver...</h2>
		<h2>Please <a href = HomePage.jsp>Click Here to Book again</a></h2>
		</center>
	</div>
</body>
</html>