package com.gamevault.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import com.gamevault.model.GameModel;
import com.gamevault.utils.DBconfig;

public class GameDAO {

    public void insertGame(String title, String description, double price,
                           Date releaseDate, String creator) throws Exception {


        Connection con = DBconfig.getConnection();
        if (con == null) {
            throw new Exception("Database connection failed! Check DBconfig settings.");
        }

        String sql = "INSERT INTO Games (title, description, price, releaseDate, creator) "
                   + "VALUES (?, ?, ?, ?, ?)";

        PreparedStatement pst = con.prepareStatement(sql);

        pst.setString(1, title);
        pst.setString(2, description);
        pst.setDouble(3, price);
        pst.setDate(4, releaseDate);
        pst.setString(5, creator);

        pst.executeUpdate();

        pst.close();
        con.close();
    }


    public List<GameModel> getAllGames(String search) throws Exception {
        return getAllGames(search, null);
    }
    
    public List<GameModel> getAllGames(String search, String genre) throws Exception {

        List<GameModel> games = new ArrayList<>();

        StringBuilder sql = new StringBuilder(
                "SELECT g.*, GROUP_CONCAT(gn.genreName SEPARATOR ', ') as genre " +
                "FROM Games g " +
                "LEFT JOIN game_genres ggn ON g.gameId = ggn.gameId " +
                "LEFT JOIN genres gn ON ggn.genreId = gn.genreId "
            );

            if (search != null && !search.trim().isEmpty()) {
                sql.append("WHERE g.title LIKE ? ");
            }

            sql.append("GROUP BY g.gameId ");

            if (genre != null && !genre.trim().isEmpty()) {
                sql.append("HAVING genre LIKE ? ");
            }
            
        Connection con = DBconfig.getConnection();
        PreparedStatement pst = con.prepareStatement(sql.toString());

        int i = 1;
        if (search != null && !search.trim().isEmpty()) {
            pst.setString(i++, "%" + search.trim() + "%");
        }
        if (genre != null && !genre.trim().isEmpty()) {
            pst.setString(i++, "%" + genre.trim() + "%");
        }

        ResultSet rs = pst.executeQuery();

        while (rs.next()) {
            GameModel g = new GameModel();

            g.setGameId(rs.getInt("gameId"));
            g.setTitle(rs.getString("title"));
            g.setDescription(rs.getString("description"));
            g.setPrice(rs.getDouble("price"));
            g.setReleaseDate(rs.getDate("releaseDate"));
            g.setCreator(rs.getString("creator"));
            g.setGenre(rs.getString("genre"));

            games.add(g);
        }

        rs.close();
        pst.close();
        con.close();

        return games;
    }


    public GameModel getGameById(int gameId) throws Exception {

        GameModel game = null;

        Connection con = DBconfig.getConnection();
        String sql = "SELECT * FROM Games WHERE gameId = ?";

        PreparedStatement pst = con.prepareStatement(sql);
        pst.setInt(1, gameId);

        ResultSet rs = pst.executeQuery();

        if (rs.next()) {
            game = new GameModel();

            game.setGameId(rs.getInt("gameId"));
            game.setTitle(rs.getString("title"));
            game.setDescription(rs.getString("description"));
            game.setPrice(rs.getDouble("price"));
            game.setReleaseDate(rs.getDate("releaseDate"));
            game.setCreator(rs.getString("creator"));
            game.setGenre(rs.getString("genre"));
        }

        rs.close();
        pst.close();
        con.close();

        return game;
    }
    
    public int updateGame(int gameId, String title, String description,
            double price, Date releaseDate, String creator) throws Exception {

	
	Connection con = DBconfig.getConnection();
	
	String sql = "UPDATE Games SET title=?, description=?, price=?, releaseDate=?, creator=? WHERE gameId=?";
	
	PreparedStatement pst = con.prepareStatement(sql);
	
	pst.setString(1, title);
	pst.setString(2, description);
	pst.setDouble(3, price);
	pst.setDate(4, releaseDate);
	pst.setString(5, creator);
	pst.setInt(6, gameId);
	
	int rowsAffected = pst.executeUpdate();
	
	pst.close();
	con.close();
	
    return rowsAffected;

	}
    
    //Fetching Trending Games (Most sold)
    public List<GameModel> getTrendingGames(int limit) throws Exception {
        String sql = "SELECT g.*, COUNT(oi.gameId) as sales_count FROM games g " +
                     "LEFT JOIN order_items oi ON g.gameId = oi.gameId " +
                     "GROUP BY g.gameId ORDER BY sales_count DESC LIMIT ?";
        return queryRun (sql, null, limit);
    }

    // Fetching Newest Games
    public List<GameModel> getNewestGames(int limit) throws Exception {
        String sql = "SELECT g.* FROM games g ORDER BY g.releaseDate DESC LIMIT ?";
        return queryRun(sql, null, limit);
    }

    // Fetching Budget Games (Under Certain Price)
    public List<GameModel> getGamesUnderPrice(double maxPrice, int limit) throws Exception {
        String sql = "SELECT g.* FROM games g WHERE g.price <= ? LIMIT ?";
        return queryRun(sql, maxPrice, limit);
    }
    
    private List<GameModel> queryRun(String sql, Double maxPrice, int limit) throws Exception {
        List<GameModel> games = new ArrayList<>();
        
        try (Connection con = DBconfig.getConnection();
             PreparedStatement pst = con.prepareStatement(sql)) {
            
            if (maxPrice != null) {
                pst.setDouble(1, maxPrice);
                pst.setInt(1, limit);
            } else {
                pst.setInt(1, limit);
            }
            
            try (ResultSet rs = pst.executeQuery()) {
                while (rs.next()) {
                    GameModel g = new GameModel();
                    g.setGameId(rs.getInt("gameId"));
                    g.setTitle(rs.getString("title"));
                    g.setDescription(rs.getString("description"));
                    g.setPrice(rs.getDouble("price"));
                    g.setReleaseDate(rs.getDate("releaseDate"));
                    g.setCreator(rs.getString("creator"));
                    games.add(g);
                }
            }
        }
        return games;
    }
    
    public int deleteGame(int gameId) throws Exception {

        Connection con = DBconfig.getConnection();

        String sql = "DELETE FROM Games WHERE gameId = ?";

        PreparedStatement pst = con.prepareStatement(sql);
        pst.setInt(1, gameId);

        int rowsAffected = pst.executeUpdate();

        pst.close();
        con.close();

        return rowsAffected;
    }
}