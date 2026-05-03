package com.gamevault.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import com.gamevault.model.UserModel;
import com.gamevault.utils.DBconfig;

public class UserListService {
	public List<UserModel> fetchAll(String search) throws Exception {
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
	            // set your fields here, e.g.:
	            user.setUsername(rs.getString("username"));
	            user.setFirstName(rs.getString("firstName"));
	            user.setLastName(rs.getString("lastName"));
	            user.setEmail(rs.getString("email"));
	            user.setDob(rs.getDate("dob"));
	            user.setRole(rs.getString("role"));
	            user.setAccountStatus(rs.getString("accountStatus"));
	            users.add(user);
	        }
	    }

	    return users;
	}
}
