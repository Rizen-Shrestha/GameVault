
package com.gamevault.services;

import com.gamevault.dao.UserDAO; 
import com.gamevault.utils.PasswordUtil;

public class RegisterService {
    UserDAO dao = new UserDAO();

    public String addUser(String firstName, String lastName, String username, String email,
                           String gender, String dob, String password) throws Exception {
        
        if(firstName == null || firstName.trim().isEmpty()) {
            return "First Name is required.";
        }
        if(lastName == null || lastName.trim().isEmpty()) {
            return "Last Name is required.";
        }
        if(username == null || username.trim().isEmpty()) {
            return "Username is required.";
        }
        if(email == null || email.trim().isEmpty()) {
            return "Email is required.";
        }
        if(gender == null || gender.trim().isEmpty()) {
            return "Gender is required.";
        }
        if(dob == null || dob.trim().isEmpty()) {
            return "DOB is required.";
        }
        if(password == null || password.trim().isEmpty()) {
            return "Password is required.";
        }
        
        // for email format
        if(!email.matches("^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$")) {
            return "Invalid format.";
        }
        
        // for duplicates checking
        if(dao.getUserByUsername(username) != null) {
            return "Username is taken.";
        }
        
        
        // For hashing password after valid input fields
        password = PasswordUtil.getHashPassword(password); 
        dao.insertUser(firstName, lastName, username, email, gender, dob, password);
        return "Success";
    }
}