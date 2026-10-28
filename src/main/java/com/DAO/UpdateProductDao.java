package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.bean.ProductBean;

public class UpdateProductDao 
{
	int rowcount=0;
	public int Update_product(ProductBean pb)
	{
		try
		{
			Connection con = DBConnect.getCon();
			PreparedStatement pstmt =con.prepareStatement("Update product set pprice =?, pqty=? where pcode=?");
			pstmt.setString(1, pb.getP_price());
			pstmt.setString(2, pb.getP_quantity());
			pstmt.setString(3, pb.getP_code());
			
			rowcount = pstmt.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rowcount;
	}
}
