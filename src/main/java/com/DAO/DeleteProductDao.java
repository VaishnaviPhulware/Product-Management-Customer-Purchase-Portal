package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.bean.ProductBean;

public class DeleteProductDao {
	int rowcount =0;
	public int delete_product(String pcode)
	{
		try
		{
			Connection con = DBConnect.getCon();
			PreparedStatement pstmt = con.prepareStatement("delete from product where pcode =?");
			pstmt.setString(1,pcode);
			
			rowcount = pstmt.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rowcount;
	}
}
