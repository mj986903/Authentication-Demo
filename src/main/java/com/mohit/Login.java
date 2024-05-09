package com.mohit;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if(authenticate(username,password)) {
			// This User Is Authorized Will Access All Secured Pages Using Session 
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			response.sendRedirect("home.jsp");
		}else {
			// User Id Unauthorized
			response.sendRedirect("login.jsp");
		}
	}
	
	private static boolean authenticate(String username,String password) {
		// Check User Is Valid Or Not
		return username.equals("Mohit") && password.equals("123");
	}

}
