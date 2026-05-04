package com.gamevault.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.gamevault.dao.GameDAO;
import com.gamevault.model.GameModel;
import com.gamevault.utils.SessionUtil;

/**
 * Servlet implementation class EditGameServlet
 */
@WebServlet("/editGame")
public class EditGameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditGameServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    try {
	        int gameId = Integer.parseInt(request.getParameter("id"));

	        GameDAO dao = new GameDAO();
	        GameModel game = dao.getGameById(gameId);

	        request.setAttribute("game", game);

	        request.getRequestDispatcher("/WEB-INF/pages/editGame.jsp")
	               .forward(request, response);

	    } catch (Exception e) {
	        throw new ServletException("Error loading game", e);
	    }	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String gameIdStr = request.getParameter("gameId");
	    String title = request.getParameter("title");
	    String description = request.getParameter("description");
	    String price = request.getParameter("price");
	    String releaseDate = request.getParameter("releaseDate");
	    String creator = request.getParameter("creator");

	    try {

	        int gameId = Integer.parseInt(gameIdStr);

	        GameDAO dao = new GameDAO();

	        int rowsAffected = dao.updateGame(
	                gameId,
	                title,
	                description,
	                price,
	                releaseDate,
	                creator
	        );

	        if (rowsAffected > 0) {

	            GameModel game = dao.getGameById(gameId);

	            SessionUtil.setAttribute(request, "message", "Game updated successfully!", 60);

	        } else {
	            SessionUtil.setAttribute(request, "error", "No changes were made.", 60);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	        SessionUtil.setAttribute(request, "error", "Error: " + e.getMessage(), 60);
	    }

	    response.sendRedirect(request.getContextPath() + "/games");

	}

}
