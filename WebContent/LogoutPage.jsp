<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="CSS/ConfirmBookingPage.css">
<title>LogoutPage</title>
</head>
<body>
	<header>
	<div id="main">
		<span style="font-size: 40px; cursor: pointer" onclick="openNav()">&#9776;</span>
	</div>

	<div id="title" style="cursor: pointer" onclick="HomePage.jsp">
		<span class="glyphicon glyphicon-map-marker"></span>Cabriolet
	</div>
	<hr>
	</header>
	<%
	  response.setHeader("Cache-Control","no-cache");
	  response.setHeader("Cache-Control","no-store");
	  response.setHeader("Pragma","no-cache");
	  response.setDateHeader ("Expires", 0);

	  if(session.getAttribute("customerID")==null)
	      response.sendRedirect("WelcomePage.html");
		
	%>
	<center>
		<h>Your session has expired. Click </h>
		<p><a href='WelcomePage.html'>here</a> to login again.</p>
	</center>
	
	
	<br>
</body>
</html>
