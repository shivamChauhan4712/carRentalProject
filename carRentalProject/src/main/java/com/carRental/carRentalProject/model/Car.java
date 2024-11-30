package com.carRental.carRentalProject.model;

public class Car {
	private String carId;
	private String car_name;
	private String driver_name;
	private String platno;
	private long driver_phone_no;
	private String departure;
	private String destination;
	private int totalPrice;
	public String getCarId() {
		return carId;
	}
	public void setCarId(String carId) {
		this.carId = carId;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getCar_name() {
		return car_name;
	}
	public void setCar_name(String car_name) {
		this.car_name = car_name;
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
	public long getDriver_phone_no() {
		return driver_phone_no;
	}
	public void setDriver_phone_no(long driver_phone_no) {
		this.driver_phone_no = driver_phone_no;
	}
	public String getDeparture() {
		return departure;
	}
	public void setDeparture(String departure) {
		this.departure = departure;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
}
