package com.inthemornin.ootd.model;

public class CustomerVO {

	private String cust_id;
	private String cust_password;
	private String cust_name;
	private String cust_address;
	private String cust_gender;
	private String cust_rank;
	private int cust_point;
	
	
	public String getCust_id() {
		return cust_id;
	}
	public void setCust_id(String cust_id) {
		this.cust_id = cust_id;
	}
	public String getCust_password() {
		return cust_password;
	}
	public void setCust_password(String cust_password) {
		this.cust_password = cust_password;
	}
	public String getCust_name() {
		return cust_name;
	}
	public void setCust_name(String cust_name) {
		this.cust_name = cust_name;
	}
	public String getCust_address() {
		return cust_address;
	}
	public void setCust_address(String cust_address) {
		this.cust_address = cust_address;
	}
	public String getCust_gender() {
		return cust_gender;
	}
	public void setCust_gender(String cust_gender) {
		this.cust_gender = cust_gender;
	}
	public String getCust_rank() {
		return cust_rank;
	}
	public void setCust_rank(String cust_rank) {
		this.cust_rank = cust_rank;
	}
	public int getCust_point() {
		return cust_point;
	}
	public void setCust_point(int cust_point) {
		this.cust_point = cust_point;
	}

	@Override
	public String toString() {
		return "CustomerVO [cust_id=" + cust_id + ", cust_password=" + cust_password + ", cust_name=" + cust_name
				+ ", cust_address=" + cust_address + ", cust_gender=" + cust_gender + ", cust_rank=" + cust_rank
				+ ", cust_point=" + cust_point + "]";
	}
	
	
}
