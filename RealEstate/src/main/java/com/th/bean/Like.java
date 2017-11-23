package com.th.bean;

import java.io.Serializable;
//点赞记录表t_like
public class Like implements Serializable{

	private static final long serialVersionUID = 1L;
	private String like_id;	//编号,UUID，主键
	private String user_id;	//客户编号，外键字段，来源于t_customer表的id字段 
	private String buildings_id;	//楼盘编号，外键字段，来源于t_buildings的id字段
	private String created_time;	//点赞创建时间
	
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
	public String getLike_id() {
		return like_id;
	}
	public void setLike_id(String like_id) {
		this.like_id = like_id;
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
