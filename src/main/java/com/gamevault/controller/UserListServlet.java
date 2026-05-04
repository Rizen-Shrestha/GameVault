package com.gamevault.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.gamevault.dao.UserDAO;
import com.gamevault.model.UserModel;
import com.gamevault.services.UserListService;
/**
 * Servlet implementation class UserListServlet
 */
@WebServlet("/users")
public class UserListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserListServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String search = request.getParameter("search");
			
			UserListService service = new UserListService();
			List<UserModel> users = service.fetchAll(search);
			
			request.setAttribute("users", users);
			request.setAttribute("activePage", "users");
			
			request.getRequestDispatcher("/WEB-INF/pages/userList.jsp").forward(request, response);

		} catch (Exception e) {
			throw new ServletException("Database error", e);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
