package com.th.service;

import java.util.List;

import com.th.bean.Buildings;
import com.th.bean.Img;
import com.th.common.PageByEasyUi;

public interface BuildingsService extends TopService<String, Buildings>{
	public List<Buildings> findByPage(int currentPage, int pageSize) ;
	public PageByEasyUi<Buildings> queryByPage(PageByEasyUi<Buildings> page,String agencyId);
	public PageByEasyUi<Buildings> queryByPageFind(PageByEasyUi<Buildings> page,String agencyId,String buildings_name,String avg_price);
	public int pageCount(String agencyid);
	public List<Buildings> ListBuildings(String stratu);
	public List<Buildings> ListBuildingsType(String buildingtype);
	public List<Buildings> SearchBuildings(String location);
	public List<Buildings> ListNewBuildings(String stratu);


}
