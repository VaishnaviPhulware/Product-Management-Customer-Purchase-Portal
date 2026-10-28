package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.bean.CustomerBean;

public class CustomerRegisterDao {
	int rowcount =0;
	public int insert_customer(CustomerBean cb)
	{
		try
		{
			Connection con = DBConnect.getCon();
			PreparedStatement pstmt=con.prepareStatement("insert into customer values(?,?,?,?,?,?,?)");
			pstmt.setString(1, cb.getC_uname());
			pstmt.setString(2, cb.getC_pwd());
			pstmt.setString(3, cb.getC_fname());
			pstmt.setString(4, cb.getC_lname());
			pstmt.setString(5, cb.getC_addr());
			pstmt.setString(6, cb.getC_mail());
			pstmt.setString(7, cb.getC_phn());
			
			rowcount = pstmt.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();		
		}
		return rowcount;
	}
	/*public int insert_customer(CustomerBean cb) {
		// TODO Auto-generated method stub
		return 0;
	}*/
}
