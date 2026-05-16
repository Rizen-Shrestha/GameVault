package com.gamevault.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.gamevault.model.GameRequestModel;
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
        
        public List<GameRequestModel> getAllRequests(String search) throws Exception {
            List<GameRequestModel> list = new ArrayList<>();
            String sql;
            if (search != null && !search.trim().isEmpty()) {
                sql = "SELECT * FROM game_requests WHERE title LIKE ? ORDER BY requestId DESC";
            } else {
                sql = "SELECT * FROM game_requests ORDER BY requestId DESC";
            }
            
            Connection con = DBconfig.getConnection();
            PreparedStatement pst = con.prepareStatement(sql);
            
            if (search != null && !search.trim().isEmpty()) {
                pst.setString(1, "%" + search.trim() + "%");
            }
            
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                GameRequestModel r = new GameRequestModel();
                
                r.setRequestId(rs.getInt("requestId"));
                r.setTitle(rs.getString("title"));
                r.setCreator(rs.getString("creator"));
                r.setDescription(rs.getString("description"));
                r.setPrice(rs.getDouble("price"));
                r.setRequestStatus(rs.getString("requestStatus"));
                r.setUserId(rs.getInt("userId"));
                list.add(r);
            }
            
            rs.close();
            pst.close();
            con.close();
            return list;
        }
        
        public GameRequestModel getRequestById(int requestId) throws Exception {
            Connection con = DBconfig.getConnection();
            String sql = "SELECT * FROM game_requests WHERE requestId = ?";
            
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setInt(1, requestId);
            
            ResultSet rs = pst.executeQuery();
            GameRequestModel r = null;
            
            if (rs.next()) {
                r = new GameRequestModel();
                
                r.setRequestId(rs.getInt("requestId"));
                r.setTitle(rs.getString("title"));
                r.setCreator(rs.getString("creator"));
                r.setDescription(rs.getString("description"));
                r.setPrice(rs.getDouble("price"));
                r.setRequestStatus(rs.getString("requestStatus"));
                r.setUserId(rs.getInt("userId"));        
            }
            
            rs.close();
            pst.close();
            con.close();
            return r;
        }
        
        public void updateRequestStatus(int requestId, String status) throws Exception {
            Connection con = DBconfig.getConnection();
            String sql = "UPDATE game_requests SET requestStatus = ? WHERE requestId = ?";
            
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, status);
            pst.setInt(2, requestId);
            pst.executeUpdate();
            
            pst.close();
            con.close();
        }
        
        public List<GameRequestModel> getPendingRequests(int limit) throws Exception {
            List<GameRequestModel> list = new ArrayList<>();
            
            Connection con = DBconfig.getConnection();
            String sql = "SELECT * FROM game_requests WHERE requestStatus = 'pending' ORDER BY requestId DESC LIMIT ?";
            
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setInt(1, limit);
            
            ResultSet rs = pst.executeQuery();
            
            while (rs.next()) {
                GameRequestModel r = new GameRequestModel();
                r.setRequestId(rs.getInt("requestId"));
                r.setTitle(rs.getString("title"));
                r.setRequestStatus(rs.getString("requestStatus"));
                list.add(r);
            }
            
            rs.close();
            pst.close();
            con.close();
            
            return list;
        }
}