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
<style type="text/css">
<
link rel ="stylesheet" href ="//maxcdn.bootstrapcdn.com /font-awesome/4.3.0
	/css/font-awesome.min.css "> <link href ='http: //fonts.googleapis.com
	/css?family=Varela+Round ' rel ='stylesheet' type ='text/css'> <script src
	="https: //cdnjs.cloudflare.com /ajax/libs/jquery-validate/1.13.1
	/jquery.validate.min.js "> </script> <meta name ="viewport" content
	="width=device-width, initial-scale =1, maximum-scale =1" />body {
	background: url(. ./ CSS/ Images/ backgroundcar.jpg ') no-repeat;
	background-size: 100% auto;
	padding: 10px;
	font-family: 'Varela Round';
}

a {
	color: #aaaaaa;
	transition: all ease-in-out 200ms;
}

a:hover {
	color: #333333;
	text-decoration: none;
}
/*=== 3. Text Outside the Box ===*/
.etc-login-form {
	color: #919191;
	padding: 10px 20px;
}

.etc-login-form p {
	margin-bottom: 5px;
}
/*=== 4. Main Form ===*/
.login-form-1 {
	max-width: 300px;
	border-radius: 5px;
	display: inline-block;
}

.main-login-form {
	position: relative;
}

.login-form-1 .form-control {
	border: 0;
	box-shadow: 0 0 0;
	border-radius: 0;
	background: transparent;
	color: #555555;
	padding: 7px 0;
	font-weight: bold;
	height: auto;
}

.login-form-1 .form-control::-webkit-input-placeholder {
	color: #999999;
}

.login-form-1 .form-control:-moz-placeholder, .login-form-1 .form-control::-moz-placeholder,
	.login-form-1 .form-control:-ms-input-placeholder {
	color: #999999;
}

.login-form-1 .form-group {
	margin-bottom: 0;
	border-bottom: 2px solid #efefef;
	padding-right: 20px;
	position: relative;
}

.login-form-1 .form-group:last-child {
	border-bottom: 0;
}

.login-group {
	background: #ffffff;
	color: #999999;
	border-radius: 8px;
	padding: 10px 20px;
}

/*=== 5. Login Button ===*/
.login-form-1 .login-button {
	position: absolute;
	right: -25px;
	top: 50%;
	background: #ffffff;
	color: #999999;
	padding: 11px 0;
	width: 50px;
	height: 50px;
	margin-top: -25px;
	border: 5px solid #efefef;
	border-radius: 50%;
	transition: all ease-in-out 500ms;
}

.login-form-1 .login-button:hover {
	color: #555555;
	transform: rotate(450deg);
}

.login-form-1 .login-button.clicked {
	color: #555555;
}

.login-form-1 .login-button.clicked:hover {
	transform: none;
}

.login-form-1 .login-button.clicked.success {
	color: #2ecc71;
}

.login-form-1 .login-button.clicked.error {
	color: #e74c3c;
}

.container {
	width: 400px;
	margin-left: auto;
	margin-right: auto;
	background: #F5F5DC;
	align-content: center;
}
/*=== 6. Form Invalid ===*/
label.form-invalid {
	position: absolute;
	top: 0;
	right: 0;
	z-index: 5;
	display: block;
	margin-top: -25px;
	padding: 7px 9px;
	background: #777777;
	color: #ffffff;
	border-radius: 5px;
	font-weight: bold;
	font-size: 11px;
}

label.form-invalid:after {
	top: 100%;
	right: 10px;
	border: solid transparent;
	content: " ";
	height: 0;
	width: 0;
	position: absolute;
	pointer-events: none;
	border-color: transparent;
	border-top-color: #777777;
	border-width: 6px;
}
/*=== 7. Form - Main Message ===*/
.login-form-main-message {
	background: #ffffff;
	color: #999999;
	border-left: 3px solid transparent;
	border-radius: 3px;
	margin-bottom: 8px;
	font-weight: bold;
	height: 0;
	padding: 0 20px 0 17px;
	opacity: 0;
	transition: all ease-in-out 200ms;
}

.login-form-main-message.show {
	height: auto;
	opacity: 1;
	padding: 10px 20px 10px 17px;
}

.login-form-main-message.success {
	border-left-color: #2ecc71;
}

.login-form-main-message.error {
	border-left-color: #e74c3c;
}

/*=== 9. Misc ===*/
.logo {
	padding: 15px 0;
	font-size: 25px;
	color: #aaaaaa;
	font-weight: bold;
}
</style>
<script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
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


	<!-- FORGOT PASSWORD FORM -->
	<div class="container">
		<div class="text-center" style="padding: 50px 0">
			<div class="logo" align="center">forgot password</div>
			<!-- Main Form -->
			<div class="login-form-1">
				<form id="forgot-password-form">
					<div class="etc-login-form">
						<p>When you fill in your registered email address, you will be
							sent instructions on how to reset your password.</p>
					</div>
					<div class="login-form-main-message"></div>
					<div class="main-login-form">
						<div class="login-group">
							<div class="form-group">
								<label for="fp_email" class="sr-only">Email address</label> <input
									type="text" class="form-control" id="fp_email" name="fp_email"
									placeholder="email address">
							</div>
						</div>
						<button type="submit" class="login-button">
							<i class="fa fa-chevron-right"></i>
						</button>
					</div>
					<div class="etc-login-form">
						<p>
							already have an account? <a href="#">login here</a>
						</p>
						<p>
							new user? <a href="#">create new account</a>
						</p>
					</div>
				</form>
			</div>
			<!-- end:Main Form -->
		</div>
	</div>
	<script type="text/javascript">
		(function($) {
			"use strict";

			var options = {
				'btn-loading' : '<i class="fa fa-spinner fa-pulse"></i>',
				'btn-success' : '<i class="fa fa-check"></i>',
				'btn-error' : '<i class="fa fa-remove"></i>',
				'msg-success' : 'All Good! Redirecting...',
				'msg-error' : 'Wrong login credentials!',
				'useAJAX' : true,
			};

			// Forgot Password Form
			//----------------------------------------------
			// Validation
			$("#forgot-password-form").validate({
				rules : {
					fp_email : "required",
				},
				errorClass : "form-invalid"
			});

			// Form Submission
			$("#forgot-password-form").submit(function() {
				remove_loading($(this));

				if (options['useAJAX'] == true) {

					dummy_submit_form($(this));

					return false;
				}
			});

			// Loading
			//----------------------------------------------
			function remove_loading($form) {
				$form.find('[type=submit]').removeClass('error success');
				$form.find('.login-form-main-message').removeClass(
						'show error success').html('');
			}

			function form_loading($form) {
				$form.find('[type=submit]').addClass('clicked').html(
						options['btn-loading']);
			}

			function form_success($form) {
				$form.find('[type=submit]').addClass('success').html(
						options['btn-success']);
				$form.find('.login-form-main-message').addClass('show success')
						.html(options['msg-success']);
			}

			function form_failed($form) {
				$form.find('[type=submit]').addClass('error').html(
						options['btn-error']);
				$form.find('.login-form-main-message').addClass('show error')
						.html(options['msg-error']);
			}

			// Dummy Submit Form (Remove this)
			//----------------------------------------------
			// This is just a dummy form submission. You should use your AJAX function or remove this function if you are not using AJAX.
			function dummy_submit_form($form) {
				if ($form.valid()) {
					form_loading($form);

					setTimeout(function() {
						form_success($form);
					}, 2000);
				}
			}

		})(jQuery);
	</script>
</body>
</html>