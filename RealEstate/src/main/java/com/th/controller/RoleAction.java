package com.th.controller;

import com.opensymphony.xwork2.ActionSupport;
import com.th.bean.Role;
import com.th.service.RoleService;

public class RoleAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	
	private Role role;
	private RoleService roleService;
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	public RoleService getRoleService() {
		return roleService;
	}
	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}
	

}
