package com.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.ProductBean;

@WebServlet("/edit")
public class EditProductServlet extends HttpServlet
{
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		HttpSession session= req.getSession();
		if(session == null)
		{
			System.out.println("Session Expired!!!");
			req.getRequestDispatcher("AdminLogin.html").forward(req, res);
		}
		else {
			String pcode = req.getParameter("pcode");
			ProductBean pb= null;
			ArrayList<ProductBean> al =(ArrayList<ProductBean>)session.getAttribute("list");
			
			Iterator<ProductBean> i = al.iterator();
			while(i.hasNext())
			{
				pb = (ProductBean) i.next();
				if(pcode.equals(pb.getP_code()))
				{
					break;
				}
			}
			req.setAttribute("pbean", pb);
			req.getRequestDispatcher("EditProduct.jsp").forward(req, res);
		}
	}
}
