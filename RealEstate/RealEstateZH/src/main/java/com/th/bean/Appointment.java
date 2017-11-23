package com.th.bean;

import java.io.Serializable;

public class Appointment implements Serializable {

	private static final long serialVersionUID = -2735730223600725948L;
	
	private String appointment_id;     //编号
	private String employee_id;             //员工编号
	private String user_id;            //用户编号
	private String app_arrive_time;    //预约看房时间
	private String arrive_time;        //真实看房时间
	private String house_id;           //户型编号
	private String app_status;  	   //预约状态
	private String created_time; 	   //创建时间
	private String appointment_status; //状态
	
	private Employee employee;
	private User user;
	private House house;      
	
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public House getHouse() {
		return house;
	}
	public void setHouse(House house) {
		this.house = house;
	}
	public String getAppointment_id() {
		return appointment_id;
	}
	public void setAppointment_id(String appointment_id) {
		this.appointment_id = appointment_id;
	}
	
	public String getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(String employee_id) {
		this.employee_id = employee_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getApp_arrive_time() {
		return app_arrive_time;
	}
	public void setApp_arrive_time(String app_arrive_time) {
		this.app_arrive_time = app_arrive_time;
	}
	public String getArrive_time() {
		return arrive_time;
	}
	public void setArrive_time(String arrive_time) {
		this.arrive_time = arrive_time;
	}
	public String getHouse_id() {
		return house_id;
	}
	public void setHouse_id(String house_id) {
		this.house_id = house_id;
	}
	public String getApp_status() {
		return app_status;
	}
	public void setApp_status(String app_status) {
		this.app_status = app_status;
	}
	public String getCreated_time() {
		return created_time;
	}
	public void setCreated_time(String created_time) {
		this.created_time = created_time;
	}
	public String getAppointment_status() {
		return appointment_status;
	}
	public void setAppointment_status(String appointment_status) {
		this.appointment_status = appointment_status;
	}
	
}
