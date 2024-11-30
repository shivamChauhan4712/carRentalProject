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
	<%@ include file="navbar.jsp"%>
	<div class="container">
		<h2 class="text-center">Find Your Ride</h2>
		<form action="chooseCabToBook" method="post">
			<div class="mb-3">
				<label for="pickupLocation" class="form-label me-2">From</label> <input
					type="text" class="form-control" id="pickupLocation"
					placeholder="Enter pickup location" name="pickupLocation" required>
			</div>
			<div class="mb-3">
				<label for="dropoffLocation" class="form-label me-2">To</label> <input
					type="text" class="form-control" id="dropoffLocation"
					placeholder="Enter drop-off location" name="dropoffLocation"
					required>
			</div>
			<div class="mb-3">
				<label for="passengerQty" class="form-label me-2">Passenger</label>
				<input type="number" class="form-control" id="passengerQty"
					placeholder="Enter passenger Qty" value="1" min="1"
					name="passengerQty" required>
			</div>
			<div class="mb-3">
				<label for="pickupDate" class="form-label me-2">Date</label> <input
					type="date" class="form-control" id="pickupDate" name="pickupDate"
					required>
			</div>
			<div class="mb-3">
				<label for="pickupTime" class="form-label me-2">Time</label> <input
					type="time" class="form-control" id="pickupTime" name="pickupTime"
					required>
			</div>
			<button type="submit" class="btn btn-primary">Find Your Cab</button>
		</form>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>