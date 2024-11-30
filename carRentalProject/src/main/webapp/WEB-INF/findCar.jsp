<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.carRental.carRentalProject.service.CarService"%>
<%@ page import="com.carRental.carRentalProject.model.Car"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RoadRunner Car Rental</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-KElwCWf/JGA9gRYwu7fEOZvBwAFwfwXBsjThvSiyFUTT9s67mBO4fWEqoiy+uN" crossorigin="anonymous"></script>
</head>
<body>
  <%@ include file="navbar.jsp"%>
  <div class="container">
    <h1>Car Fleet</h1>

    <table class="table table-hover">
      <thead>
        <tr>
          <th>Sr No.</th>
          <th>Car Name</th>
          <th>Driver Name</th>
          <th>Departure</th>
          <th>Destination</th>
          <th>Price Charged</th>
          <th>Action</th>
        </tr>
      </thead>
      <tbody>
        <%
        CarService carService = new CarService();
        List<Car> cars = carService.getAvailableCars();
        int count=1;

        for (Car car : cars) {
          %>
          <tr>
            <td><%=count%></td>
            <td><%=car.getCar_name()%></td>
            <td><%=car.getDriver_name()%></td>
            <td><%=car.getDeparture()%></td>
            <td><%=car.getDestination()%></td>
            <td><%=car.getTotalPrice()%></td>
            <td>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" data-car-id="<%=car.getCarId()%>" onclick="setCarId(this)">Confirm</button>
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title fs-5" id="exampleModalLabel">Mobile Number</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                        <form id="bookingForm" method="POST" action="/bookCar">
                          <input type="hidden" id="carId" name="carId" value="<%=car.getCarId()%>">
                          <input type="tel" class="form-control" id="mobileNumber" name="mobileNumber" pattern="[0-9]{10}" placeholder="Enter your mobile number (10 digits)" required>
                        </form>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                        <button type="submit" form="bookingForm" class="btn btn-primary">Book Now</button>
                      </div>
                    </div>
                  </div>
                </div>
            </td>
          </tr>
          <%
          count+=1;
        }
        %>
      </tbody>
    </table>
  </div>

  <script>
    function setCarId(button) {
      const carId = button.dataset.carId;
      document.getElementById("carId").value = carId;
    }
  </script>
</body>
</html>