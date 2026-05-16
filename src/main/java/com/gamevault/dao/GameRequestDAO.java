package com.gamevault.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.gamevault.utils.DBconfig;

public class GameRequestDAO {
        public int insertGameRequest(String title, String description, double price, String creator, String requestStatus, int userId) throws Exception {

		    Connection con = DBconfig.getConnection();
		
		    String sql = "INSERT INTO game_requests "
		            + "(title, description, price, creator, requestStatus, userId) "
		            + "VALUES (?, ?, ?, ?, ?, ?)";
		
		    PreparedStatement pst = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
		
		    pst.setString(1, title);
		    pst.setString(2, description);
		    pst.setDouble(3, price);
		    pst.setString(4, creator);
		    pst.setString(5, requestStatus);
		    pst.setInt(6, userId);
		
		    pst.executeUpdate();
		
		    ResultSet rs = pst.getGeneratedKeys();
		    int generatedId = 0;
		    if (rs.next()) {
		    	generatedId = rs.getInt(1);
		    }
		    
		    rs.close();
		    pst.close();
		    con.close();
		    
		    return generatedId;
		    }
}