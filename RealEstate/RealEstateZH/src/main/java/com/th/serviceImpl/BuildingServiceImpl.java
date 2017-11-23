package com.th.serviceImpl;

import java.util.List;

import com.th.bean.Building;
import com.th.bean.Buildings;
import com.th.bean.Room;
import com.th.common.PageByEasyUi;
import com.th.dao.BuildingDAO;
import com.th.service.BuildingService;

public class BuildingServiceImpl implements BuildingService{
	private BuildingDAO buildingDAOImpl;
	
	public BuildingDAO getBuildingDAOImpl() {
		return buildingDAOImpl;
	}

	public void setBuildingDAOImpl(BuildingDAO buildingDAOImpl) {
		this.buildingDAOImpl = buildingDAOImpl;
	}

	@Override
	public Building queryById(String id) {
		return buildingDAOImpl.queryById(id);
	}

	@Override
	public void delete(Building t) {
		buildingDAOImpl.delete(t);
	}

	@Override
	public void update(Building t) {
		buildingDAOImpl.update(t);
	}

	@Override
	public void add(Building t) {
		buildingDAOImpl.add(t);
	}

	@Override
	public void valid(String id, String valid) {
		buildingDAOImpl.valid(id, valid);
	}

	@Override
	public int count() {
		return buildingDAOImpl.count();
	}

	@Override
	public List<Building> FindPage(int pageNumber, int pageSize) {
		return buildingDAOImpl.FindPage(pageNumber, pageSize);
	}

	@Override
	public PageByEasyUi<Building> queryByPage(PageByEasyUi<Building> page) {
		
		return buildingDAOImpl.queryByPage(page);
	}

	@Override
	public java.util.List<Buildings> List() {
		
		return buildingDAOImpl.List();
	}

	@Override
	public PageByEasyUi<Room> queryRoom(PageByEasyUi<Room> page, String buildingid) {
		
		return buildingDAOImpl.queryRoom(page, buildingid);
	}

	@Override
	public int counts() {
		
		return buildingDAOImpl.counts();
	}

	@Override
	public Room roomFind(String buildingid) {
		
		return buildingDAOImpl.roomFind(buildingid);
	}

	@Override
	public PageByEasyUi<Building> queryByPageFind(PageByEasyUi<Building> page, String building_name) {
		
		return buildingDAOImpl.queryByPageFind(page, building_name);
	}

}
