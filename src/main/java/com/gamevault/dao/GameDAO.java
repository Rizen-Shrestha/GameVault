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

        List<GameModel> games = new ArrayList<>();
        String sql;

        if (search != null && !search.trim().isEmpty()) {
            sql = "SELECT g.*, group_concat(gn.genreName SEPARATOR ', ') as genre "
            		+ "FROM Games g "
            		+ "LEFT JOIN game_genres ggn ON g.gameId = ggn.gameId "
            		+ "LEFT JOIN genres gn ON ggn.genreId = gn.genreId "
            		+ "WHERE g.title LIKE ? "
            		+ "GROUP BY g.gameId;";
        } else {
            sql = "SELECT g.*, group_concat(gn.genreName SEPARATOR ', ') as genre "
            		+ "FROM Games g "
            		+ "LEFT JOIN game_genres ggn ON g.gameId = ggn.gameId "
            		+ "LEFT JOIN genres gn ON ggn.genreId = gn.genreId "
            		+ "GROUP BY g.gameId;";
        }

        Connection con = DBconfig.getConnection();
        PreparedStatement pst = con.prepareStatement(sql);

        if (search != null && !search.trim().isEmpty()) {
            pst.setString(1, "%" + search.trim() + "%");
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