package com.th.bean;

import java.io.Serializable;
//	21.角色表t_role
public class Role implements Serializable{

	private static final long serialVersionUID = 1L;
	private String role_id	;	//编号,UUID，主键
	private String role_name	;//角色名称,not null
	private String  role_des	;	//角色描述,not null
	private String created_time	;	//创建时间
	private String role_status	;	//状态，激活或冻结
	public String getRole_id() {
		return role_id;
	}
	public void setRole_id(String role_id) {
		this.role_id = role_id;
	}
	public String getRole_name() {
		return role_name;
	}
	public void setRole_name(String role_name) {
		this.role_name = role_name;
	}
	public String getRole_des() {
		return role_des;
	}
	public void setRole_des(String role_des) {
		this.role_des = role_des;
	}
	public String getCreated_time() {
		return created_time;
	}
	public void setCreated_time(String created_time) {
		this.created_time = created_time;
	}
	public String getRole_status() {
		return role_status;
	}
	public void setRole_status(String role_status) {
		this.role_status = role_status;
	}

}
