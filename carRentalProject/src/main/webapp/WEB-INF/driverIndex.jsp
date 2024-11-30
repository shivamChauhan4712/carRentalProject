<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RoadRunner for Drivers</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">RoadRunner for Drivers</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Home</a></li>

					<li class="nav-item"><a class="nav-link" href="#">your
							Cars</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Bookings</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="carRentalDriverLogin">Contact
							Us</a></li>
				</ul>
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link"
						href="carRentalDriverLogin">login</a></li>
					<li class="nav-item"><a class="nav-link"
						href="carRentalDriverLogout">logout</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="jumbotron">
		<h1 class="display-4">Hi Buddy!</h1>
		<p class="lead">Become a part of our growing family and enjoy the
			freedom of the roads, Work on your own schedule and balance work and
			personal life.</p>
		<hr class="my-4">
		<p>Ready to Drive with Us? Add Car now and Start Earning Today!</p>
		<a class="btn btn-primary btn-lg" href="carRentalDriverLogin"
			role="button">Add Car</a>
	</div>


</body>
</html>