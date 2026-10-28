package com.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.AddProductDao;
import com.bean.ProductBean;

@WebServlet("/aps")
public class AddProductServlet extends HttpServlet
{
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		
		try {
			HttpSession session= req.getSession();
			if(session == null)
			{
				System.out.println("Session Expired!!!");
				req.getRequestDispatcher("AdminLogin.html").forward(req, res);
			}
			else {
			
		ProductBean pb = new ProductBean();
		pb.setP_code(req.getParameter("pcode"));
		pb.setP_name(req.getParameter("pname"));
		pb.setP_company(req.getParameter("pcmpy"));
		pb.setP_price(req.getParameter("pprice"));
		pb.setP_quantity(req.getParameter("pqty"));
		
		int rowcount = new AddProductDao().insert_product(pb);
		
		if(rowcount == 0)
		{
			req.setAttribute("msg", "product Not Added");
			req.getRequestDispatcher("AddProduct.jsp").forward(req, res);
		}
		else {
			 req.setAttribute("msg", "Product Added Sucessfully!!!");
			 req.getRequestDispatcher("AddProduct.jsp").forward(req, res);
		}
			}
	}
		catch(Exception e)
		{
			req.setAttribute("msg", "Duplicate Id's are not allowed");
			req.getRequestDispatcher("Error.jsp").forward(req, res);
		}
	}
}
