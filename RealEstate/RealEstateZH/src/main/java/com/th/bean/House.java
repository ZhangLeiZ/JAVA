package com.th.bean;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
//户型表t_house
public class House implements Serializable{

	private static final long serialVersionUID = -7710972097552763877L;
	private String house_id;	//编号,UUID，主键
	private String house_name;	//户型名称
	private String house_logo;	//户型图片，default
	private String house_intro;	//简介
	private double house_area;//面积，not null
	private double unit_price;		//参考单价，not null
	private String buildings_id;	//楼盘编号，外键字段，来源于t_buildings的id字段
	private String created_time;//创建时间
	private String house_status;	//状态，激活或冻结
	
	private Buildings buildings;
	
	private Set<Appointment> appointments = new HashSet<Appointment>(); 
	
	public Set<Appointment> getAppointments() {
		return appointments;
	}
	public void setAppointments(Set<Appointment> appointments) {
		this.appointments = appointments;
	}
	
	
	public Buildings getBuildings() {
		return buildings;
	}
	public void setBuildings(Buildings buildings) {
		this.buildings = buildings;
	}
	public String getHouse_id() {
		return house_id;
	}
	public void setHouse_id(String house_id) {
		this.house_id = house_id;
	}
	public String getHouse_name() {
		return house_name;
	}
	public void setHouse_name(String house_name) {
		this.house_name = house_name;
	}
	public String getHouse_logo() {
		return house_logo;
	}
	public void setHouse_logo(String house_logo) {
		this.house_logo = house_logo;
	}
	public String getHouse_intro() {
		return house_intro;
	}
	public void setHouse_intro(String house_intro) {
		this.house_intro = house_intro;
	}
	public double getHouse_area() {
		return house_area;
	}
	public void setHouse_area(double house_area) {
		this.house_area = house_area;
	}
	public double getUnit_price() {
		return unit_price;
	}
	public void setUnit_price(double unit_price) {
		this.unit_price = unit_price;
	}
	public String getBuildings_id() {
		return buildings_id;
	}
	public void setBuildings_id(String buildings_id) {
		this.buildings_id = buildings_id;
	}
	public String getCreated_time() {
		return created_time;
	}
	public void setCreated_time(String created_time) {
		this.created_time = created_time;
	}
	public String getHouse_status() {
		return house_status;
	}
	public void setHouse_status(String house_status) {
		this.house_status = house_status;
	}

}
