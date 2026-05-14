package com.gamevault.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.gamevault.dao.UserDAO;
import com.gamevault.model.GameModel;
import com.gamevault.model.UserModel;
import com.gamevault.services.GameListService;
import com.gamevault.services.UserListService;

/**
 * Servlet implementation class DashboardServlet
 */
@WebServlet(asyncSupported = true, urlPatterns = "/dashboard")
public class DashboardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DashboardServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserListService userService = new UserListService();
		GameListService gameService = new GameListService();

	    try {
	    	// for fetching user data
	        List<UserModel> users = userService.fetchAll(null);
	        
	        int activeCount = 0;
	        for(UserModel u:users) {
	        	if("ACTIVE".equalsIgnoreCase(u.getAccountStatus())) {
	        		activeCount++;
	        	}
	        	
	        }
	        
	        // for fetching game data
	        List<GameModel> games = gameService.fetchAll(null);
	        
	        request.setAttribute("users", users);
	        request.setAttribute("games", games);
	        request.setAttribute("activeCount", activeCount);
	        request.setAttribute("activePage", "home");

	        request.getRequestDispatcher("/WEB-INF/pages/adminDashboard.jsp").forward(request, response);

	    } catch (Exception e) {
	        throw new ServletException("Error loading dashboard users", e);
	    }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
