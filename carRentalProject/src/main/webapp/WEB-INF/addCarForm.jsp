<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="row mb-3">
		<div class="col">
			<input type="text" class="form-control" placeholder="car Name"
				id="carName" name="carName" required>
		</div>
		<div class="col">
			<input type="text" class="form-control" placeholder="plateNo"
				id="plate No" name="plateNo" required>
		</div>
	</div>
	<div class="row mb-3">
		<div class="col">
			<input type="text" class="form-control" placeholder="driver Name"
				id="driverName" name="driverName" required>
		</div>
		<div class="col">
			<input type="tel" class="form-control" id="driverPhone"
				placeholder="driver Phone" name="driverPhone" required>
		</div>
	</div>

	<div class="row mb-3">
		<div class="col">
			<input type="text" class="form-control" placeholder="from location"
				id="fromLocation" name="fromLocation" required>
		</div>
		<div class="col">
			<input type="text" class="form-control" placeholder="to location"
				id="toLocation" name="toLocation" required>
		</div>
	</div>
	<div class="row mb-3">
		<div class="col">
			<input type="number" class="form-control" id="totalPrice"
				name="totalPrice" placeholder="price charged" required>
		</div>
		<div class="col">
			<input type="number" class="form-control" id="seatingCapacity"
				name="seatingCapacity" placeholder="Seating Capacity" min="4"
				required>
		</div>
	</div>
	<button type="submit" class="btn btn-primary">Add Car</button>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>