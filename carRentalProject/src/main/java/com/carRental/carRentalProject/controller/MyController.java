package com.carRental.carRentalProject.controller;

import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.carRental.carRentalProject.model.Booking;
import com.carRental.carRentalProject.service.BookingService;
import com.carRental.carRentalProject.service.CarService;
import com.carRental.carRentalProject.service.LoginService;
import com.carRental.carRentalProject.service.SignupService;
import com.carRental.carRentalProject.service.contact_us_service;

@Controller
public class MyController {
	private int loginId;

	@GetMapping("/carRentalIndex")
	public String index() {
		return "index";
	}

	@GetMapping("/carRentalLogin")
	public String login() {
		return "login";
	}

	@PostMapping("/login_submit")
	public String login(@RequestParam String email, @RequestParam String pwd) throws ClassNotFoundException {
		String role = LoginService.isValidUser(email, pwd);
		loginId = LoginService.getLoginId();
		if (role.equals("admin")) {
			return "admin_dashboard";
		} else if (role.equals("user")) {
			return "home";
		} else if (role.equals("driver")) {
			return "/driverHome";
		} else {
			return "error_page";
		}
	}

	@GetMapping("/home")
	public String home_page() {
		return "home";

	}

	@GetMapping("/driverHome")
	public String driverHome() {
		return "driverHome";

	}

	Booking bookingDetails = new Booking();

	@PostMapping("/chooseCabToBook")
	public String home_page(@RequestParam("pickupLocation") String pickupLocation,
			@RequestParam("dropoffLocation") String dropoffLocation, @RequestParam("passengerQty") int passengerQty,
			@RequestParam("pickupDate") String pickupDate, @RequestParam("pickupTime") String pickupTime) {
		bookingDetails.setCustomerId(loginId);

		bookingDetails.setPickupLocation(pickupLocation);
		bookingDetails.setDropoffLocation(dropoffLocation);
		bookingDetails.setPassengerQty(passengerQty);
		bookingDetails.setPickupDate(pickupDate);
		bookingDetails.setPickupTime(pickupTime);

//		System.out.println(pickupLocation+" "+dropoffLocation);
		CarService.setCurrentLocation(pickupLocation);
		CarService.setDropOffLocation(dropoffLocation);
		return "findCar";

	}

	@GetMapping("/chooseCabToBook")
	public String chooseCabToBook() {
		return "findCar";
	}

	@GetMapping("/myBooking")
	public String bookCar() {
		return "userRide";
	}

	@PostMapping("/bookCar")
	public String bookCar(@RequestParam String carId, @RequestParam String mobileNumber) {

		bookingDetails.setCarId(carId);
		BookingService.confirmBooking(bookingDetails);
//		System.out.println("Car id:" + carId + " " + "phone:" + mobileNumber);
		return "redirect:/myBooking"; // Redirect to myBooking page
	}

	@GetMapping("/carRentalSignup")
	public String signup() {
		return "signup";
	}

	@PostMapping("/Signup_submit")
	public String signup(@RequestParam("username") String username, @RequestParam("email") String email,
			@RequestParam("pwd") String pwd, @RequestParam("re-pwd") String re_pwd) throws ClassNotFoundException {

		SignupService.signupUser(username, email, pwd, re_pwd);
		return "redirect:/carRentalLogin";
	}

	@GetMapping("/carRentalDriverSignup")
	public String driverSignup() {
		return "driverSignUp";
	}

	@GetMapping("/carRentalDriverLogin")
	public String driverLogin() {
		return "driverLogin";
	}

	@GetMapping("/carRentalDriverLogout")
	public String driverLogout() {
		return "driverIndex";
	}

	@PostMapping("/carRentalDriverSignup_submit")
	public String driverSignup(@RequestParam("username") String username, @RequestParam("email") String email,
			@RequestParam("pwd") String pwd, @RequestParam("re-pwd") String re_pwd) throws ClassNotFoundException {
		String role = "driver";
		SignupService.signupUser(username, email, pwd, re_pwd, role);
		return "redirect:/carRentalDriverLogin";
	}

	@GetMapping("/addCar")
	public String addCar() {
		return "addCar";
	}

	@GetMapping("/yourAddedCar")
	public String yourCar() {
		return "yourCar";
	}

	@PostMapping("/yourAddedCar")
	public String yourCar(@RequestParam("carName") String carName, @RequestParam("plateNo") String plateNo,
			@RequestParam("driverName") String driverName, @RequestParam("driverPhone") Long driverPhone,
			@RequestParam("totalPrice") int totalPrice, @RequestParam("seatingCapacity") int seatingCapacity,
			@RequestParam("fromLocation") String fromLocation, @RequestParam("toLocation") String toLocation)
			throws ClassNotFoundException {

		CarService.addCar(carName, plateNo, driverName, driverPhone, totalPrice, seatingCapacity, fromLocation,
				toLocation);

		return "yourCar";
	}

	@GetMapping("/contact_us")
	public String showContactUsForm() {
		return "contactUs";
	}

	@PostMapping("/contact_us_service")
	public String submitContactUs(@RequestParam("name") String name, @RequestParam("email") String email,
			@RequestParam("message") String message) throws ClassNotFoundException, SQLException {
		contact_us_service.saveContactUs(name, email, message);
		return "redirect:/contact_us";
	}

	@GetMapping("/carRentalLogout")
	public String logout() {
		return "index";
	}
}
