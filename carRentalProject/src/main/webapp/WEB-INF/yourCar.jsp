<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.carRental.carRentalProject.service.CarService"%>
<%@ page import="com.carRental.carRentalProject.model.Car"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>roadRunner Car Rental</title>
</head>
<body>
	<%@ include file="driverNavBar.jsp"%>
	<div class="container">
		<h1>your added are shown here</h1>

		<table class="table table-hover">
			<thead>
				<tr>
					<th>Sr No.</th>
					<th>Car Name</th>
					<th>Departure</th>
					<th>Destination</th>
					<th>Price Charged</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<%
				CarService carService = new CarService();
				List<Car> cars = carService.showAddedCar();
				int count = 1;

				for (Car car : cars) {
				%>
				<tr>
					<td><%=count%></td>
					<td><%=car.getCar_name()%></td>
					<td><%=car.getDeparture()%></td>
					<td><%=car.getDestination()%></td>
					<td><%=car.getTotalPrice()%></td>
					<td>
					<button type="button" class="btn btn-sm btn-primary">Edit</button>
					<button type="button" class="btn btn-sm btn-primary">Delete</button>
					</td>
				</tr>
				<%
				count += 1;
				}
				%>
			</tbody>
		</table>
	</div>


</body>
</html>