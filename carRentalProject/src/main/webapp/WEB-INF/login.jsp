<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>RoadRunner Car Rental</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
<body>
	<div class="container">
		<h2 class="text-center">Login</h2>
		<form action="login_submit" method=post
			onsubmit="return validateForm()">
			<div class="form-group">
				<label for="email">Email address:</label> <input type="email"
					class="form-control" name="email" id="email"
					placeholder="Enter email" required>
			</div>
			<div class="form-group">
				<label for="pwd">Password:</label> <input type="password"
					class="form-control" name="pwd" id="pwd"
					placeholder="Enter password" required>
			</div>
			<button type="submit" class="btn btn-primary">Login</button>
			<p>
				Don't have an account? <a href="carRentalSignup">Sign Up</a>
			</p>
		</form>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="js/validateLogin.js"></script>

</body>
</html>