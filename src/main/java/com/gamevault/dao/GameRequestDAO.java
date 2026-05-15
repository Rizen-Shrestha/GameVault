package com.gamevault.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.gamevault.utils.DBconfig;

public class GameRequestDAO {
        public void insertGameRequest(String title, String description, double price, String creator, String requestStatus, int userId) throws Exception {

    Connection con = DBconfig.getConnection();

    String sql = "INSERT INTO game_requests "
            + "(title, description, price, creator, requestStatus, userId) "
            + "VALUES (?, ?, ?, ?, ?, ?)";

    PreparedStatement pst = con.prepareStatement(sql);

    pst.setString(1, title);
    pst.setString(2, description);
    pst.setDouble(3, price);
    pst.setString(4, creator);
    pst.setString(5, requestStatus);
    pst.setInt(6, userId);

    pst.executeUpdate();

    pst.close();
    con.close();
    }
}