package com.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.CustomerRegisterDao;
import com.bean.CustomerBean;

@WebServlet("/creg")
public class CustomerRegisterServlet extends HttpServlet
{
	protected void doPost(HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException
	{
		CustomerBean cb = new CustomerBean();
		cb.setC_uname(req.getParameter("uname"));
		cb.setC_pwd(req.getParameter("upwd"));
		cb.setC_fname(req.getParameter("fname"));
		cb.setC_lname(req.getParameter("lname"));
		cb.setC_addr(req.getParameter("addr"));
		cb.setC_mail(req.getParameter("mail"));
		cb.setC_phn(req.getParameter("phno"));
		
		int rowcount  = new CustomerRegisterDao().insert_customer(cb);
		
		if(rowcount == 0)
		{
			req.setAttribute("msg", "Registration Failed!!!");
			req.getRequestDispatcher("CustomerLogin.html").forward(req, res);
		}
		else {
			req.setAttribute("msg", "Registration done Successfully!!!");
			req.getRequestDispatcher("CustomerLogin.html").forward(req, res);
		}
	}

}
