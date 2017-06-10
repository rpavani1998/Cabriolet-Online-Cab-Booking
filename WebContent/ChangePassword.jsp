<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html" charset=UTF-8">
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Allerta+Stencil">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="CSS/Change_Password.css">
	<title>Change Password</title>
</head>

<body>
<section class="bgimg w3-display-container w3-text-black "> 
  <br><br><br>
  <section class="container">
    <section class="container-header" style="padding:35px 50px;">
      <h4><span class="glyphicon glyphicon-eye-close"></span> Change Password</h4>
    </section>
		
		<section class="container-body" style="padding:40px 30px 40px 30px;">
	
				<section class="login-form-1">
					<form id="forgot-password-form" class="text-left" action="ChangePasswordController" method="post">

						<section class="login-form-main-message"></section>
	
						<div class="main-login-form">
							<div class="login-group">
								<div class="form-group">
									<label for="verificationCode"><span class="glyphicon glyphicon-asterisk"></span> Verification Code (sent to your registered E-mail ID)</label>
									<input type="text" class="form-control" id="verificationCode" name="verificationCode" placeholder=" Enter verificationCode">
									<br>
									<section class="form-group">
	          				<label for="password1"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
	          				<input type="password" class="form-control" id="password1" required="" placeholder=" Enter Password">
	        				</section>
									<section class="form-group">
										<label for="password2"><span class="glyphicon glyphicon-eye-open"></span> Re-enter Password</label>
										<input type="password" class="form-control" id="password2" required="" placeholder=" Re-enter Password">
									</section>
								</div>
								<button type="submit" class="btn btn-basic btn-block"><span class="glyphicon glyphicon-ok"></span> Submit</button>
							</div>
						</div>
					</form>
				</section>

		</section>

  	<section class="container-footer">
			<p align="center">New here? <a href="Register.jsp">Register</a></p>
    	<p align="center">Already a member? <a href="WelcomePage.jsp">Login</a></p>
  	</section>
      
	</section> 
</section>

</body>
</html>