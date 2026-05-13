package com.gamevault.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

/**
 * Servlet implementation class GetGameImageServlet
 */
@WebServlet("/getgameimage")
public class GetGameImageServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String GAME_DIR = System.getProperty("user.home") + File.separator + "webapp_uploads" + File.separator + "games";

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        
        if (name == null || name.trim().isEmpty()) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Missing game image name");
            return;
        }

        File folder = new File(GAME_DIR);
        if (!folder.exists() || !folder.isDirectory()) {
            response.sendError(HttpServletResponse.SC_NOT_FOUND, "Storage directory not found");
            return;
        }
        
        File[] matches = folder.listFiles((dir, fileName) -> fileName.startsWith(name + "."));

        if (matches != null && matches.length > 0) {
            File imageFile = matches[0];
            String contentType = getServletContext().getMimeType(imageFile.getName());
			if (contentType == null) contentType = "image/jpeg"; // Fallback
			            
			response.setContentType(contentType);
			response.setContentLength((int) imageFile.length());            
			Files.copy(imageFile.toPath(), response.getOutputStream());
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND, "Game image not found");
        }
    }
}