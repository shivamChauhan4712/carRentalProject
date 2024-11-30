package com.carRental.carRentalProject.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.carRental.carRentalProject.database.DbConnection;

public class contact_us_service {
	public static void saveContactUs(String name, String email, String message) throws ClassNotFoundException, SQLException {
		try(Connection con = DbConnection.getConnection();
				PreparedStatement ps = con.prepareStatement("insert into contactus(name,emailId,message) values(?,?,?)")){
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, message);
			ps.executeUpdate();
		}catch (SQLException e) {
            e.printStackTrace();
        }
	}
}
