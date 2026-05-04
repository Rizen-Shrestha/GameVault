package com.gamevault.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import com.gamevault.dao.UserDAO;
import com.gamevault.model.UserModel;
import com.gamevault.services.LoginService;
import com.gamevault.utils.CookieUtil;
import com.gamevault.utils.SessionUtil;

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
			UserDAO user = new UserDAO();
			try {
				UserModel userData = user.getUserByUsername(username);
				SessionUtil.setAttribute(request, "user", userData, 3600);
				
				LocalDateTime now = LocalDateTime.now();
				DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd_HH:mm:ss");
				String loginTime = now.format(formatter);
				
				CookieUtil.addCookie(response, "last_login", loginTime, 3600);
				
				if("ADMIN".equalsIgnoreCase(userData.getRole())) {
					response.sendRedirect(request.getContextPath() + "/dashboard");
				}
				else {
					response.sendRedirect(request.getContextPath() + "/home");
				}
				
			} catch (Exception e) {
				e.printStackTrace();
				response.sendRedirect(request.getContextPath() + "/login");
			}
			
		}
		else {
			request.setAttribute("error", status);
			request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
		}
		
	}

}
