package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.bean.ProductBean;

public class UpdatePurchasedProductDao {
	int rowcount=0;
	public int purchased_prod(String pcode, String qty)
	{
		try
		{
			Connection con = DBConnect.getCon();
			PreparedStatement pstmt =con.prepareStatement("Update product set pqty=pqty-? where pcode=?");
			pstmt.setString(1, qty);
			pstmt.setString(2, pcode);
			
			rowcount = pstmt.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rowcount;
	}
}
