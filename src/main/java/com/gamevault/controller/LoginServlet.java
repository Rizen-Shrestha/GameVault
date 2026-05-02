package com.gamevault.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.gamevault.dao.UserDAO;
import com.gamevault.model.UserModel;
import com.gamevault.services.LoginService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/login" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		LoginService service = new LoginService();
		String status = service.authenticate(username, password);
		
		if("Success".equals(status)) {
//			UserDAO user = new UserDAO();
//			try {
//				UserModel userData = user.getUserByUsername(username);
//				
//				
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
			response.sendRedirect(request.getContextPath() + "/home");
		}
		else {
			request.setAttribute("error", status);
			request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
		}
		
	}

}
