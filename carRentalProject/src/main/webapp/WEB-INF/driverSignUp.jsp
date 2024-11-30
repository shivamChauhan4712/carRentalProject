<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>RoadRunner for Drivers</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h2 class="text-center">Be a Driver with us</h2>
        <form action="carRentalDriverSignup_submit" method = post onsubmit="return validateForm()">
        	<div class="form-group">
                <label for="username">UserName:</label>
                <input type="text" class="form-control" name="username" id="username" placeholder="Enter username" required>
            </div>
            <div class="form-group">
                <label for="email">Email address:</label>
                <input type="email" class="form-control" name="email" id="email" placeholder="Enter email" required>
            </div>
            <div class="form-group">
                <label for="pwd">Password:</label>
                <input type="password" class="form-control" name="pwd" id="pwd" placeholder="Enter password" required>
            </div>
            <div class="form-group">
                <label for="re-pwd">re-Password:</label>
                <input type="password" class="form-control" name="re-pwd" id="re-pwd" placeholder="re-password" required>
            </div>
            <button type="submit" class="btn btn-primary">SignUp</button>
            <p>
				Already have an account? <a href="carRentalDriverLogin">Login</a>
			</p>
        </form>
    </div>
    
    <script src="js/validateSignup.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>