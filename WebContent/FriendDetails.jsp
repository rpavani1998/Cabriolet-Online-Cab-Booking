<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Book For A Friend</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Allerta+Stencil">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" 	href="CSS/Register_.css">
<script
	src="JS/Register.js"></script>

</head>

<body>

	<section class="bgimg w3-display-container w3-text-black "> <br>
	<br>
	<br>
	<section class="container"> <section class="container-header"
		style="padding:35px 50px;">
	<h4>
		<span class="glyphicon glyphicon-pencil"></span> Friend's Details
	</h4>
	</section> 
	<section class="container-body" style="padding:40px 50px;">
	<form role="form" action="FriendDetailsController" method="post">
    
		<section class="form-group"> <label for="Name"><span
			class="glyphicon glyphicon-user"></span>Name</label> <input
			type="text" class="form-control" name="name1" required=""
			placeholder="Enter Name"> </section>
            
		

		<section class="form-group"> <label for="phoneNumber"><span
			class="glyphicon glyphicon-phone"></span> Phone number</label> <input
			type="tel" class="form-control" name="mobileNumber" maxlength="10"
			required="" placeholder="Enter Phone Number"> </section>
		
		<button type="submit" class="btn btn-basic btn-block" >
			<span class="glyphicon glyphicon-ok"></span> Submit
		</button>

	</form>
	</section>
	 <section class="container-footer">
	<p align="center">
		Want To Book For Yourself? <a href="SelectionPage.jsp">Click Here</a>
	</p>
	</section> </section> </section>



</body>
</html>