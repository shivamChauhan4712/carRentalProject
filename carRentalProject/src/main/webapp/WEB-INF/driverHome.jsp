<%@page import="com.carRental.carRentalProject.service.LoginService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RoadRunner for Drivers</title>
</head>
<body>
<%@ include file="driverNavBar.jsp"%>
<div class="jumbotron">
  <h1 class="display-4">Hi Buddy!</h1>
  <p class="lead">Become a part of our growing family and enjoy the freedom of the roads, Work on your own schedule and balance work and personal life.</p>
  <hr class="my-4">
  <p>Ready to Drive with Us? Add Car now and Start Earning Today!</p>
  <a class="btn btn-primary btn-lg" href="addCar" role="button">Add Car</a>
</div>
</body>
</html>