<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.carRental.carRentalProject.service.BookingService"%>
<%@ page import="com.carRental.carRentalProject.model.Booking"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<div class="accordion" id="accordionExample">
			<div class="accordion-item">
				<h2 class="accordion-header" id="headingOne">
					<button class="accordion-button" type="button"
						data-bs-toggle="collapse" data-bs-target="#collapseOne"
						aria-expanded="true" aria-controls="collapseOne">current
						booked cars</button>
				</h2>
				<div id="collapseOne" class="accordion-collapse collapse show"
					aria-labelledby="headingOne" data-bs-parent="#accordionExample">
					<div class="accordion-body">
						<table class="table">
				<thead>
					<tr>
						<th>Car Name</th>
						<th>Plate No</th>
						<th>Driver Name</th>
						<th>Driver Phone</th>
						
					</tr>
				</thead>
				<tbody>
					<%
					BookingService carService = new BookingService();
					List<Booking> bookedCar = BookingService.getBookedCarDetails();
					for (Booking car : bookedCar) {
					%>
					<tr>
						<td><%=car.getCarName()%></td>
						<td><%=car.getPlatno()%></td>
						<td><%=car.getDriver_name()%></td>
						<td><%=car.getDriver_phone_no()%></td>
					</tr>
					<%
					}
					%>
				</tbody>
			</table>
					</div>
				</div>
			</div>
		</div>
</body>
</html>