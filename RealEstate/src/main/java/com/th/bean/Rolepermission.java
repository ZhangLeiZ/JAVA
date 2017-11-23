package com.th.bean;

import java.io.Serializable;
//角色权限表
@SuppressWarnings("serial")
public class Rolepermission implements Serializable{

	private String id;	//编号,UUID，主键
	private String role_id;	//角色编号，外键字段，来源于t_role表的id字段
	private String permission_id;	//权限编号，外键字段，来源于t_permission表的id字段
	private String created_time;	//创建时间
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getRole_id() {
		return role_id;
	}
	public void setRole_id(String role_id) {
		this.role_id = role_id;
	}
	public String getPermission_id() {
		return permission_id;
	}
	public void setPermission_id(String permission_id) {
		this.permission_id = permission_id;
	}
	public String getCreated_time() {
		return created_time;
	}
	public void setCreated_time(String created_time) {
		this.created_time = created_time;
	}

}
