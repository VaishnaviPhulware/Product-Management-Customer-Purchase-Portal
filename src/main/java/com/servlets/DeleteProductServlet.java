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

import com.DAO.DeleteProductDao;
import com.bean.ProductBean;

@WebServlet("/delete")
public class DeleteProductServlet extends HttpServlet
{
	protected void doGet(HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException
	{
		HttpSession session = req.getSession();
		if(session == null)
		{
			System.out.println("Session Expired!!!");
			req.getRequestDispatcher("AdminLogin.html").forward(req, res);
		}
		else {
			/*String pcode = req.getParameter("pcode");
			ArrayList<ProductBean> al =(ArrayList<ProductBean>)session.getAttribute("list")
			ProductBean pb = null;
			Iterator<ProductBean> i = al.iterator();
			while(i.hasNext())
			{
				if(i.next().getP_code().equals(pcode))
				{
					break;
				}
			}*/
			
			int rowcount = new DeleteProductDao().delete_product(req.getParameter("pcode"));
			if(rowcount> 0)
			{

				req.setAttribute("data", "Products Deleted!!!");
				req.getRequestDispatcher("DeleteProduct.jsp").forward(req, res);
			
			}
			
		}
	}
}
