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

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">RoadRunner Car Rental</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="driverHome">Home</a></li>

					<li class="nav-item"><a class="nav-link" href="yourAddedCar">your
							Cars</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Bookings</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="contact_us">Contact
							Us</a></li>
				</ul>
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link"
						href="carRentalLogout">logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<script>
		$(document).ready(function() {
			// Get the current page URL
			var currentUrl = window.location.href;

			// Iterate through the navbar links
			$(".navbar-nav li a").each(function() {
				var link = $(this);
				var href = link.attr("href");

				// Check if the current URL matches the link's href
				if (currentUrl.indexOf(href) !== -1) {
					link.addClass("active");
				}
			});
		});
	</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>