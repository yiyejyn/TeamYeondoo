package com.inthemornin.ootd.model;

public class CustomerVO {

	private String custId;
	private String custPassword;
	private String custName;
	private String custAddress;
	private String custGender;
	private String custRank;
	private int custPoint;
	
	public String getCustId() {
		return custId;
	}
	public void setCustId(String custId) {
		this.custId = custId;
	}
	public String getCustPassword() {
		return custPassword;
	}
	public void setCustPassword(String custPassword) {
		this.custPassword = custPassword;
	}
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public String getCustAddress() {
		return custAddress;
	}
	public void setCustAddress(String custAddress) {
		this.custAddress = custAddress;
	}
	public String getCustGender() {
		return custGender;
	}
	public void setCustGender(String custGender) {
		this.custGender = custGender;
	}
	public String getCustRank() {
		return custRank;
	}
	public void setCustRank(String custRank) {
		this.custRank = custRank;
	}
	public int getCustPoint() {
		return custPoint;
	}
	public void setCustPoint(int custPoint) {
		this.custPoint = custPoint;
	}

	@Override
	public String toString() {
		return "CustomerVO [custId=" + custId + ", custPassword=" + custPassword + ", custName=" + custName
				+ ", custAddress=" + custAddress + ", custGender=" + custGender + ", custRank=" + custRank
				+ ", custPoint=" + custPoint + "]";
	}
}
