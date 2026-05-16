package com.gamevault.services;

import com.gamevault.dao.MessageDAO;

public class MessageService {
    public void sendMessage(String subject, String message, int userId) throws Exception {
        MessageDAO dao = new MessageDAO();
        
        dao.insertMessage(subject, message, userId);
    }
}
