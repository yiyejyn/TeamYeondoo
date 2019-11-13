package com.inthemornin.ootd.model;

public class ClothesVO {
	
	private int clothId;
	private String outfitsType;
	private String custId;
	private String color;
	private String season;
	

	public int getClothId() {
		return clothId;
	}
	public void setClothId(int clothId) {
		this.clothId = clothId;
	}
	public String getOutfitsType() {
		return outfitsType;
	}
	public void setOutfitsType(String outfitsType) {
		this.outfitsType = outfitsType;
	}
	public String getCustId() {
		return custId;
	}
	public void setCustId(String custId) {
		this.custId = custId;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getSeason() {
		return season;
	}
	public void setSeason(String season) {
		this.season = season;
	}
	@Override
	public String toString() {
		return "ClothesVO [clothId=" + clothId + ", outfitsType=" + outfitsType
				+ ", custId=" + custId + ", color=" + color + ", season=" + season + "]";
	}

}
