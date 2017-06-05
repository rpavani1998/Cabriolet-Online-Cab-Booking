<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Cabriolet Registration</title>
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
<style>
body, h1, h5 {
	font-family: "Raleway", sans-serif
}

.w3-allerta {
	font-family: "Allerta Stencil", Sans-serif;
	font-size: 80px;
}

body, html {
	height: 100%
}

.bgimg {
	background-image: url('CSS/Images/backgroundcar.jpg');
	min-height: 100%;
	background-position: center;
	background-size: cover;
}

h4, .close {
	background-color: black;
	color: white !important;
	text-align: center;
	font-size: 30px;
	height: 100%
}

.container-header {
	background-color: black;
	color: white !important;
	text-align: center;
	font-size: 30px;
}

.footer {
	background-color: #f9f9f9;
}

.container {
	width: 400px;
	margin-left: auto;
	margin-right: auto;
	background: white;
	align-content: center;
}
</style>
</head>

<body>

	<section class="bgimg w3-display-container w3-text-black "> <br>
	<br>
	<br>
	<section class="container"> <section class="container-header"
		style="padding:35px 50px;">
	<h4>
		<span class="glyphicon glyphicon-pencil"></span> Registration
	</h4>
	</section> <section class="container-body" style="padding:40px 50px;">
	<form role="form" action="CreateUser" method="post">
		<section class="form-group"> <label for="firstName"><span
			class="glyphicon glyphicon-user"></span> First Name</label> <input
			type="text" class="form-control" name="firstName" required=""
			placeholder="Enter First Name"> </section>

		<section class="form-group"> <label for="lastName"><span
			class="glyphicon glyphicon-user"></span> Last Name</label> <input type="text"
			class="form-control" name="lastName" required=""
			placeholder="Enter Last Name"> </section>

		<section class="form-group"> <label for="emailID"><span
			class="glyphicon glyphicon-envelope"></span> Email ID</label> <input
			type="email" class="form-control" name="emailID" required=""
			placeholder="Enter Email ID"> </section>

		<section class="form-group"> <label for="gender"><span
			class="glyphicon glyphicon-user"></span> Gender</label> <br>
		<label class="radio-inline"> <input type="radio" name="gender"
			value="Male"> Male
		</label> <label class="radio-inline"> <input type="radio"
			name="gender" value="Female"> Female
		</label> </section>

		<section class="form-group"> <label for="dateOfBirth"><span
			class="glyphicon glyphicon-calendar"></span> Date Of Birth</label> <input
			type="date" class="form-control" name="dateOfBirth" required=""
			placeholder="Enter Date of Birth"> </section>

		<section class="form-group"> <label for="phoneNumber"><span
			class="glyphicon glyphicon-phone"></span> Phone numer</label> <input
			type="tel" class="form-control" name="mobileNumber" maxlength="10"
			required="" placeholder="Enter Phone Number"> </section>

		<section class="form-group"> <label for="password"><span
			class="glyphicon glyphicon-eye-open"></span> Password</label> <input
			type="password" class="form-control" name="password" required=""
			placeholder="Enter Password"> </section>

		<section class="form-group"> <label for="reEnterPassword"><span
			class="glyphicon glyphicon-eye-open"></span> Re-enter Password</label> <input
			type="password" class="form-control" name="reEnterPassword"
			required="" placeholder="Re-enter Password"> </section>

		<button type="submit" class="btn btn-basic btn-block">
			<span class="glyphicon glyphicon-ok"></span> Sign Up
		</button>

	</form>
	</section> <section class="container-footer">
	<p align="center">
		Already a member? <a href="#">Login</a>
	</p>
	</section> </section> </section>



</body>
</html>

<!-- <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register</title>
</head>
<body>
<form action="CreateUser" method="post">
First Name<input type="text" name="firstName"><br><br>
Last Name <input type="text" name="lastName"><br><br>
EmailID <input type="text" name="emailID"><br><br>
Gender <select name="gender">
<option value="Female">Female</option>
<option value="Male">Male</option>
<option value="Other">Other</option>
</select><br><br>
Date of Birth <input type="date"  date-format="YYYY MM DD" name="dateOfBirth"><br><br>
Mobile Number<input type="tel"name="mobileNumber"><br><br>
Password <input type="password" name="password"><br><br>
Re-enter Password <input type="password" name="rPassword"><br><br>
<input type="submit" value="Create User">
</form>
</body>
</html> -->