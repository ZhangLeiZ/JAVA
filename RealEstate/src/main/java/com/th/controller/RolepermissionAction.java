package com.th.controller;

import com.opensymphony.xwork2.ActionSupport;
import com.th.bean.Rolepermission;
import com.th.service.RolepermissionService;

public class RolepermissionAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	
	private Rolepermission rolepermission;
	private RolepermissionService rolepermissionService;
	public Rolepermission getRolepermission() {
		return rolepermission;
	}
	public void setRolepermission(Rolepermission rolepermission) {
		this.rolepermission = rolepermission;
	}
	public RolepermissionService getRolepermissionService() {
		return rolepermissionService;
	}
	public void setRolepermissionService(RolepermissionService rolepermissionService) {
		this.rolepermissionService = rolepermissionService;
	} 

}
