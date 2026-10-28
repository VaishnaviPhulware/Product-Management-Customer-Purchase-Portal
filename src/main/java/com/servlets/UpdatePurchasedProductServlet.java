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

import com.DAO.UpdateProductDao;
import com.DAO.UpdatePurchasedProductDao;
import com.bean.ProductBean;

@WebServlet("/bps")
public class UpdatePurchasedProductServlet extends HttpServlet 
{
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		HttpSession session= req.getSession();
		if(session == null)
		{
			System.out.println("Session Expired!!!");
			req.getRequestDispatcher("AdminLogin.html").forward(req, res);
		}
		else {
			String pcode = req.getParameter("pcode");
			String rqty =req.getParameter("req");
			ArrayList<ProductBean> al = (ArrayList<ProductBean>)session.getAttribute("list");
			ProductBean pb = null;
			Iterator<ProductBean> i = al.iterator();
			while(i.hasNext())
			{
				pb = i.next();
				if(pcode.equals(pb.getP_code()))
				{
					break;
				}
			}
			
			
			int rowcount = new UpdatePurchasedProductDao().purchased_prod(pcode, rqty);
			if(rowcount > 0)
			{
				session.setAttribute("pbean",pb);
				
				req.getRequestDispatcher("OrderConfirmed.jsp").forward(req, res);
			}
		}
	}
		
}
