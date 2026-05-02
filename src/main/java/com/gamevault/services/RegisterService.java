package com.gamevault.services;

import com.gamevault.dao.UserDAO;
import com.gamevault.utils.PasswordUtil;

public class RegisterService {
	UserDAO dao = new UserDAO();

    public void addUser(String firstName, String lastName, String username, String email,
                           String gender, String dob, String password) throws Exception {
    	// For hashing password
    	password = PasswordUtil.getHashPassword(password); 
    	
        dao.insertUser(firstName, lastName, username, email, gender, dob, password);
    }
}
