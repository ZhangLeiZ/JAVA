package com.th.dao;

import com.th.bean.Building;
import com.th.bean.Buildings;
import com.th.bean.Room;
import com.th.common.PageByEasyUi;

public interface BuildingDAO extends TopDAO<String, Building>{
	public PageByEasyUi<Building> queryByPage(PageByEasyUi<Building> page);
	public java.util.List<Buildings> List();
	public void valid(String id, String valid) ;

	
	//根据条件查找
	public PageByEasyUi<Building> queryByPageFind(PageByEasyUi<Building> page,String building_name);
	
	public PageByEasyUi<Room> queryRoom(PageByEasyUi<Room> page,String buildingid);
	
	public int counts();
	
	public Room roomFind(String buildingid);

	

}
