package com.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ViewProductDao;
import com.bean.ProductBean;

@WebServlet("/vcp")
public class ViewCustomerProductServlet extends HttpServlet
{
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		HttpSession session  = req.getSession(false);
		if(session == null)
		{
			System.out.println("Session Failed");
			req.getRequestDispatcher("CustomerLogin.html").forward(req, res);
		}
		else {
		ArrayList<ProductBean> al = new ViewProductDao().retrieve_product();
		session.setAttribute("list", al);
		req.getRequestDispatcher("ViewCustomerProduct.jsp").forward(req, res);
		}
	}
}
