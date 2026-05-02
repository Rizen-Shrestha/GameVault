package com.gamevault.services;

import com.gamevault.dao.UserDAO;
import com.gamevault.model.UserModel;
import com.gamevault.utils.PasswordUtil;

public class LoginService {
	UserDAO userDAO = new UserDAO();
	
    public String authenticate(String username, String password) {
    	
    	// Basic input fields validation
    	if (username == null || username.trim().isEmpty()) {
            return "Username is required";
        }
        if (password == null || password.isEmpty()) {
            return "Password is required";
        }
        
        // Actual logic to fetch user data and do validation
        try {
            // Fetch the user by username from DAO
            UserModel user = userDAO.getUserByUsername(username);

            // Check if user exists
            if (user == null) {
                return "User doesn't exists";
            }

            // Verify the password using jBCrypt: BCrypt.checkpw(plain_text_password, hashed_password_from_db)
            if (PasswordUtil.checkPassword(password, user.getPassword())) {
                return "Success";
            } 
            else {
                return "Password is incorrect";
            }

        } catch (Exception e) {
            e.printStackTrace();
            return "Error in Database";
        }
    }
}
