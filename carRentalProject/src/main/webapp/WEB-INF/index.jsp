<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>RoadRunner Car Rental</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Car Rental System</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="Home">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="carFleet">Car
							fleet</a></li>
					<li class="nav-item"><a class="nav-link" href="#">About Us</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="carRentalLogin">Contact
							Us</a></li>
				</ul>
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link" href="carRentalLogin">Login</a></li>
					<li class="nav-item"><a class="nav-link"
						href="carRentalSignup">Sign Up</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">
		<h2 class="text-center">Find Your Ride</h2>
		<form action="carRentalLogin" method="get">
			<div class="mb-3">
				<label for="pickupLocation" class="form-label">Pickup
					Location</label> <input type="text" class="form-control"
					id="pickupLocation" placeholder="Enter pickup location">
			</div>
			<div class="mb-3">
				<label for="dropoffLocation" class="form-label">Drop-off
					Location</label> <input type="text" class="form-control"
					id="dropoffLocation" placeholder="Enter drop-off location">
			</div>
			<div class="mb-3">
				<label for="journeyType">Journey Type</label>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="journeyType"
						id="oneWay" value="one-way"> <label
						class="form-check-label" for="oneWay"> One-Way </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="journeyType"
						id="twoWay" value="two-way"> <label
						class="form-check-label" for="twoWay"> Two-Way </label>
				</div>
			</div>
			<div class="mb-3">
				<label for="pickupDate" class="form-label">Pickup Date</label> <input
					type="date" class="form-control" id="pickupDate">
			</div>
			<div class="mb-3">
				<label for="pickupTime" class="form-label">Pickup Time</label> <input
					type="time" class="form-control" id="pickupTime">
			</div>
			<button type="submit" class="btn btn-primary">Find Your Cab</button>
		</form>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>