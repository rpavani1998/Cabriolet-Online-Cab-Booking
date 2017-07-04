<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.*"%>
<%@page import="com.talentsprint.classes.*"%>
<%@page import="javax.script.*"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Loading Page</title>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="CSS/LoadingPage.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Allerta+Stencil">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="JS/LoadingPage.js"></script>
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




	<div id="loader-wrapper">
		<div class="loader">
			<div class="line"></div>
			<div class="line"></div>
			<div class="line"></div>
			<div class="line"></div>
			<div class="line"></div>
			<div class="line"></div>
			<div class="subline"></div>
			<div class="subline"></div>
			<div class="subline"></div>
			<div class="subline"></div>
			<div class="subline"></div>
			<div class="loader-circle-1">
				<div class="loader-circle-2"></div>
			</div>
			<div class="needle"></div>
			<div id="loading" class="loading">Searching...</div>
		</div>
	</div>


	<%
		Statement statement;
		String old_status = null;

		Class.forName("com.mysql.jdbc.Driver");

		Connection connection = DriverManager.getConnection("jdbc:mysql://192.168.3.247:3306/cabriolet", "srividya",
				"srividyaswamy");

		boolean flag = true;

		try {
			statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(
					"select status from ride where customerId = '7207874257' order by bookingTime desc LIMIT 1");
			if (resultSet.next()) {
				old_status = resultSet.getString(1);
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		long startTime = System.currentTimeMillis();
		long elapsedTime = 0L;
		while (flag) {
			try {
				statement = connection.createStatement();
				ResultSet resultSet1 = statement
						.executeQuery("select status from ride order by bookingTime desc limit 1 ");
				if (resultSet1.next()) {
					System.out.println("Still on.....");
					String new_status = resultSet1.getString(1);
					System.out.println(new_status + " " + old_status);
					if (!new_status.equals(old_status)) {
						System.out.println("Condition True!!");
						old_status = new_status;
						if (old_status.equals("Accepted")) {
							System.out.println("Accepted!!");
							 ScriptEngineManager manager = new ScriptEngineManager();
						     ScriptEngine engine = manager.getEngineByName("JavaScript");
						     String script = "function Redirect() { window.location= 'http://localhost:8080/Cabriolet-Online-Cab-Booking/ConfirmBookingPage.jsp';}";
						     engine.eval(script);
						     Invocable inv = (Invocable) engine;
						     inv.invokeFunction("Redirect");
						     flag = false;
						}else if(elapsedTime < 2*60*1000 || old_status.equals("Rejected")){
							 ScriptEngineManager manager = new ScriptEngineManager();
						     ScriptEngine engine = manager.getEngineByName("JavaScript");
						     String script = "function Redirect() { window.location= 'http://localhost:8080/Cabriolet-Online-Cab-Booking/CancellationPage.jsp';}";
						     engine.eval(script);
						     Invocable inv = (Invocable) engine;
						     inv.invokeFunction("Redirect");
						     flag = false;
						}
					}
				}

			} catch (SQLException e) {
				e.printStackTrace();

			}
			 elapsedTime = (new Date()).getTime() - startTime;
			
		}

	%>


	<script>
	function Redirect() {
        window.location="http://localhost:8080/Cabriolet-Online-Cab-Booking/ConfirmBookingPage.jsp";
     }
	setTimeout('Redirect()', 10000);
</script>

</body>

</html>
