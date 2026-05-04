package com.gamevault.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.gamevault.model.GameModel;
import com.gamevault.utils.DBconfig;

public class GameListService {

    public List<GameModel> fetchAll(String search) throws Exception {

        List<GameModel> games = new ArrayList<>();

        String sql;

        if (search != null && !search.trim().isEmpty()) {
            sql = "SELECT * FROM Games WHERE title LIKE ?";
        } else {
            sql = "SELECT * FROM Games";
        }

        try (Connection conn = DBconfig.getConnection();
             PreparedStatement pst = conn.prepareStatement(sql)) {

            if (search != null && !search.trim().isEmpty()) {
                pst.setString(1, "%" + search.trim() + "%");
            }

            ResultSet rs = pst.executeQuery();

            while (rs.next()) {

                GameModel game = new GameModel();

                game.setGameId(rs.getInt("gameId"));
                game.setTitle(rs.getString("title"));
                game.setDescription(rs.getString("description"));
                game.setPrice(rs.getString("price"));
                game.setReleaseDate(rs.getDate("releaseDate"));
                game.setCreator(rs.getString("creator"));

                games.add(game);
            }
        }

        return games;
    }
}