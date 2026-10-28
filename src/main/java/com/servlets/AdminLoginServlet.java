package com.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.AdminLoginDao;
import com.bean.AdminBean;

@WebServlet("/admin")
public class AdminLoginServlet extends HttpServlet
{
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		 AdminBean abean= new AdminLoginDao().check_Login(req.getParameter("uname"), req.getParameter("upwd"));
		 if(abean == null)
		 {
			 req.getRequestDispatcher("AdminLogin.html").forward(req, res);
		 }
		 else
		 {
			 HttpSession session= req.getSession();
			 session.setAttribute("adminbean", abean);
			 req.getRequestDispatcher("AdminHome.jsp").forward(req, res);
		 }
	}
}
