package com.carRental.carRentalProject.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.carRental.carRentalProject.database.DbConnection;


public class LoginService {
	private static int loginId;
	private static String username;
	public static int getLoginId() {
		return loginId;
	}
	public static void setLoginId(int id) {
		loginId = id;
	}
	
	
	public static void setUsername(String name) {
		username = name;
	}
	public static String getUsername() {
		return username;
	}
	public static String isValidUser(String email, String pwd) throws ClassNotFoundException {
		String role="";
		int id=0;
		try(Connection con = DbConnection.getConnection();
				PreparedStatement ps = con.prepareStatement("SELECT id, username, role FROM login WHERE emailId = ?  AND password = ?")){
			
			ps.setString(1, email);
            ps.setString(2, pwd);
            
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                role = rs.getString("role");
                setLoginId(rs.getInt("id"));
                setUsername(username);
            }
            System.out.println(getUsername());
		}catch (SQLException e) {
            e.printStackTrace();
        }
		return role;
	}
}
