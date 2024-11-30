package com.carRental.carRentalProject.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.carRental.carRentalProject.database.DbConnection;
import com.carRental.carRentalProject.model.Booking;
import com.carRental.carRentalProject.model.Car;

public class BookingService {
	private static int customerId;

//	private static String carId = CarService.provideCarId();
	public static void confirmBooking(Booking bookedCar) {

		String carName="",driver_name="",platno="",driver_phone_no="",carId="";
		try(Connection con = DbConnection.getConnection();
				PreparedStatement ps1 = con.prepareStatement("SELECT carName, platno, driver_name, driver_phone_no FROM vehicle WHERE carId=? ");
				PreparedStatement ps2 = con.prepareStatement("insert into booking(customerId,carId,carName,driver_name,platno,pickupTime,driver_phone_no,passengerQty,pickupLocation,dropoffLocation,pickupDate) values(?,?,?,?,?,?,?,?,?,?,?)")) {
			
			carId = bookedCar.getCarId();
			ps1.setString(1, carId);
			ResultSet rs1 = ps1.executeQuery();
			Booking b = new Booking();
			if(rs1.next()) {
				carName = rs1.getString("carName");
				driver_name = rs1.getString("driver_name");
				platno = rs1.getString("platno");
				driver_phone_no = rs1.getString("driver_phone_no");
			
			}
			System.out.println(carId);
			customerId = bookedCar.getCustomerId();
			ps2.setInt(1,customerId);
			ps2.setString(2, carId);
			ps2.setString(3,carName);
			ps2.setString(4,driver_name);
			ps2.setString(5,platno);
			ps2.setString(6,bookedCar.getPickupTime());
			ps2.setString(7,driver_phone_no);
			ps2.setInt(8,bookedCar.getPassengerQty());
			ps2.setString(9,bookedCar.getPickupLocation());
			ps2.setString(10,bookedCar.getDropoffLocation());
			ps2.setString(11, bookedCar.getPickupDate());
			
			int rs2 = ps2.executeUpdate();
			
			if(rs2>0) {
				System.out.println("Data inserted successfully!");
			}else {
			    System.out.println("No rows affected.");
			 }
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static List<Booking> getBookedCarDetails() throws ClassNotFoundException {
		List<Booking> cars = new ArrayList<>();
		String sql = "SELECT carName, platno, driver_name, driver_phone_no FROM booking WHERE customerId = ?";

		try (Connection con = DbConnection.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setInt(1, customerId);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {

				Booking bookedCar = new Booking();
				bookedCar.setCarName(rs.getString("carName"));
				bookedCar.setDriver_name(rs.getString("driver_name"));
				bookedCar.setPlatno(rs.getString("platno"));
				bookedCar.setDriver_phone_no(rs.getLong("driver_phone_no"));
				cars.add(bookedCar);

			}
			System.out.println(customerId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cars;
	}
}
