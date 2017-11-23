package com.th.bean;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
//1.经销商表t_agency
public class Agency implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String agency_id	;	//编号,UUID，主键
	private String agency_name	;	//经销商名称，unique
	private String agency_email	;	//邮箱，作为登录账号，unique, not null
	private String agency_pwd	;	//密码,md5加密，not null
	private String agency_leader	;	//负责人姓名
	private String agency_phone	;	//手机号,unique，not null
	private String agency_tel	;	//固定电话
	private String agency_address	;	//地址
	private String agency_logo	;	//商标图片，default
	private String agency_intro	;	//简介
	private String created_time	;	//创建时间
	private String checked_status	;	//审核状态，默认为N,审核后为Y
	private String agency_status	;	//状态，激活或冻结
	
	private Set<Employee> empset = new HashSet<Employee>();
	public Set<Employee> getEmpset() {
		return empset;
	}
	public void setEmpset(Set<Employee> empset) {
		this.empset = empset;
	}
	public Agency() {
	}
	public String getAgency_id() {
		return agency_id;
	}
	public void setAgency_id(String agency_id) {
		this.agency_id = agency_id;
	}
	public String getAgency_name() {
		return agency_name;
	}
	public void setAgency_name(String agency_name) {
		this.agency_name = agency_name;
	}
	public String getAgency_email() {
		return agency_email;
	}
	public void setAgency_email(String agency_email) {
		this.agency_email = agency_email;
	}
	public String getAgency_pwd() {
		return agency_pwd;
	}
	public void setAgency_pwd(String agency_pwd) {
		this.agency_pwd = agency_pwd;
	}
	public String getAgency_leader() {
		return agency_leader;
	}
	public void setAgency_leader(String agency_leader) {
		this.agency_leader = agency_leader;
	}
	public String getAgency_phone() {
		return agency_phone;
	}
	public void setAgency_phone(String agency_phone) {
		this.agency_phone = agency_phone;
	}
	public String getAgency_tel() {
		return agency_tel;
	}
	public void setAgency_tel(String agency_tel) {
		this.agency_tel = agency_tel;
	}
	public String getAgency_address() {
		return agency_address;
	}
	public void setAgency_address(String agency_address) {
		this.agency_address = agency_address;
	}
	public String getAgency_logo() {
		return agency_logo;
	}
	public void setAgency_logo(String agency_logo) {
		this.agency_logo = agency_logo;
	}
	public String getAgency_intro() {
		return agency_intro;
	}
	public void setAgency_intro(String agency_intro) {
		this.agency_intro = agency_intro;
	}
	public String getCreated_time() {
		return created_time;
	}
	public void setCreated_time(String created_time) {
		this.created_time = created_time;
	}
	public String getChecked_status() {
		return checked_status;
	}
	public void setChecked_status(String checked_status) {
		this.checked_status = checked_status;
	}
	

	public String getAgency_status() {
		return agency_status;
	}
	public void setAgency_status(String agency_status) {
		this.agency_status = agency_status;
	}

}
