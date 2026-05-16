package com.gamevault.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.gamevault.model.MessageModel;
import com.gamevault.utils.DBconfig;

public class MessageDAO {

    public void insertMessage(String subject, String message, int userId) throws Exception {
        long milliseconds = System.currentTimeMillis();
        Date currentDate = new Date(milliseconds);

        Connection con = DBconfig.getConnection();
        String sql = "INSERT INTO messages (subject, message, messageDate, userId) VALUES (?, ?, ?, ?)";
        
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setString(1, subject);
        pst.setString(2, message);
        pst.setDate(3, currentDate);
        pst.setInt(4, userId);
        pst.executeUpdate();
        
        pst.close();
        con.close();
    }

    public List<MessageModel> getAllMessages() throws Exception {
        List<MessageModel> list = new ArrayList<>();
        Connection con = DBconfig.getConnection();
        String sql = "SELECT m.*, u.firstName, u.lastName, u.username " +
                     "FROM messages m LEFT JOIN users u ON m.userId = u.userId " +
                     "ORDER BY m.messageDate DESC";
        PreparedStatement pst = con.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();
        while (rs.next()) {
            MessageModel m = new MessageModel();
            m.setMessageId(rs.getInt("messageId"));
            m.setSubject(rs.getString("subject"));
            m.setMessage(rs.getString("message"));
            m.setMessageDate(rs.getDate("messageDate"));
            m.setUserId(rs.getInt("userId"));
            m.setFirstName(rs.getString("firstName"));
            m.setLastName(rs.getString("lastName"));
            m.setUsername(rs.getString("username"));
            list.add(m);
        }
        rs.close();
        pst.close();
        con.close();
        return list;
    }

    public void deleteMessage(int messageId) throws Exception {
        Connection con = DBconfig.getConnection();
        String sql = "DELETE FROM messages WHERE messageId = ?";
        
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setInt(1, messageId);
        pst.executeUpdate();
        
        pst.close();
        con.close();
    }
    
    public List<MessageModel> getRecentMessages(int limit) throws Exception {
        List<MessageModel> list = new ArrayList<>();
        Connection con = DBconfig.getConnection();
        String sql = "SELECT m.*, u.firstName, u.lastName, u.username " +
                     "FROM messages m JOIN users u ON m.userId = u.userId " +
                     "ORDER BY m.messageDate DESC LIMIT ?";
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setInt(1, limit);
        ResultSet rs = pst.executeQuery();
        while (rs.next()) {
            MessageModel m = new MessageModel();
            m.setMessageId(rs.getInt("messageId"));
            m.setSubject(rs.getString("subject"));
            m.setMessage(rs.getString("message"));
            m.setMessageDate(rs.getDate("messageDate"));
            m.setUserId(rs.getInt("userId"));
            m.setFirstName(rs.getString("firstName"));
            m.setLastName(rs.getString("lastName"));
            m.setUsername(rs.getString("username"));
            list.add(m);
        }
        rs.close();
        pst.close();
        con.close();
        return list;
    }
}
