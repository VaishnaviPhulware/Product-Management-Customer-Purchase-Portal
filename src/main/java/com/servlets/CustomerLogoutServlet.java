package com.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/clogout")
public class CustomerLogoutServlet extends HttpServlet
{
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException
	{
		HttpSession session = req.getSession(false);
		if(session == null)
		{
			System.out.println("Session Expired!!!");
			req.getRequestDispatcher("CustomerLogin.html").forward(req, res);
		}
		else {
			//res.sendRedirect("google.com");
			req.getRequestDispatcher("CustomerLogout.jsp").forward(req, res);
		}
	}
}
