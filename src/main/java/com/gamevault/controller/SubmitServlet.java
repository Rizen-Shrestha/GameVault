package com.gamevault.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;

import com.gamevault.model.UserModel;
import com.gamevault.services.SubmitService;
import com.gamevault.utils.FileUploadUtil;

/**
 * Servlet implementation class SubmitServlet
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/submit" })
@MultipartConfig
public class SubmitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static final String UPLOAD_DIR = System.getProperty("user.home") + File.separator + "webapp_uploads";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubmitServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/WEB-INF/pages/submit.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Reached SubmitServlet");
		try {
			String title = request.getParameter("title");
			System.out.println("Title: " + title);
			String creator = request.getParameter("creator");
			String description = request.getParameter("description");
			String price = request.getParameter("price");
			
			UserModel loggedInUser = (UserModel) request.getSession().getAttribute("user");
			int userId = loggedInUser.getUserId();
			
			SubmitService service = new SubmitService();
			int requestId = service.addGameRequest(title, creator, description, price, userId);

			if (requestId > 0) {
			    int imageIndex = 1;
			    for (Part part : request.getParts()) {
			        if (part.getName().equals("gameImages") && part.getSize() > 0 && FileUploadUtil.isImage(part)) {
			            String ext      = FileUploadUtil.getFileExtension(part.getSubmittedFileName());
			            String fileName = FileUploadUtil.buildFileName(requestId + "_" + imageIndex, ext);
			            FileUploadUtil.saveFile(part, UPLOAD_DIR, fileName);
			            imageIndex++;
			        }
			    }
			    response.sendRedirect(request.getContextPath() + "/submit?success=true");
			} 
			
			else {
			    request.setAttribute("error", "Failed to submit request.");
			    request.getRequestDispatcher("/WEB-INF/pages/submit.jsp").forward(request, response);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
			request.getRequestDispatcher("/WEB-INF/pages/submit.jsp").forward(request,response);
		}
	}

}
