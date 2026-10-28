package com.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CustomerLoginDao;
import com.bean.CustomerBean;

@WebServlet("/clog")
public class CustomerLoginServlet extends HttpServlet
{
	protected void doPost(HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException
	{
		CustomerBean bean = new CustomerLoginDao().check_login(req.getParameter("uname"), req.getParameter("upwd"));
		if(bean == null)
		{
			req.setAttribute("msg", "Invalid Credentials!!");
			req.getRequestDispatcher("CustomerLogin.html").forward(req, res);
		}
		else
		{
			HttpSession session = req.getSession();
			session.setAttribute("custbean", bean);
			//req.setAttribute("msg", "Logged in Successfully!!");
			req.getRequestDispatcher("CustomerHome.jsp").forward(req, res);
		}
	}
}
