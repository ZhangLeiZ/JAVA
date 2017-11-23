package com.th.bean;

import java.io.Serializable;

public class Message implements Serializable {

	private static final long serialVersionUID = 7274301550306710661L;
	
	private String message_id;         //编号    
	private String message_content;    //留言内容
	private String buildings_id;	   //楼盘编号
	private String reply;              //回复内容
	private String leave_time;         //留言时间
	private String reply_time;         //回复时间
	private String user_id;			   //用户编号
	private String message_status;	   //状态
	
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

	public String getMessage_id() {
		return message_id;
	}
	public void setMessage_id(String message_id) {
		this.message_id = message_id;
	}
	public String getMessage_content() {
		return message_content;
	}
	public void setMessage_content(String message_content) {
		this.message_content = message_content;
	}
	public String getBuildings_id() {
		return buildings_id;
	}
	public void setBuildings_id(String buildings_id) {
		this.buildings_id = buildings_id;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public String getLeave_time() {
		return leave_time;
	}
	public void setLeave_time(String leave_time) {
		this.leave_time = leave_time;
	}
	public String getReply_time() {
		return reply_time;
	}
	public void setReply_time(String reply_time) {
		this.reply_time = reply_time;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getMessage_status() {
		return message_status;
	}
	public void setMessage_status(String message_status) {
		this.message_status = message_status;
	}
	
	
}
