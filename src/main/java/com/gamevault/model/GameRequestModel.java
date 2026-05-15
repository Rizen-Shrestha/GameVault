package com.gamevault.model;
import java.util.Date;
	public class GameRequestModel {

	    private int requestId;
	    private String title;
	    private String description;
	    private double price;
	    private String creator;
	    private String requestStatus;
		private int userId;

		private Date requestDate;

	    public int getRequestId() { return requestId; }
	    public void setRequestId(int requestId) { this.requestId = requestId; }

	    public String getTitle() { return title; }
	    public void setTitle(String title) { this.title = title; }

	    public String getDescription() { return description; }
	    public void setDescription(String description) { this.description = description; }

	    public double getPrice() { return price; }
	    public void setPrice(double price) { this.price = price; }

	    public String getCreator() { return creator; }
	    public void setCreator(String creator) { this.creator = creator; }

		public String getRequestStatus() { return requestStatus; }
	    public void setRequestStatus(String requestStatus) { this.requestStatus = requestStatus; }
	
		public Date getRequestDate() { return requestDate; }
	    public void setRequestDate(Date requestDate) { this.requestDate = requestDate; }

		public int getUserId() { return userId; }
	    public void setUserId(int userId) { this.userId = userId; }
	}

