package com.th.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.channels.ScatteringByteChannel;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.alibaba.fastjson.JSON;
import com.opensymphony.xwork2.ActionSupport;
import com.th.bean.Building;
import com.th.bean.Buildings;
import com.th.bean.Customer;
import com.th.bean.House;
import com.th.bean.Room;
import com.th.common.HChart;
import com.th.common.PageByEasyUi;
import com.th.daoImpl.RoomDAOImpl;
import com.th.service.CustomerService;
import com.th.service.RoomService;
import com.th.serviceImpl.BuildingServiceImpl;

public class RoomAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	private Room room;
	private RoomService roomService;
	private RoomDAOImpl daoImpl;
	private BuildingServiceImpl buildingServiceImpl;
	private int pageNumber;
	private int pageSize;
	private  int total;
	private List<Room> rows;
	private List<House> houseList;
	private List<Building> buildingList;
	private List<Buildings> buildingsList;
	private HttpServletRequest request=ServletActionContext.getRequest();
	private Building building;
	private String buildid; 
	private String houseNumber;
	private String find;
	private String prompt;
	private CustomerService customerServiceImpl;
	private String id;
	private Customer customer;
	private HttpServletResponse response=ServletActionContext.getResponse();
	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setCustomerServiceImpl(CustomerService customerServiceImpl) {
		this.customerServiceImpl = customerServiceImpl;
	}

	public String getPrompt() {
		return prompt;
	}

	public void setPrompt(String prompt) {
		this.prompt = prompt;
	}

	public RoomDAOImpl getDaoImpl() {
		return daoImpl;
	}

	public void setDaoImpl(RoomDAOImpl daoImpl) {
		this.daoImpl = daoImpl;
	}

	public String getFind() {
		return find;
	}

	public void setFind(String find) {
		this.find = find;
	}

	public String getHouseNumber() {
		return houseNumber;
	}

	public void setHouseNumber(String houseNumber) {
		this.houseNumber = houseNumber;
	}

	public Building getBuilding() {
		return building;
	}

	public void setBuilding(Building building) {
		this.building = building;
	}

	public void setBuildingServiceImpl(BuildingServiceImpl buildingServiceImpl) {
		this.buildingServiceImpl = buildingServiceImpl;
	}
	
	public String getBuildid() {
		return buildid;
	}

	public void setBuildid(String buildid) {
		this.buildid = buildid;
	}

	public List<Buildings> getBuildingsList() {
		return buildingsList;
	}
	public void setBuildingsList(List<Buildings> buildingsList) {
		this.buildingsList = buildingsList;
	}
	public List<House> getHouseList() {
		return houseList;
	}
	public void setHouseList(List<House> houseList) {
		this.houseList = houseList;
	}
	public List<Building> getBuildingList() {
		return buildingList;
	}
	public void setBuildingList(List<Building> buildingList) {
		this.buildingList = buildingList;
	}
	public int getTotal() {
		return total;
	}
	public List<Room> getRows() {
		return rows;
	}
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public Room getRoom() {
		return room;
	}
	public void setRoom(Room room) {
		this.room = room;
	}
	public RoomService getRoomService() {
		return roomService;
	}
	public void setRoomService(RoomService roomService) {
		this.roomService = roomService;
	}
	
	
	
	public String roomAdd(){
		
		
		
		building=roomService.queryByIdBuilding(room.getBuilding_id());
		
		int total_floor=building.getTotal_floor();//总层数
		
			
		String roomname;
		roomname=building.getBuilding_name()+1+houseNumber;
		
		boolean check;
		
		check=roomService.checkRoom(room.getBuilding_id(), roomname);
		
		if(check==true){
			request.setAttribute("buildid", room.getBuilding_id());
			buildingList=roomService.buildingList();
			houseList=roomService.houseList();
			
			return "findroom";
		}else{
			for(int i=1;i<=total_floor;i++){
				roomname=building.getBuilding_name()+i+houseNumber;
				room.setRoom_name(roomname);
				roomService.add(room);
			}
			
			prompt="新增成功！";
			
			request.setAttribute("buildid", room.getBuilding_id());
			buildingList=roomService.buildingList();
			houseList=roomService.houseList();
			
			return "findroom";
			
		}
	
	}
	
	
	
	public String findroom(){
		
		request.setAttribute("buildid", buildid);
		houseList=roomService.houseList();
		return "findroom";
	}
	
	public String Findlist(){
		PageByEasyUi<Room> page=new PageByEasyUi<>();
		page.setPageSize(pageSize);
		page.setPage(pageNumber);
		page=buildingServiceImpl.queryRoom(page, buildid);
		rows=page.getRows();
		total=page.getTotal();
		return "list";
	}
	
	public String roomfind2(){
		
		request.setAttribute("total_floor", building.getTotal_floor());
		request.setAttribute("floor_rooms", building.getFloor_rooms());
		request.setAttribute("building_id", building.getBuilding_id());
		houseList=roomService.houseList();
		
		return "roomAdd";
	}
	
	public String roomUpdate(){
		buildid=room.getBuilding_id();
		
		roomService.update(room);
		
		prompt="修改成功！";
		
		request.setAttribute("buildid", buildid);
		houseList=roomService.houseList();
		
		return "findroom";
	}
	
	public String updateStatus(){
		
		buildid=room.getBuilding_id();
		roomService.updateStastus(room);
		prompt="修改成功！";
		request.setAttribute("buildid", buildid);
		houseList=roomService.houseList();
		
		return "findroom";
	}
	
	public String find(){
		request.setAttribute("buildid", buildid);
		request.setAttribute("find", find);
		houseList=roomService.houseList();
		return "find";
	}
	
	public String findLists(){
		PageByEasyUi<Room> page=new PageByEasyUi<>();
		page.setPageSize(pageSize);
		page.setPage(pageNumber);
		page=roomService.queryRoom(page, buildid, find, find);
		rows=page.getRows();
		total=page.getTotal();
		return "findlist";
	}
	
	public String findCustomer(){
		customer=customerServiceImpl.queryById(id);
		return "findCustomer";
	}
	
	public String count(){
		return "roomCount";
	}
	
	public String count1(){
		return "roomCount1";
	}
	
	public void roomCount() throws IOException{
		response.setContentType("text/json;charset=utf-8");
		List<HChart<Integer>> temps=new ArrayList<HChart<Integer>>();
		
		HChart<Integer> temp=new HChart<Integer>();
		
		temp.setName("房屋数量");
		
		Integer[] data=new Integer[12];
		
		data[0]=roomService.roomCount1();
		data[1]=roomService.roomCount2();
		data[2]=roomService.roomCount3();
		data[3]=roomService.roomCount4();
		data[4]=roomService.roomCount5();
		
		temp.setData(data);
		temps.add(temp);
		PrintWriter out=response.getWriter();
		
		out.println(JSON.toJSONString(temps));
//		System.out.println(JSON.toJSONString(temps));
	}
}
