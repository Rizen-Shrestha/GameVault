package com.gamevault.services;

import java.sql.Date;

import com.gamevault.dao.GameDAO;

public class AddGameService {
	GameDAO dao = new GameDAO();

    public void addGame(String title, String description, double price, Date dateAdded,
                           String creator) throws Exception {
        dao.insertGame(title, description, price, dateAdded, creator);
    }
}
