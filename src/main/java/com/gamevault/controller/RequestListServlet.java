package com.gamevault.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.gamevault.dao.GameRequestDAO;
import com.gamevault.model.GameRequestModel;

/**
 * Servlet implementation class RequestServlet
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/requests" })
public class RequestListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RequestListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
        try {
        	
            String search = request.getParameter("search");
            GameRequestDAO dao = new GameRequestDAO();
            List<GameRequestModel> requests = dao.getAllRequests(search);
            
            request.setAttribute("requests", requests);
            request.setAttribute("activePage", "requests");
            
            request.getRequestDispatcher("/WEB-INF/pages/requestList.jsp").forward(request, response);
            
        } catch (Exception e) {
            e.printStackTrace();
        }	
        }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	}

}
