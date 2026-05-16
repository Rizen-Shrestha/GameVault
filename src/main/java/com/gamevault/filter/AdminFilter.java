package com.gamevault.filter;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

import com.gamevault.model.UserModel;
import com.gamevault.utils.SessionUtil;

/**
 * Servlet Filter implementation class AdminFilter
 */
@WebFilter(urlPatterns = {"/dashboard", "/users", "/games", "/editGame","/addGame","requests","messages"})
public class AdminFilter extends HttpFilter implements Filter {
       
    /**
     * @see HttpFilter#HttpFilter()
     */
    public AdminFilter() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponse httpResponse = (HttpServletResponse) response;
		// TODO Auto-generated method stub
		// place your code here
		Object admin = SessionUtil.getAttribute(httpRequest, "user");
		
		if(admin != null) {
			UserModel user = (UserModel) admin;
			if(user.getRole().equalsIgnoreCase("ADMIN")) {
				chain.doFilter(request, response);
			}
			else {
				httpResponse.sendRedirect(httpRequest.getContextPath() + "/home");
			}
			
		}
		else{
			httpResponse.sendRedirect(httpRequest.getContextPath() + "/login");
		}
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
