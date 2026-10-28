package com.bean;

import java.io.Serializable;

public class ProductBean implements Serializable
{
	private String P_code;
	private String P_name;
	private String P_company;
	private String P_price;
	private String P_quantity;
	
	public ProductBean()
	{
		
	}

	public String getP_code() {
		return P_code;
	}

	public void setP_code(String p_code) {
		P_code = p_code;
	}

	public String getP_name() {
		return P_name;
	}

	public void setP_name(String p_name) {
		P_name = p_name;
	}

	public String getP_company() {
		return P_company;
	}

	public void setP_company(String p_company) {
		P_company = p_company;
	}

	public String getP_price() {
		return P_price;
	}

	public void setP_price(String p_price) {
		P_price = p_price;
	}

	public String getP_quantity() {
		return P_quantity;
	}

	public void setP_quantity(String p_quantity) {
		P_quantity = p_quantity;
	}
	
	
}
