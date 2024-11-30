package com.carRental.carRentalProject.service;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import com.carRental.carRentalProject.database.DbConnection;
import com.carRental.carRentalProject.model.Car;
import com.carRental.carRentalProject.model.Generate;

public class CarService {
	private static String carId;
	private static String current_location;
	private static String drop_off_location;

	public static String getCarId() {
		return carId;
	}

	public static void setCarId(String id) {
		carId = id;
	}

	public static void setCurrentLocation(String loc) {
		current_location = loc;
	}

	public static void setDropOffLocation(String loc) {
		drop_off_location = loc;
	}

	public List<Car> getAvailableCars() throws ClassNotFoundException {
		List<Car> cars = new ArrayList<>();
		String sql = "SELECT carId, carName, platno, driver_name, driver_phone_no,total_price,current_location,drop_off_location FROM vehicle WHERE available_status = 'available' AND current_location=? AND drop_off_location=?";

		try (Connection con = DbConnection.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {

			pstmt.setString(1, current_location);
			pstmt.setString(2, drop_off_location);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				Car car = new Car();
				car.setCar_name(rs.getString("carName"));
				car.setPlatno(rs.getString("platno"));
				car.setDriver_name(rs.getString("driver_name"));
				car.setDriver_phone_no(rs.getLong("driver_phone_no"));
				car.setTotalPrice(rs.getInt("total_price"));
				car.setCarId(rs.getString("carId"));
				car.setDeparture(rs.getString("current_location"));
				car.setDestination(rs.getString("drop_off_location"));
				cars.add(car);
				setCarId(car.getCarId());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return cars;
	}

	public static void addCar(String carName, String plateNo, String driverName, long driverPhone, int totalPrice,
			int seatingCapacity,String fromLocation,String toLocation) throws ClassNotFoundException {
		String sql = "insert into vehicle(carId,carName,platno,driver_name,driver_phone_no,total_price,seatingCapacity,current_location,drop_off_location) values(?,?,?,?,?,?,?,?,?)";

		try (Connection con = DbConnection.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {
			String id = "c0"+Generate.generateId();
			pstmt.setString(1, id);
			pstmt.setString(2, carName);
			pstmt.setString(3, plateNo);
			pstmt.setString(4, driverName);
			pstmt.setLong(5, driverPhone);
			pstmt.setInt(6, totalPrice);
			pstmt.setInt(7, seatingCapacity);
			pstmt.setString(8, fromLocation);
			pstmt.setString(9, toLocation);
			setCarId(id);
			int rs = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

    public List<Car> showAddedCar() throws ClassNotFoundException{
    	List<Car> cars = new ArrayList<>();
    	String sql = "SELECT carName, platno, driver_name, driver_phone_no,total_price,current_location,drop_off_location FROM vehicle WHERE carId=?";

		try (Connection con = DbConnection.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setString(1, getCarId());
			
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				Car car = new Car();
				car.setCar_name(rs.getString("carName"));
				car.setPlatno(rs.getString("platno"));
				car.setDriver_name(rs.getString("driver_name"));
				car.setDriver_phone_no(rs.getLong("driver_phone_no"));
				car.setTotalPrice(rs.getInt("total_price"));
				car.setDeparture(rs.getString("current_location"));
				car.setDestination(rs.getString("drop_off_location"));
				cars.add(car);
			}
			
		}catch (SQLException e) {
			e.printStackTrace();
		}
    	
    	return cars;
    }

}
