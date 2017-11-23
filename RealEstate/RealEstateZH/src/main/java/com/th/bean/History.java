package com.th.bean;

import java.io.Serializable;
//历史记录表t_history
public class History implements Serializable{
	private static final long serialVersionUID = 1L;
	private String history_id;	//编号,UUID，主键
	private String user_id;	   //用户编号，外键字段，来源于t_user表的id字段 
	private String buildings_id; //楼盘编号，外键字段，来源于t_buildings的id字段
	private String created_time;	//创建时间
		
	//多对一：在多的一端存放对方的对象
	private User user;
	private Buildings buildings;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Buildings getBuildings() {
		return buildings;
	}
	public void setBuildings(Buildings buildings) {
		this.buildings = buildings;
	}	
	public String getHistory_id() {
		return history_id;
	}
	public void setHistory_id(String history_id) {
		this.history_id = history_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
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

}
