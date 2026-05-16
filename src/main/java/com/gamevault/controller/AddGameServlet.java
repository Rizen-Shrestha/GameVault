package com.gamevault.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;

import com.gamevault.dao.GameRequestDAO;
import com.gamevault.model.GameModel;
import com.gamevault.model.GameRequestModel;
import com.gamevault.services.AddGameService;
import com.gamevault.services.RegisterService;

/**
 * Servlet implementation class AddGameServlet
 */
@WebServlet("/addGame")
public class AddGameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddGameServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    try {
	        String requestIdParam = request.getParameter("requestId");
	        if (requestIdParam != null) {
	            int requestId = Integer.parseInt(requestIdParam);
	            
	            GameRequestDAO dao = new GameRequestDAO();
	            GameRequestModel gameRequest = dao.getRequestById(requestId);
	            
	            request.setAttribute("prefill", gameRequest);
	        }
	        request.setAttribute("activePage", "games");
	        request.getRequestDispatcher("/WEB-INF/pages/addGame.jsp").forward(request, response);
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	        request.getRequestDispatcher("/WEB-INF/pages/addGame.jsp").forward(request, response);
	    }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
            // Fetch Form data
            String title = request.getParameter("title");
            String description = request.getParameter("description");
            double price = Double.parseDouble(request.getParameter("price"));
            String creator = request.getParameter("creator");
            Date dateAdded = Date.valueOf(java.time.LocalDate.now());
            

            // Call service to add User
            AddGameService service = new AddGameService();
            service.addGame(title, description, price, dateAdded, creator);
            
            // For addition of a game when form is opened from game request
            String requestIdParam = request.getParameter("requestId");
            
            if (requestIdParam != null && !requestIdParam.isEmpty()) {
                int requestId = Integer.parseInt(requestIdParam);
                
                GameRequestDAO dao = new GameRequestDAO();
                dao.updateRequestStatus(requestId, "accepted");
            }
            
            // Redirect to game list after successfull addition
            response.sendRedirect(request.getContextPath() + "/games");
            
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
	}

}
