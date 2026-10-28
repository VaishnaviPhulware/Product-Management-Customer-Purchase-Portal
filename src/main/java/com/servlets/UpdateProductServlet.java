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
import com.bean.ProductBean;

@WebServlet("/update")
public class UpdateProductServlet extends HttpServlet
{
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		
		
		HttpSession session= req.getSession(false);
		if(session == null)
		{
			System.out.println("Session Expired!!!");
			req.getRequestDispatcher("AdminLogin.html").forward(req, res);
		}
		else {
			String pcode = req.getParameter("pcode");
			ProductBean pb = null;
			ArrayList<ProductBean> al = (ArrayList<ProductBean>)session.getAttribute("list");
			
			Iterator<ProductBean> i = al.iterator();
			while(i.hasNext())
			{
				pb = i.next();
				if(pcode.equals(pb.getP_code()))
				{
					break;
				}
			}
			//pb.setP_code(req.getParameter("pcode1"));
			pb.setP_price(req.getParameter("pprice"));
			pb.setP_quantity(req.getParameter("pqty"));
			
			int rowcount = new UpdateProductDao().Update_product(pb);
			if(rowcount > 0)
			{
				req.setAttribute("data", "Products Updated");
				req.getRequestDispatcher("UpdateProduct.jsp").forward(req, res);
			}
		}
	
	}
}
