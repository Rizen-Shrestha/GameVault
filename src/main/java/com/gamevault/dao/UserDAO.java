package com.gamevault.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;

import com.gamevault.model.UserModel;
import com.gamevault.utils.DBconfig;

public class UserDAO {
	public void insertUser(String firstName, String lastName, String username, String email, String gender, String dob, String password) throws Exception {
		// for DOB
		LocalDate localDate = LocalDate.parse(dob);
		Date sqlDate = Date.valueOf(localDate);
		
		// for creation date
		long milliseconds = System.currentTimeMillis();
		Date currentDate = new Date(milliseconds);
		
		Connection con = DBconfig.getConnection();
		if (con == null) {
		    throw new Exception("Database connection failed! Check DBconfig settings.");
		}
		
		String sql = "INSERT INTO Users (firstName, lastName, username, email, gender, dob, password, role, accountStatus, creationDate) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	     PreparedStatement pst = con.prepareStatement(sql);
	     
	     // user inputs
	     pst.setString(1, firstName);
	     pst.setString(2, lastName);
	     pst.setString(3, username);
	     pst.setString(4, email);
	     pst.setString(5, gender);
	     pst.setDate(6, sqlDate);
	     pst.setString(7, password);
	     
	     // default/automatic values
	     pst.setString(8,  "user");
	     pst.setString(9,  "active");
	     pst.setDate(10, currentDate);
	     
	     pst.executeUpdate();
	     pst.close();
	     con.close();
	}
	
	public UserModel getUserByUsername(String username) throws Exception {
		UserModel user = null;
		Connection con = DBconfig.getConnection();
		
		String sql = "SELECT * FROM Users WHERE username = ?";
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1,username);
		
		ResultSet rs = pst.executeQuery();
		
		if(rs.next()) {
			user = new UserModel();
			user.setUserId(rs.getInt("userId"));
			user.setUsername(rs.getString("username"));
			user.setPassword(rs.getString("password"));
			user.setFirstName(rs.getString("firstName"));
			user.setLastName(rs.getString("lastName"));
			user.setRole(rs.getString("role"));
		}
		
		
		return user;
	}
}
