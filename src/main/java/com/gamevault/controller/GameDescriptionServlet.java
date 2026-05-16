package com.gamevault.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.gamevault.model.GameModel;
import com.gamevault.services.GameListService;

/**
 * Servlet implementation class GameDescriptionServlet
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/gameDescription" })
public class GameDescriptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GameDescriptionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idParam = request.getParameter("id");
        
        if (idParam == null || idParam.trim().isEmpty()) {
            response.sendRedirect(request.getContextPath() + "/explore");
            return;
        }

        try {
            int gameId = Integer.parseInt(idParam);
            
            GameListService service = new GameListService();
            GameModel game = service.fetchGameById(gameId);

            if (game == null) {
                response.sendRedirect(request.getContextPath() + "/explore");
                return;
            }

            request.setAttribute("game", game);
            
            request.getRequestDispatcher("/WEB-INF/pages/gameDescription.jsp").forward(request, response);
            
        } catch (NumberFormatException e) {
            response.sendRedirect(request.getContextPath() + "/explore");
        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException("Error loading game details page context", e);
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
