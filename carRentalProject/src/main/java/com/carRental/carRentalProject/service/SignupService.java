package com.carRental.carRentalProject.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.carRental.carRentalProject.database.DbConnection;

public class SignupService {

	public static void signupUser(String username,String email,String pwd,String re_pwd) throws ClassNotFoundException {
		try(Connection con = DbConnection.getConnection();
				PreparedStatement ps1 = con.prepareStatement("insert into signup(username,email,password,re_enter_password) values(?,?,?,?)");
				PreparedStatement ps2 = con.prepareStatement("insert into login(emailId,username,password) values(?,?,?)")){
			ps1.setString(1, username);
			ps1.setString(2, email);
			ps1.setString(3, pwd);
			ps1.setString(4, re_pwd);
			
			ps1.executeUpdate();
			
			ps2.setString(1, email);
			ps2.setString(2, username);
			ps2.setString(3, pwd);
		
			ps2.executeUpdate();
			
		}catch (SQLException e) {
            e.printStackTrace();
        }
	}
	
	public static void signupUser(String username,String email,String pwd,String re_pwd,String role) throws ClassNotFoundException {
		try(Connection con = DbConnection.getConnection();
				PreparedStatement ps1 = con.prepareStatement("insert into signup(username,email,password,re_enter_password,role) values(?,?,?,?,?)");
				PreparedStatement ps2 = con.prepareStatement("insert into login(emailId,username,password,role) values(?,?,?,?)")){
			ps1.setString(1, username);
			ps1.setString(2, email);
			ps1.setString(3, pwd);
			ps1.setString(4, re_pwd);
			ps1.setString(5, role);
			
			ps1.executeUpdate();
			
			ps2.setString(1, email);
			ps2.setString(2, username);
			ps2.setString(3, pwd);
			ps2.setString(4, role);
			ps2.executeUpdate();
			
		}catch (SQLException e) {
            e.printStackTrace();
        }
	}
}
