package com.gamevault.services;

import com.gamevault.dao.GameRequestDAO;

public class SubmitService {
	public int addGameRequest(String title, String creator, String description, String price, int userId) throws Exception {
		GameRequestDAO dao = new GameRequestDAO();
		return dao.insertGameRequest(title, description, Double.parseDouble(price), creator, "pending", userId);
	}
}
