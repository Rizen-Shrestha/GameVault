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

import com.gamevault.services.RegisterService;
import com.gamevault.utils.FileUploadUtil;

@WebServlet(asyncSupported = true, urlPatterns = { "/register" })
@MultipartConfig
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String UPLOAD_DIR = System.getProperty("user.home") + File.separator + "webapp_uploads";

    
    public RegisterServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/pages/register.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Fetch Form data
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String gender = request.getParameter("gender");
            String dob = request.getParameter("dob");
            String password = request.getParameter("password");
            
            RegisterService service = new RegisterService();
            String status = service.addUser(firstName, lastName, username, email, gender, dob, password);
            
            if ("Success".equals(status)) {
                // Handle image upload
                Part imagePart = request.getPart("profileImage");
                if (imagePart != null && imagePart.getSize() > 0 && FileUploadUtil.isImage(imagePart)) {
                    String extension = FileUploadUtil.getFileExtension(imagePart.getSubmittedFileName());
                    String fileName  = FileUploadUtil.buildFileName(username, extension);
                    FileUploadUtil.saveFile(imagePart, UPLOAD_DIR, fileName);
                }

                
                // Redirect to login page after successful registration 
                response.sendRedirect(request.getContextPath() + "/login");
            }
            else {
                request.setAttribute("error",status);
                request.getRequestDispatcher("/WEB-INF/pages/register.jsp").forward(request,response);
            }

            
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", e.getMessage());
            request.getRequestDispatcher("/WEB-INF/pages/register.jsp").forward(request, response);
        }
    }
}
