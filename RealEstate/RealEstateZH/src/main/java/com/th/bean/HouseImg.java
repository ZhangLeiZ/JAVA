package com.th.bean;

import java.io.Serializable;


public class HouseImg implements Serializable{
	
	private String id;
	private String house_img;
	private String  house_id;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getHouse_img() {
		return house_img;
	}
	public void setHouse_img(String house_img) {
		this.house_img = house_img;
	}
	public String getHouse_id() {
		return house_id;
	}
	public void setHouse_id(String house_id) {
		this.house_id = house_id;
	}
	
	
}
