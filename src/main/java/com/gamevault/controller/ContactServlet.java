package com.gamevault.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.gamevault.model.UserModel;
import com.gamevault.services.MessageService;

/**
 * Servlet implementation class ContactServlet
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/contact" })
public class ContactServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        request.getRequestDispatcher("/WEB-INF/pages/contact.jsp").forward(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	try {
            String subject = request.getParameter("subject"); 
            System.out.println("Subject received: " + subject);

            String message = request.getParameter("message");

            UserModel loggedInUser = (UserModel) request.getSession().getAttribute("user");
            int userId = loggedInUser.getUserId();

            MessageService service = new MessageService();
            service.sendMessage(subject, message, userId);

            response.sendRedirect(request.getContextPath() + "/contact?success=true");

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", e.getMessage());
            request.getRequestDispatcher("/WEB-INF/pages/contact.jsp").forward(request, response);
        }
    }

}