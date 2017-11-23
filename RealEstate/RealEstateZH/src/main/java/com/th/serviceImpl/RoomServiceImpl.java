package com.th.serviceImpl;

import java.util.List;

import com.th.bean.Building;
import com.th.bean.Buildings;
import com.th.bean.House;
import com.th.bean.Room;
import com.th.common.PageByEasyUi;
import com.th.dao.RoomDAO;
import com.th.service.RoomService;

public class RoomServiceImpl implements RoomService {

	private RoomDAO roomDAO;
	public void setRoomDAO(RoomDAO roomDAO) {
		this.roomDAO = roomDAO;
	}

	@Override
	public Room queryById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(Room t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Room t) {
		
		roomDAO.update(t);
	}

	@Override
	public void add(Room t) {
		roomDAO.add(t);
		
	}

	@Override
	public void valid(String id, String valid) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int count() {
		
		return roomDAO.count();
	}

	@Override
	public List<Room> FindPage(int pageNumber, int pageSize) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PageByEasyUi<Room> queryByPage(PageByEasyUi<Room> page) {
		
		return roomDAO.queryByPage(page);
	}

	@Override
	public List<House> houseList() {
		
		return roomDAO.houseList();
	}

	@Override
	public List<Building> buildingList() {
		return roomDAO.buildingList();
	}

	@Override
	public java.util.List<Buildings> List() {
		
		return roomDAO.List();
	}

	@Override
	public java.util.List<Building> buildingList(String buildingsid) {
		
		return roomDAO.buildingList(buildingsid);
	}

	@Override
	public Building queryByIdBuilding(String id) {
		
		return roomDAO.queryByIdBuilding(id);
	}

	@Override
	public boolean checkRoom(String buildingid, String roomname) {
		
		return roomDAO.checkRoom(buildingid, roomname);
	}

	@Override
	public void updateStastus(Room room) {
		roomDAO.updateStastus(room);
	}

	@Override
	public PageByEasyUi<Room> queryRoom(PageByEasyUi<Room> page, String buildingid, String room_name,
			String sale_status) {
		
		return roomDAO.queryRoom(page, buildingid, room_name, sale_status);
	}

	@Override
	public int count(String buildingid) {
		
		return roomDAO.count(buildingid);
	}
	
	@Override
	public int roomCount1() {
		// TODO Auto-generated method stub
		return roomDAO.roomCount1();
	}

	@Override
	public int roomCount2() {
		// TODO Auto-generated method stub
		return roomDAO.roomCount2();
	}

	@Override
	public int roomCount3() {
		
		return roomDAO.roomCount3();
	}

	@Override
	public int roomCount4() {
		// TODO Auto-generated method stub
		return roomDAO.roomCount4();
	}

	@Override
	public int roomCount5() {
		
		return roomDAO.roomCount5();
	}

}
