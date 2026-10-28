package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.AdminBean;

public class AdminLoginDao {
	AdminBean ab = null;
	
	public AdminBean check_Login(String username, String password)
	{
		try
		{
			
			  Connection con= DBConnect.getCon();
			  PreparedStatement pstmt = con.prepareStatement("select * from admin where uname=? and pword=?");
			  pstmt.setString(1, username);
			  pstmt.setString(2, password);
			  
			  ResultSet rs = pstmt.executeQuery();
			  if(rs.next())
			  {
				  ab = new AdminBean();
				  ab.setA_uname(rs.getString(1));
				  ab.setA_pword(rs.getString(2));
				  ab.setA_fname(rs.getString(3));
				  ab.setA_lname(rs.getString(4));
				  ab.setA_addr(rs.getString(5));
				  ab.setA_mail(rs.getString(6));
				  ab.setA_phno(rs.getString(7));
			  }
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ab;
	}
}
