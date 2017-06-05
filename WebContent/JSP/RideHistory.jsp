<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<title>Rides History</title>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href=RidesHistory.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Allerta+Stencil">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="RidesHistory.js"></script>

</head>

<body>
	<header>
		<div id="mySidenav" class="sidenav">
			<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
			<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
			<br> <a href="#"><span class="glyphicon glyphicon-user"
				style="font-size: 30px; color: white;"></span>&ensp; Your Account</a> <a></a>
			<a href="#"><span class="glyphicon glyphicon-star-empty"
				style="font-size: 30px; color: white;"></span>&ensp; Your Ride</a> <a></a>
			<a href="#"><span class="glyphicon glyphicon-credit-card"
				style="font-size: 30px; color: white;"></span>&ensp; Payment</a> <a></a>
			<a href="#"><span class="glyphicon glyphicon-list"
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

	</header>

	<div class="container">
		<h1>Your Rides History</h1>
		<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
			url="jdbc:mysql://localhost/Employee" user="aakanksha"
			password="shastri" />

		<sql:query dataSource="${dbsource}" var="result">
            SELECT * from Driver ;
        </sql:query>
		<center>
			<form>
				<table border="1" width="40%">
					<caption>Rider Details</caption>
					<tr>
						<th>Driver Id</th>
						<th>Customer Id</th>
						<th>Source</th>
						<th>Destination</th>
						<th>Status</th>
						<th>Amount</th>
						<th>Booking Time</th>
						<th colspan="2">Action</th>
					</tr>
					<c:forEach var="row" items="${result.rows}">
						<tr>
							<td><c:out value="${row.driverId}" /></td>
							<td><c:out value="${row.customerId}" /></td>
							<td><c:out value="${row.source}" /></td>
							<td><c:out value="${row.destination}" /></td>
							<td><c:out value="${row.status}" /></td>
							<td><c:out value="${row.amount}" /></td>
							<td><c:out value="${row.bookingTime}" /></td>
							<td><a href="update.jsp?id=<c:out value="${row.id}"/>">Update</a></td>
							<td><a
								href="javascript:confirmGo('Sure to delete this record?','deletedb.jsp?id=<c:out value="${row.id}"/>')">Delete</a></td>

						</tr>
					</c:forEach>
				</table>
			</form>
			<a href="trial.jsp">Go Home</a>
		</center>
	</div>
</body>




</html>
