package com.gamevault.services;

import java.sql.Date;

import com.gamevault.dao.GameDAO;

public class AddGameService {
	GameDAO dao = new GameDAO();

    public void addGame(String title, String description, double price, Date releaseDate,
                           String creator) throws Exception {
        dao.insertGame(title, description, price, releaseDate, creator);
    }
}
