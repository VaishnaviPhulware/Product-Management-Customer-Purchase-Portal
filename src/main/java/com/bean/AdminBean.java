package com.bean;

import java.io.Serializable;

public class AdminBean implements Serializable
{
	String a_uname;
	String a_pword;
	String a_fname;
	String a_lname;
	String a_addr;
	String a_mail;
	String a_phno;
	
	public AdminBean()
	{
		
	}

	public String getA_uname() {
		return a_uname;
	}

	public void setA_uname(String a_uname) {
		this.a_uname = a_uname;
	}

	public String getA_pword() {
		return a_pword;
	}

	public void setA_pword(String a_pword) {
		this.a_pword = a_pword;
	}

	public String getA_fname() {
		return a_fname;
	}

	public void setA_fname(String a_fname) {
		this.a_fname = a_fname;
	}

	public String getA_lname() {
		return a_lname;
	}

	public void setA_lname(String a_lname) {
		this.a_lname = a_lname;
	}

	public String getA_addr() {
		return a_addr;
	}

	public void setA_addr(String a_addr) {
		this.a_addr = a_addr;
	}

	public String getA_mail() {
		return a_mail;
	}

	public void setA_mail(String a_mail) {
		this.a_mail = a_mail;
	}

	public String getA_phno() {
		return a_phno;
	}

	public void setA_phno(String a_phno) {
		this.a_phno = a_phno;
	}
	
	
}
