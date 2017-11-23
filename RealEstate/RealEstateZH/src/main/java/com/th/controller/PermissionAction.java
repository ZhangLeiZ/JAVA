package com.th.controller;

import com.opensymphony.xwork2.ActionSupport;
import com.th.bean.Permission;
import com.th.service.PermissionService;

public class PermissionAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	
	private Permission permission;
	private PermissionService permissionService;
	public Permission getPermission() {
		return permission;
	}
	public void setPermission(Permission permission) {
		this.permission = permission;
	}
	public PermissionService getPermissionService() {
		return permissionService;
	}
	public void setPermissionService(PermissionService permissionService) {
		this.permissionService = permissionService;
	}

}
