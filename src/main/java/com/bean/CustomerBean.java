package com.bean;

import java.io.Serializable;

public class CustomerBean implements Serializable
{
	private String C_uname;
	private String C_pwd;
	private String C_fname;
	private String C_lname;
	private String C_addr;
	private String C_mail;
	private String C_phn;
	
	public CustomerBean()
	{
		
	}

	public String getC_uname() {
		return C_uname;
	}

	public void setC_uname(String c_uname) {
		C_uname = c_uname;
	}

	public String getC_pwd() {
		return C_pwd;
	}

	public void setC_pwd(String c_pwd) {
		C_pwd = c_pwd;
	}

	public String getC_fname() {
		return C_fname;
	}

	public void setC_fname(String c_fname) {
		C_fname = c_fname;
	}

	public String getC_lname() {
		return C_lname;
	}

	public void setC_lname(String c_lname) {
		C_lname = c_lname;
	}

	public String getC_addr() {
		return C_addr;
	}

	public void setC_addr(String c_addr) {
		C_addr = c_addr;
	}

	public String getC_mail() {
		return C_mail;
	}

	public void setC_mail(String c_mail) {
		C_mail = c_mail;
	}

	public String getC_phn() {
		return C_phn;
	}

	public void setC_phn(String c_phn) {
		C_phn = c_phn;
	}
}
