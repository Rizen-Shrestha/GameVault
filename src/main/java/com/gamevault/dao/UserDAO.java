package com.gamevault.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.time.LocalDate;

import com.gamevault.utils.DBconfig;

public class UserDAO {
	public void insertUser(String firstName, String lastName, String username, String email, String gender, String dob, String password) throws Exception {
		LocalDate localDate = LocalDate.parse(dob);
		Date sqlDate = Date.valueOf(localDate);
		
		Connection con = DBconfig.getConnection();
		
		String sql = "INSERT INTO students (firstName, lastName, username, email, gender, dob, password) "
                + "VALUES (?,?, ?, ?, ?, ?, ?)";
	     PreparedStatement pst = con.prepareStatement(sql);
	     
	     pst.setString(1, firstName);
	     pst.setString(2, lastName);
	     pst.setString(3, username);
	     pst.setDate(4, sqlDate);
	     pst.setString(5, gender);
	     pst.setString(6, email);
	     pst.setString(7, password);
	
	     pst.executeUpdate();
	     pst.close();
	     con.close();
	}
}
