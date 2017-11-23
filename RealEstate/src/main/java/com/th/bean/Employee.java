package com.th.bean;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.apache.struts2.json.annotations.JSON;
import org.hibernate.annotations.GenericGenerator;

public class Employee implements Serializable{

	private static final long serialVersionUID = -8207033453408444863L;
	
	private String employee_id;		//员工编号,UUID，主键
	private String employee_name;	//员工名称
	private String employee_email;	//邮箱，unique
	private String employee_pwd;	//密码,自动生成，使用默认密码not null
	private String employee_phone;	//手机号,用于登录账号，unique，not null
	private String employee_qq;		//qq号
	private String employee_wechat;	//微信号
	private String employee_gender;	//性别
	private String employee_exp;	//工作经验描述
	private String employee_des;	//最多50个字的个人说明
	private String employee_address;//地址
	private double basic_salary;	//基本工资，not null
	private String headicon;		//头像，default
	private String employee_intro;	//简介
	private String angency_id;		//员工所属经销商,外键字段，来源于t_angency的id字段
	private String buildings_id;		//负责的楼盘，外键字段，来源于t_building的id字段
	private String created_time;		//创建时间
	private String employee_status;	//状态，激活或冻结
	
	private Agency agency;
	private Set<Appointment> appointments = new HashSet<Appointment>(); 
	@JSON(serialize = false)
	public Set<Appointment> getAppointments() {
		return appointments;
	}
	public void setAppointments(Set<Appointment> appointments) {
		this.appointments = appointments;
	}
	
	public Agency getAgency() {
		return agency;
	}
	public void setAgency(Agency agency) {
		this.agency = agency;
	}
	public Employee() {
	}
	public String getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(String employee_id) {
		this.employee_id = employee_id;
	}
	public String getEmployee_name() {
		return employee_name;
	}
	public void setEmployee_name(String employee_name) {
		this.employee_name = employee_name;
	}
	public String getEmployee_email() {
		return employee_email;
	}
	public void setEmployee_email(String employee_email) {
		this.employee_email = employee_email;
	}
	public String getEmployee_pwd() {
		return employee_pwd;
	}
	public void setEmployee_pwd(String employee_pwd) {
		this.employee_pwd = employee_pwd;
	}
	public String getEmployee_phone() {
		return employee_phone;
	}
	public void setEmployee_phone(String employee_phone) {
		this.employee_phone = employee_phone;
	}
	public String getEmployee_qq() {
		return employee_qq;
	}
	public void setEmployee_qq(String employee_qq) {
		this.employee_qq = employee_qq;
	}
	public String getEmployee_wechat() {
		return employee_wechat;
	}
	public void setEmployee_wechat(String employee_wechat) {
		this.employee_wechat = employee_wechat;
	}
	public String getEmployee_gender() {
		return employee_gender;
	}
	public void setEmployee_gender(String employee_gender) {
		this.employee_gender = employee_gender;
	}
	public String getEmployee_exp() {
		return employee_exp;
	}
	public void setEmployee_exp(String employee_exp) {
		this.employee_exp = employee_exp;
	}
	public String getEmployee_des() {
		return employee_des;
	}
	public void setEmployee_des(String employee_des) {
		this.employee_des = employee_des;
	}
	public String getEmployee_address() {
		return employee_address;
	}
	public void setEmployee_address(String employee_address) {
		this.employee_address = employee_address;
	}
	public double getBasic_salary() {
		return basic_salary;
	}
	public void setBasic_salary(double basic_salary) {
		this.basic_salary = basic_salary;
	}
	public String getHeadicon() {
		return headicon;
	}
	public void setHeadicon(String headicon) {
		this.headicon = headicon;
	}
	public String getEmployee_intro() {
		return employee_intro;
	}
	public void setEmployee_intro(String employee_intro) {
		this.employee_intro = employee_intro;
	}
	public String getAngency_id() {
		return angency_id;
	}
	public void setAngency_id(String angency_id) {
		this.angency_id = angency_id;
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
	
	public String getEmployee_status() {
		return employee_status;
	}
	public void setEmployee_status(String employee_status) {
		this.employee_status = employee_status;
	}
	

}
