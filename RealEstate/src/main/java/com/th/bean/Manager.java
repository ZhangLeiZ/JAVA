package com.th.bean;

import java.io.Serializable;

public class Manager implements Serializable {

	private static final long serialVersionUID = 1L;
	private String manager_id;	//varchar(36) primary key, #	PK	管理员id	   
	private String manager_account;	//		管理员账户	   
	private String manager_password;	//		管理员密码	   
	private String manager_name;	//		管理员姓名	   
	private String manager_sex;	//		性别,0男/1女	   
	private String manager_phone;	//		联系方式	   
	private String manager_status;	
	private String manager_image;
	public String getManager_image() {
		return manager_image;
	}
	public void setManager_image(String manager_image) {
		this.manager_image = manager_image;
	}
	public String getManager_id() {
		return manager_id;
	}
	public void setManager_id(String manager_id) {
		this.manager_id = manager_id;
	}
	public String getManager_account() {
		return manager_account;
	}
	public void setManager_account(String manager_account) {
		this.manager_account = manager_account;
	}
	public String getManager_password() {
		return manager_password;
	}
	public void setManager_password(String manager_password) {
		this.manager_password = manager_password;
	}
	public String getManager_name() {
		return manager_name;
	}
	public void setManager_name(String manager_name) {
		this.manager_name = manager_name;
	}
	public String getManager_sex() {
		return manager_sex;
	}
	public void setManager_sex(String manager_sex) {
		this.manager_sex = manager_sex;
	}
	public String getManager_phone() {
		return manager_phone;
	}
	public void setManager_phone(String manager_phone) {
		this.manager_phone = manager_phone;
	}
	public String getManager_status() {
		return manager_status;
	}
	public void setManager_status(String manager_status) {
		this.manager_status = manager_status;
	}
	
}
