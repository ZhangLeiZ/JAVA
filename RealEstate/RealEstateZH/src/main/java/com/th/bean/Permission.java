package com.th.bean;

import java.io.Serializable;
//22.权限表t_permission
public class Permission implements Serializable{

	private static final long serialVersionUID = 1L;
	private String permission_id	;	//编号,UUID，主键
	private String permission_name	;	//权限名称,not null
	private String permission_des	;	//权限描述,not null
	private String created_time	;	//创建时间
	private String permission_status	;	//状态，激活或冻结
	public String getPermission_id() {
		return permission_id;
	}
	public void setPermission_id(String permission_id) {
		this.permission_id = permission_id;
	}
	public String getPermission_name() {
		return permission_name;
	}
	public void setPermission_name(String permission_name) {
		this.permission_name = permission_name;
	}
	public String getPermission_des() {
		return permission_des;
	}
	public void setPermission_des(String permission_des) {
		this.permission_des = permission_des;
	}
	public String getCreated_time() {
		return created_time;
	}
	public void setCreated_time(String created_time) {
		this.created_time = created_time;
	}
	public String getPermission_status() {
		return permission_status;
	}
	public void setPermission_status(String permission_status) {
		this.permission_status = permission_status;
	}
	

}
