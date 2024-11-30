<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>RoadRunner for Drivers</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>
	<%@ include file="driverNavBar.jsp"%>
	<div class="container">
		<h2>Add Car</h2>
		<form action="/yourAddedCar" method=post
			onSubmit="return validateAddCarForm()">
			<%@ include file="addCarForm.jsp"%>
		</form>
	</div>
	<script src="js/validateAddCar.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>