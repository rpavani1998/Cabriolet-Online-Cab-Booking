<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="robots" content="noindex">

<title>Forgot Password</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="../CSS/ForgetPassword.css">
<style type="text/css">
<
link rel ="stylesheet " href ="//maxcdn.bootstrapcdn.com /font-awesome/4.3.0
	/css/font-awesome.min.css "> <link href ='http: //fonts.googleapis.com
	/css?family=Varela+Round ' rel ='stylesheet ' type ='text /css'> <script src
	 ="https: //cdnjs.cloudflare.com /ajax/libs/jquery-validate/1.13.1
	/jquery.validate.min.js "> </script> <meta name ="viewport " content
	 ="width =device-width, initial-scale =1, maximum-scale =1" />
</style>
<script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
<script
	src="../JS/ForgetPassword.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
	window.alert = function() {
	};
	var defaultCSS = document.getElementById('bootstrap-css');
	function changeCSS(css) {
		if (css)
			$('head > link')
					.filter(':first')
					.replaceWith(
							'<link rel="stylesheet" href="'+ css +'" type="text/css" />');
		else
			$('head > link').filter(':first').replaceWith(defaultCSS);
	}
</script>
</head>
<body>
	<!-- All the files that are required -->


	<div class="text-center" style="padding:50px 0">
	<div class="logo">Forgot password</div>
	<!-- Main Form -->
	<div class="login-form-1">
		<form id="forgot-password-form" class="text-left" action="../ForgetPaswordController" method="post">
			<div class="etc-login-form">
				<p>When you fill in your registered email address, you will be sent instructions on how to reset your password.</p>
			</div>
			<div class="login-form-main-message"></div>
			<div class="main-login-form">
				<div class="login-group">
					<div class="form-group">
						<label for="fp_email" class="sr-only">Email address</label>
						<input type="text" class="form-control" id="fp_email" name="fp_email" placeholder="email address">
						<input type="text" class="form-control" id="fp_phoneNumber" name="fp_phoneNumber" placeholder="phoneNumber">
						
					</div>
				</div>
				<button type="submit" class="login-button"><i class="fa fa-chevron-right"></i></button>
			</div>
			<div class="etc-login-form">
				<p>already have an account? <a href="HomePage.jsp">login here</a></p>
				<p>new user? <a href="#">create new account</a></p>
			</div>
		</form>
	</div>
	<!-- end:Main Form -->
</div>
	
</body>
</html>