package com.gamevault.model;

import java.sql.Date;

public class MessageModel {

    private int messageId;
    private String subject;
    private String message;
    private Date messageDate;
    private int userId;
    
    private String firstName;
    private String lastName;
    private String username;

    public int getMessageId() { return messageId; }
    public void setMessageId(int messageId) { this.messageId = messageId; }

    public String getSubject() { return subject; }
    public void setSubject(String subject) { this.subject = subject; }

    public String getMessage() { return message; }
    public void setMessage(String message) { this.message = message; }

    public Date getMessageDate() { return messageDate; }
    public void setMessageDate(Date messageDate) { this.messageDate = messageDate; }

    public int getUserId() { return userId; }
    public void setUserId(int userId) { this.userId = userId; }
    
    
    public String getFirstName() { return firstName; }
    public void setFirstName(String firstName) { this.firstName = firstName; }

    public String getLastName() { return lastName; }
    public void setLastName(String lastName) { this.lastName = lastName; }

    public String getUsername() { return username; }
    public void setUsername(String username) { this.username = username; }

}