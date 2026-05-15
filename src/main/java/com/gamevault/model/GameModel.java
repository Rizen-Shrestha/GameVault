package com.gamevault.model;

import java.sql.Date;

public class GameModel {

    private int gameId;
    private String title;
    private String description;
    private double price;
    private Date dateAdded;
    private String creator;

    public int getGameId() { return gameId; }
    public void setGameId(int gameId) { this.gameId = gameId; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }

    public Date getDateAdded() { return dateAdded; }
    public void setDateAdded(Date dateAdded) { this.dateAdded = dateAdded; }

    public String getCreator() { return creator; }
    public void setCreator(String creator) { this.creator = creator; }
}