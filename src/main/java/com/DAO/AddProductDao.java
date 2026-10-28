package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.bean.ProductBean;

public class AddProductDao {
	static int rowcount =0;
	
	public int insert_product(ProductBean pb)throws Exception
	{
		try
		{
			Connection con = DBConnect.getCon();
			PreparedStatement pstmt= con.prepareStatement("insert into product values(?, ?, ?, ?, ?)");
			pstmt.setString(1, pb.getP_code());
			pstmt.setString(2, pb.getP_name());
			pstmt.setString(3, pb.getP_company());
			pstmt.setString(4, pb.getP_price());
			pstmt.setString(5, pb.getP_quantity());
			
			rowcount = pstmt.executeUpdate();
		}
		catch(Exception e)
		{
			throw e;
		}
		return rowcount;
	}
}
