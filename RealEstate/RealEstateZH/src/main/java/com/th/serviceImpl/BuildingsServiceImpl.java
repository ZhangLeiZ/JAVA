package com.th.serviceImpl;

import java.util.List;

import com.th.bean.Buildings;
import com.th.bean.Img;
import com.th.common.PageByEasyUi;
import com.th.dao.BuildingsDAO;
import com.th.service.BuildingsService;

public class BuildingsServiceImpl implements BuildingsService{
	private BuildingsDAO buildingsDAOImpl;
	
	public BuildingsDAO getBuildingsDAOImpl() {
		return buildingsDAOImpl;
	}

	public void setBuildingsDAOImpl(BuildingsDAO buildingsDAOImpl) {
		this.buildingsDAOImpl = buildingsDAOImpl;
	}

	@Override
	public Buildings queryById(String id) {
		return buildingsDAOImpl.queryById(id);
	}

	@Override
	public void delete(Buildings t) {
		buildingsDAOImpl.delete(t);
	}

	@Override
	public void update(Buildings t) {
		buildingsDAOImpl.update(t);
	}

	@Override
	public void add(Buildings t) {
		buildingsDAOImpl.add(t);
	}

	@Override
	public void valid(String id, String valid) {
		buildingsDAOImpl.valid(id, valid);
	}

	@Override
	public int count() {
		return buildingsDAOImpl.count();
	}

	@Override
	public List<Buildings> FindPage(int pageNumber, int pageSize) {
		return buildingsDAOImpl.FindPage(pageNumber, pageSize);
	}

	@Override
	public List<Buildings> findByPage(int currentPage, int pageSize) {
		
		return buildingsDAOImpl.findByPage(currentPage, pageSize);
	}

	@Override
	public PageByEasyUi<Buildings> queryByPage(PageByEasyUi<Buildings> page,String agencyId) {
		
		return buildingsDAOImpl.queryByPage(page,agencyId);
	}


	@Override
	public PageByEasyUi<Buildings> queryByPageFind(PageByEasyUi<Buildings> page, String agencyId, String buildings_name,
			String avg_price) {
		
		return buildingsDAOImpl.queryByPageFind(page, agencyId, buildings_name, avg_price);
	}



	@Override
	public List<Buildings> ListBuildings(String stratu) {
		return buildingsDAOImpl.ListBuildings(stratu);
	}

	@Override
	public List<Buildings> ListBuildingsType(String buildingtype) {
		return buildingsDAOImpl.ListBuildingsType(buildingtype);
	}

	@Override
	public int pageCount(String agencyid) {
		return buildingsDAOImpl.pageCount(agencyid);
	}

	@Override
	public List<Buildings> SearchBuildings(String location) {
		return buildingsDAOImpl.SearchBuildings(location);
	}

	@Override
	public List<Buildings> ListNewBuildings(String stratu) {
		return buildingsDAOImpl.ListNewBuildings(stratu);
	}

	
}
