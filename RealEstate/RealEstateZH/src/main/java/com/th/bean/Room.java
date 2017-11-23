package com.th.bean;

import java.io.Serializable;

public class Room implements Serializable{

	private static final long serialVersionUID = 8068077068200592473L;
	private String room_id;//编号,UUID，主键
	private String house_id	;	//户型编号，外键字段，来源于t_house表的id字段
	private String building_id;//楼栋编号，外键字段，来源于t_building表的id字段
	private String room_name;//房号名称
	private String sale_status;	//销售状态，not null，默认为待售中
	
	private String customer_id;
		
	private House house;
	private Building building;

	
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public House getHouse() {
		return house;
	}
	public void setHouse(House house) {
		this.house = house;
	}
	public Building getBuilding() {
		return building;
	}
	public void setBuilding(Building building) {
		this.building = building;
	}

	
	public String getRoom_id() {
		return room_id;
	}
	public void setRoom_id(String room_id) {
		this.room_id = room_id;
	}
	public String getHouse_id() {
		return house_id;
	}
	public void setHouse_id(String house_id) {
		this.house_id = house_id;
	}
	public String getBuilding_id() {
		return building_id;
	}
	public void setBuilding_id(String building_id) {
		this.building_id = building_id;
	}
	public String getRoom_name() {
		return room_name;
	}
	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}
	public String getSale_status() {
		return sale_status;
	}
	public void setSale_status(String sale_status) {
		this.sale_status = sale_status;
	}

}
