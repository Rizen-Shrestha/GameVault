package com.gamevault.model;

import java.sql.Date;

public class GameModel {

    private int gameId;
    private String title;
    private String description;
    private double price;
    private Date releaseDate;
    private String creator;
    private String genre;

    public int getGameId() { return gameId; }
    public void setGameId(int gameId) { this.gameId = gameId; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }

    public Date getReleaseDate() { return releaseDate; }
    public void setReleaseDate(Date releaseDate) { this.releaseDate = releaseDate; }

    public String getCreator() { return creator; }
    public void setCreator(String creator) { this.creator = creator; }
    
    //Method to standardize image names for all games
    public String getSafeTitle() {
        if (this.title == null) return "default_game";
        return this.title.trim().toLowerCase().replaceAll("[^a-z0-9]", "_");
    }
    

	public String getGenre() {
	     return genre;
	 }
	
	public void setGenre(String genre) {
	     this.genre = genre;
	 }
}