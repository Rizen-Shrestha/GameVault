package com.gamevault.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

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
	
	public List<UserModel> getAllUsers(String search) throws Exception {
		List<UserModel> users = new ArrayList<>();
		String sql;
		
	    if (search != null && !search.trim().isEmpty()) {
	        sql = "SELECT * FROM users WHERE username LIKE ?";
	    } else {
	        sql = "SELECT * FROM users";
	    }

	    try (Connection conn = DBconfig.getConnection();
	         PreparedStatement pst = conn.prepareStatement(sql)) {

	        if (search != null && !search.trim().isEmpty()) {
	            pst.setString(1, "%" + search.trim() + "%");
	        }

	        ResultSet rs = pst.executeQuery();
	        while (rs.next()) {
	            UserModel user = new UserModel();
	            user.setUsername(rs.getString("username"));
	            user.setFirstName(rs.getString("firstName"));
	            user.setLastName(rs.getString("lastName"));
	            user.setEmail(rs.getString("email"));
	            user.setDob(rs.getDate("dob"));
	            user.setRole(rs.getString("role"));
	            user.setAccountStatus(rs.getString("accountStatus"));
	            users.add(user);
	        }
//		Connection con = DBconfig.getConnection();
//		
//		String sql = "SELECT * FROM Users";
//		PreparedStatement pst = con.prepareStatement(sql);
//		ResultSet rs = pst.executeQuery();
//		
//		while (rs.next()) {
//			UserModel m = new UserModel();
//			m.setUserId(rs.getInt("userId"));
//			m.setFirstName(rs.getString("firstName"));
//			m.setLastName(rs.getString("lastName"));
//			m.setUsername(rs.getString("username"));
//			m.setDob(rs.getDate("dob"));
//			m.setEmail(rs.getString("email"));
//			m.setRole(rs.getString("role"));
//			m.setAccountStatus(rs.getString("accountStatus"));
//			users.add(m);
//		}
		
		rs.close();
		pst.close();
		conn.close();
		return users;
	    }
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
			user.setEmail(rs.getString("email"));
		}
		
		
		return user;
	}
}
