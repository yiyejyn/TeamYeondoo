package com.inthemornin.ootd.model;

public class ClothesVO {
	
	private int cloth_id;
	private String cloth_type;
	private String outfits_type;
	private String cust_id;
	private String color;
	private String season;
	
	
	public int getCloth_id() {
		return cloth_id;
	}
	public void setCloth_id(int cloth_id) {
		this.cloth_id = cloth_id;
	}
	public String getCloth_type() {
		return cloth_type;
	}
	public void setCloth_type(String cloth_type) {
		this.cloth_type = cloth_type;
	}
	public String getOutfits_type() {
		return outfits_type;
	}
	public void setOutfits_type(String outfits_type) {
		this.outfits_type = outfits_type;
	}
	public String getCust_id() {
		return cust_id;
	}
	public void setCust_id(String cust_id) {
		this.cust_id = cust_id;
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
		return "ClothesVO [cloth_id=" + cloth_id + ", cloth_type=" + cloth_type + ", outfits_type=" + outfits_type
				+ ", cust_id=" + cust_id + ", color=" + color + ", season=" + season + "]";
	}
	
}
