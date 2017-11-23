package com.th.serviceImpl;

import java.util.List;

import com.th.bean.House;
import com.th.bean.HouseImg;
import com.th.common.PageByEasyUi;
import com.th.dao.HouseDAO;
import com.th.service.HouseService;

public class HouseServiceImpl implements HouseService{

	private HouseDAO houseDAOImpl;
	
	public void setHouseDAOImpl(HouseDAO houseDAOImpl) {
		this.houseDAOImpl = houseDAOImpl;
	}

	@Override
	public House queryById(String id) {
		
		return houseDAOImpl.queryById(id);
	}

	@Override
	public void delete(House t) {
		houseDAOImpl.delete(t);
		
	}

	@Override
	public void update(House t) {
		houseDAOImpl.update(t);
		
	}

	@Override
	public void add(House t) {
		houseDAOImpl.add(t);
		
	}

	
	@Override
	public void valid(String id, String valid) {
		houseDAOImpl.valid(id, valid);
	}

	@Override
	public int count() {
		
		return houseDAOImpl.count();
	}

	@Override
	public List<House> FindPage(int pageNumber, int pageSize) {
		
		return houseDAOImpl.FindPage(pageNumber, pageSize);
	}

	@Override
	public PageByEasyUi<House> queryByPage(PageByEasyUi<House> page) {
		
		return houseDAOImpl.queryByPage(page);
	}

	@Override
	public PageByEasyUi<House> queryByPage(PageByEasyUi<House> page, String agencyId) {
		
		return houseDAOImpl.queryByPage(page, agencyId);
	}

	@Override
	public List<House> Houselist(String buildingsid) {
		return houseDAOImpl.Houselist(buildingsid);
	}


	@Override
	public void HouseImgAdd(HouseImg img) {

		houseDAOImpl.HouseImgAdd(img);
		
	}

	@Override
	public void HouseImgDelete(HouseImg img) {
		houseDAOImpl.HouseImgDelete(img);
		
	}

	@Override
	public List<HouseImg> houseImgList(String houseid) {
		
		return houseDAOImpl.houseImgList(houseid);
	}

	@Override
	public PageByEasyUi<House> queryByPageFind(PageByEasyUi<House> page, String house_name) {
		
		return houseDAOImpl.queryByPageFind(page, house_name);
	}

}
