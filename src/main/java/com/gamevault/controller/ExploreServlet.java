package com.gamevault.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.gamevault.model.GameModel;
import com.gamevault.services.GameListService;

/**
 * Servlet implementation class ExploreServlet
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/explore" })
public class ExploreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
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
        GameListService gameService = new GameListService();

        String[] genreList = {"Action", "Adventure", "RPG", "Horror", "Strategy", "Open World"};
        request.setAttribute("genreList", genreList);

        try {
            List<GameModel> games = gameService.fetchAll(search, genre);
            
            request.setAttribute("games", games);
            request.setAttribute("selectedGenre", genre);
            
            request.getRequestDispatcher("/WEB-INF/pages/explore.jsp").forward(request, response);
            
        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException("Error fetching games list", e);
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
