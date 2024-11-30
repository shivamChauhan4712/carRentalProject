package com.carRental.carRentalProject.model;

public class Booking {
	private String carId;
	private int customerId;
	private String carName;
	private String driver_name;
	private String platno;
	private String pickupTime;
	private String pickupLocation;
	private String dropoffLocation;
	private String pickupDate;
	private long driver_phone_no;
	private int passengerQty;
	private int total_price;
	
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	
	public String getCarId() {
		return carId; 
	}
	public void setCarId(String id) {
		carId = id;
	}
	public void setPickupLocation(String loc) {
		pickupLocation = loc;
	}
	public String  getPickupLocation() {
		return pickupLocation;
	}
	public void setDropoffLocation(String loc) {
		dropoffLocation = loc;
	}
	public String  getDropoffLocation() {
		return dropoffLocation;
	}
	public int getTotal_price() {
		return total_price;
	}
	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}
	public String getCarName() {
		return carName;
	}
	public void setCarName(String carName) {
		this.carName = carName;
	}
	public String getDriver_name() {
		return driver_name;
	}
	public void setDriver_name(String driver_name) {
		this.driver_name = driver_name;
	}
	public String getPlatno() {
		return platno;
	}
	public void setPlatno(String platno) {
		this.platno = platno;
	}
	public String getPickupTime() {
		return pickupTime;
	}
	public void setPickupTime(String pickupTime) {
		this.pickupTime = pickupTime;
	}
	public String getPickupDate() {
		return pickupDate;
	}
	public void setPickupDate(String pickupDate) {
		this.pickupDate = pickupDate;
	}
	public long getDriver_phone_no() {
		return driver_phone_no;
	}
	public void setDriver_phone_no(long driver_phone_no) {
		this.driver_phone_no = driver_phone_no;
	}
	public int getPassengerQty() {
		return passengerQty;
	}
	public void setPassengerQty(int passengerQty) {
		this.passengerQty = passengerQty;
	}
	
}
