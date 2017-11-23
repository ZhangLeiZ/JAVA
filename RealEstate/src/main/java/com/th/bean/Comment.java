package com.th.bean;

import java.io.Serializable;



public class Comment implements Serializable{

	private static final long serialVersionUID = -5699900635745035806L;

	private String comment_id;			//编号
	private String comment_content;     //评价内容
	private String buildings_id;        //楼盘编号
	private String comment_time;		//评价时间
	private String user_id;				//用户编号
	private String comment_status;		//状态
	
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

	public String getComment_id() {
		return comment_id;
	}
	public void setComment_id(String comment_id) {
		this.comment_id = comment_id;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public String getBuildings_id() {
		return buildings_id;
	}
	public void setBuildings_id(String buildings_id) {
		this.buildings_id = buildings_id;
	}
	public String getComment_time() {
		return comment_time;
	}
	public void setComment_time(String comment_time) {
		this.comment_time = comment_time;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getComment_status() {
		return comment_status;
	}
	public void setComment_status(String comment_status) {
		this.comment_status = comment_status;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
