package com.gamevault.services;

import java.util.List;

import com.gamevault.dao.UserDAO;
import com.gamevault.model.UserModel;

public class UserListService {
	public List<UserModel> fetchAll() throws Exception {
		UserDAO userDAO = new UserDAO();
		return userDAO.getAllUsers();
	}
}
