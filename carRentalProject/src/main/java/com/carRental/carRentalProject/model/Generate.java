package com.carRental.carRentalProject.model;

import java.util.Random;

public class Generate {
	public static int generateId() {

		Random random = new Random();
		int randomNumber = random.nextInt(10000); // Adjust the range as needed
		return randomNumber;

	}
}
