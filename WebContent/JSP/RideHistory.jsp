
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>


<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="../CSS/RideHistory.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Allerta+Stencil">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="../JS/RideHistory.js"></script>
<title>SELECT Operation</title>
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
			<br> <a href="UserProfile.jsp"><span class="glyphicon glyphicon-user"
				style="font-size: 30px; color: white;"></span>&ensp; Your Account</a> <a></a>
			<a href="HomePage.jsp"><span class="glyphicon glyphicon-star-empty"
				style="font-size: 30px; color: white;"></span>&ensp; Your Ride</a> <a></a>
			<a href="#"><span class="glyphicon glyphicon-credit-card"
				style="font-size: 30px; color: white;"></span>&ensp; Payment</a> <a></a>
			<a href="RideHistory,jsp"><span class="glyphicon glyphicon-list"
				style="font-size: 30px; color: white;"></span>&ensp; Rides History</a> <a></a>
			<a href="WelcomePage.html"><span class="glyphicon glyphicon-off"
				style="font-size: 30px; color: white;"></span>&ensp; Log Out</a>
		</div>

		<div id="main">
			<span style="font-size: 40px; cursor: pointer" onclick="openNav()">&#9776;</span>
		</div>

		<div id="title" style="cursor: pointer" onclick="HomePage.jsp">
			<span class="glyphicon glyphicon-map-marker"></span>Cabriolet
		</div>
		<hr>
	</header>
	<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/Cabriolet1" user="root" password="rajula" />

	<sql:query dataSource="${dbsource}" var="result">
            SELECT * from Ride where customerID = <%=session.getAttribute("customerID") %> order by bookingTime desc ;
        </sql:query>
	<center>
		<form>
			<table class="table-responsive table-striped table-bordered" border="" width="60%"> 
				<thead class="thead">
					<tr height = "10%">
						<th>Driver Id</th>
						<th>Source</th>
						<th>Destination</th>
						<th>Status</th>
						<th>Amount</th>
						<th>Booking Time</th>
					</tr>
				</thead>
				<c:forEach var="row" items="${result.rows}">
					<tr>
						<td><c:out value="${row.driverId}" /></td>
						<td width="30%"><c:out value="${row.source}" /></td>
						<td><c:out value="${row.destination}" /></td>
						<td width = "15%"><c:out value="${row.status}" /></td>
						<td><c:out value="${row.amount}" /></td>
						<td width="20%"><c:out value="${row.bookingTime}" /></td>


					</tr>
				</c:forEach>
			</table>
		</form>
	</center>
</body>
</html>


