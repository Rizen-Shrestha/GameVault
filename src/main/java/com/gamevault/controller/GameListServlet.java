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

@WebServlet("/games")
public class GameListServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public GameListServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String search = request.getParameter("search");

            GameListService service = new GameListService();
            List<GameModel> games = service.fetchAll(search);

            request.setAttribute("games", games);
            request.setAttribute("activePage", "games");

            request.getRequestDispatcher("/WEB-INF/pages/gameList.jsp").forward(request, response);

        } catch (Exception e) {
            throw new ServletException("Database error", e);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}