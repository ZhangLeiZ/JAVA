package com.th.bean;

import java.io.Serializable;
//楼栋表t_building
public class Building implements Serializable{

	
	private static final long serialVersionUID = -7530801989516781712L;
	private String building_id;	//编号,UUID，主键
	private String building_name;//楼栋名称
	private int total_floor;//总层数,not null
	private int total_lift;	//电梯数,not null
	private int floor_rooms;	//每层多少户,not null
	private int total_room;	//总户数,not null
	private String buildings_id; //楼盘编号，外键字段，来源于t_buildings的id字段
	private String created_time; //创建时间
	private String building_status;//状态，激活或冻结
	
	private Buildings buildings;
	
	
	public Buildings getBuildings() {
		return buildings;
	}
	public void setBuildings(Buildings buildings) {
		this.buildings = buildings;
	}
	public String getBuilding_id() {
		return building_id;
	}
	public void setBuilding_id(String building_id) {
		this.building_id = building_id;
	}
	public String getBuilding_name() {
		return building_name;
	}
	public void setBuilding_name(String building_name) {
		this.building_name = building_name;
	}
	public int getTotal_floor() {
		return total_floor;
	}
	public void setTotal_floor(int total_floor) {
		this.total_floor = total_floor;
	}
	public int getTotal_lift() {
		return total_lift;
	}
	public void setTotal_lift(int total_lift) {
		this.total_lift = total_lift;
	}
	public int getFloor_rooms() {
		return floor_rooms;
	}
	public void setFloor_rooms(int floor_rooms) {
		this.floor_rooms = floor_rooms;
	}
	public int getTotal_room() {
		return total_room;
	}
	public void setTotal_room(int total_room) {
		this.total_room = total_room;
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
	public String getBuilding_status() {
		return building_status;
	}
	public void setBuilding_status(String building_status) {
		this.building_status = building_status;
	}
				
	
	
	
}
