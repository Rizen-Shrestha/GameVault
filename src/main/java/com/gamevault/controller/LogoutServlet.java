package com.gamevault.controller;


import com.gamevault.utils.SessionUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(asyncSupported = true, urlPatterns = { "/logout" })
public class LogoutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    public LogoutServlet() {
        super();
    }

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	// Used Session's invalidateSession method to logout
        SessionUtil.invalidateSession(request);

        // Redirect the user to the login page or home page after logging out, I have chosen login page option
        response.sendRedirect(request.getContextPath() + "/login");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}