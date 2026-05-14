package com.gamevault.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.gamevault.dao.GameDAO;
import com.gamevault.model.GameModel;
import com.gamevault.services.GameListService;

/**
 * Servlet implementation class ExploreServlet
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/explore" })
public class ExploreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final GameListService gameService = new GameListService();  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExploreServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String search = request.getParameter("search");
        String genre = request.getParameter("genre");

        String[] genreList = {"Action", "Adventure", "RPG", "Horror", "Open World", "Multiplayer"};
        request.setAttribute("genreList", genreList);

        try {
            List<GameModel> games = GameDAO.getAllGames(search, genre);
            request.setAttribute("games", games);
            
            request.getRequestDispatcher("/WEB-INF/pages/explore.jsp").forward(request, response);
        } catch (Exception e) {
            throw new ServletException("Database error", e);
        }
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
