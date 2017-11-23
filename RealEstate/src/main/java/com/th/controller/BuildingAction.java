package com.th.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.sun.org.apache.regexp.internal.recompile;
import com.sun.org.apache.xml.internal.security.keys.keyresolver.implementations.PrivateKeyResolver;
import com.th.bean.Building;
import com.th.bean.Buildings;
import com.th.common.PageByEasyUi;
import com.th.service.BuildingService;
import com.th.serviceImpl.BuildingsServiceImpl;

public class BuildingAction extends ActionSupport{
	private Building building;
	private BuildingService buildingServiceImpl;
	private BuildingsServiceImpl buildingsServiceImpl;
	private int pageNumber;
	private int pageSize;
	private  int total;
	private List<Building> rows;
	private List<Buildings> buildingAdd;
	private String id;
	private String building_name;
	private HttpServletRequest request=ServletActionContext.getRequest();
	private String prompt;
	
	
	public String getPrompt() {
		return prompt;
	}



	public void setPrompt(String prompt) {
		this.prompt = prompt;
	}



	public String getBuilding_name() {
		return building_name;
	}



	public void setBuilding_name(String building_name) {
		this.building_name = building_name;
	}



	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public void setBuildingAdd(List<Buildings> buildingAdd) {
		this.buildingAdd = buildingAdd;
	}
	
	
	
	public List<Buildings> getBuildingAdd() {
		return buildingAdd;
	}



	public int getTotal() {
		return total;
	}
	public List<Building> getRows() {
		return rows;
	}
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public void setBuildingsServiceImpl(BuildingsServiceImpl buildingsServiceImpl) {
		this.buildingsServiceImpl = buildingsServiceImpl;
	}
	public void setBuildingServiceImpl(BuildingService buildingServiceImpl) {
		this.buildingServiceImpl = buildingServiceImpl;
	}
	public Building getBuilding() {
		return building;
	}
	public void setBuilding(Building building) {
		this.building = building;
	}
	public String Buildingadd() throws Exception {
		
		System.out.println(building.getBuildings_id());
		
		prompt="新增成功！";
		buildingServiceImpl.add(building);
		buildingAdd=buildingServiceImpl.List();
		
		return "buildList";
	}
	
	public String buildList(){
		buildingAdd=buildingServiceImpl.List();
		return "buildList";
	}
	
	public String buildingFind() {
		buildingAdd=buildingServiceImpl.List();
		request.setAttribute("building_name",building_name);
		return "buildfind";
	}
	
	public String Findlist() {
		PageByEasyUi<Building> page=new PageByEasyUi<>();
		page.setPageSize(pageSize);
		page.setPage(pageNumber);
		page=buildingServiceImpl.queryByPageFind(page, building_name);
		rows=page.getRows();
		total=page.getTotal();
		return "findlist";
	}
	
	
	
	public String list(){
		PageByEasyUi<Building> page=new PageByEasyUi<>();
		page.setPageSize(pageSize);
		page.setPage(pageNumber);
		page=buildingServiceImpl.queryByPage(page);
		rows=page.getRows();
		total=page.getTotal();
		return "list";
	}
	
	
	
	
	public String buildingUpdate(){
		building.setCreated_time(new Date().toLocaleString());
		buildingServiceImpl.update(building);
		
		prompt="修改成功！";
		
		buildingAdd=buildingServiceImpl.List();
		
		return "buildList";
	}
	
	
	public String active(){
		buildingServiceImpl.valid(id, "激活");
		buildingAdd=buildingServiceImpl.List();
		
		return "buildList";
	}
	
	public String inactive(){
		
		buildingServiceImpl.valid(id, "冻结");
		buildingAdd=buildingServiceImpl.List();
		
		return "buildList";
	}
	
	
}
