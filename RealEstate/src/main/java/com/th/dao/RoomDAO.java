package com.th.dao;

import java.util.List;

import com.th.bean.Building;
import com.th.bean.Buildings;
import com.th.bean.House;
import com.th.bean.Room;
import com.th.common.PageByEasyUi;

public interface RoomDAO extends TopDAO<String,Room> {
	public PageByEasyUi<Room> queryByPage(PageByEasyUi<Room> page);
	public List<House> houseList();
	public List<Building> buildingList();
	public java.util.List<Buildings> List();
	
	public List<Building> buildingList(String buildingsid);
	
	public Building queryByIdBuilding(String id);
	
	public boolean checkRoom(String buildingid,String roomname);
	
	public void updateStastus(Room room);
	
	public PageByEasyUi<Room> queryRoom(PageByEasyUi<Room> page,String buildingid,String room_name,String sale_status);
	
	public int count(String buildingid);
	
	
	public  int roomCount1();
	public  int roomCount2();
	public  int roomCount3();
	public  int roomCount4();
	public  int roomCount5();
	
}
