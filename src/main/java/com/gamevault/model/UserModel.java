package com.gamevault.model;

import java.sql.Date;

public class UserModel {
	private int userId;
	private String username;
	private String email;
	private String password;
	private String role;
	private String accountStatus;
	private Date creationDate;
	private String firstName;
	private String lastName;
	private String gender;
	private Date dob;
	
	public int getUserId() { return userId; }
	public void setUserId(int userId) { this.userId = userId; }
	
	public String getUsername() { return username; }
	public void setUsername(String username) { this.username = username; }
	
	public String getEmail() { return email; }
	public void setEmail(String email) { this.email = email; }
	
	public String getPassword() { return password; }
	public void setPassword(String password) { this.password = password; }
	
	public String getRole() { return role; }
	public void setRole(String role) { this.role = role; }
	
	public String getAccountStatus() { return accountStatus; }
    public void setAccountStatus(String accountStatus) { this.accountStatus = accountStatus; }

    public Date getCreationDate() { return creationDate; }
    public void setCreationDate(Date creationDate) { this.creationDate = creationDate; }

    public String getFirstName() { return firstName; }
    public void setFirstName(String firstName) { this.firstName = firstName; }

    public String getLastName() { return lastName; }
    public void setLastName(String lastName) { this.lastName = lastName; }

    public String getGender() { return gender; }
    public void setGender(String gender) { this.gender = gender; }

    public Date getDob() { return dob; }
    public void setDob(Date dob) { this.dob = dob; }
}
