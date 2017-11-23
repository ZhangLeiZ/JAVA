package com.th.bean;

import java.io.Serializable;
import java.util.HashSet;
//2.楼盘表t_buildings
import java.util.Set;

import org.apache.struts2.json.annotations.JSON;
public class Buildings implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String buildings_id	;	//编号,UUID，主键
	private String buildings_name;	//楼盘名称
	private String buildings_area;	//所属区域
	private String buildings_address;	//地址
	private double floor_area;	//占地面积
	private double building_area;	//建筑面积
	private String house_type;//	房源类型，如商业，住宅
	private String building_type;	//建筑类型，如塔楼，板楼
	private double longitude;	//经度，not null
	private double latitude;	//纬度,not null
	private double avg_price;	//楼盘均价，not null
	private String company;	//开发公司
	private String open_date;	//开盘时间
	private int total_rooms;	//总套数
	private String reception_address;	//接待地址, not null
	private String buildings_tel;	//楼盘售楼电话,not null
	private double green_ratio;	//绿化率
	private double plot_ratio;	//容积率
	private String property_company;	//物业公司
	private double property_fee;	//物业费
	private int car_station;	//车位数
	private String traffic;	//交通状况
	private String equipments;	//周边配套
	private String buildings_logo;	//楼盘封面，default
	private String buildings_intro;	//简介
	private String created_time;	//创建时间
	private String buildings_status;	//状态，激活或冻结
	private String agency_id;
	private Agency agency;
	
	private Set<Like> likes = new HashSet<Like>();
	private Set<History> historys = new HashSet<History>();
	private Set<Message> messages = new HashSet<Message>();
	@JSON(serialize = false)
	public Set<Message> getMessages() {
		return messages;
	}
	public void setMessages(Set<Message> messages) {
		this.messages = messages;
	}
	@JSON(serialize = false)
	public Set<History> getHistorys() {
		return historys;
	}
	public void setHistorys(Set<History> historys) {
		this.historys = historys;
	}
	@JSON(serialize = false)
	public Set<Like> getLikes() {
		return likes;
	}
	public void setLikes(Set<Like> likes) {
		this.likes = likes;
	}
	
	public Agency getAgency() {
		return agency;
	}
	public void setAgency(Agency agency) {
		this.agency = agency;
	}
	public String getAgency_id() {
		return agency_id;
	}
	public void setAgency_id(String agency_id) {
		this.agency_id = agency_id;
	}
	public String getBuildings_id() {
		return buildings_id;
	}
	public void setBuildings_id(String buildings_id) {
		this.buildings_id = buildings_id;
	}
	public String getBuildings_name() {
		return buildings_name;
	}
	public void setBuildings_name(String buildings_name) {
		this.buildings_name = buildings_name;
	}
	public String getBuildings_area() {
		return buildings_area;
	}
	public void setBuildings_area(String buildings_area) {
		this.buildings_area = buildings_area;
	}
	public String getBuildings_address() {
		return buildings_address;
	}
	public void setBuildings_address(String buildings_address) {
		this.buildings_address = buildings_address;
	}
	public double getFloor_area() {
		return floor_area;
	}
	public void setFloor_area(double floor_area) {
		this.floor_area = floor_area;
	}
	public double getBuilding_area() {
		return building_area;
	}
	public void setBuilding_area(double building_area) {
		this.building_area = building_area;
	}
	public String getHouse_type() {
		return house_type;
	}
	public void setHouse_type(String house_type) {
		this.house_type = house_type;
	}
	public String getBuilding_type() {
		return building_type;
	}
	public void setBuilding_type(String building_type) {
		this.building_type = building_type;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public double getAvg_price() {
		return avg_price;
	}
	public void setAvg_price(double avg_price) {
		this.avg_price = avg_price;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getOpen_date() {
		return open_date;
	}
	public void setOpen_date(String open_date) {
		this.open_date = open_date;
	}
	public int getTotal_rooms() {
		return total_rooms;
	}
	public void setTotal_rooms(int total_rooms) {
		this.total_rooms = total_rooms;
	}
	public String getReception_address() {
		return reception_address;
	}
	public void setReception_address(String reception_address) {
		this.reception_address = reception_address;
	}
	public String getBuildings_tel() {
		return buildings_tel;
	}
	public void setBuildings_tel(String buildings_tel) {
		this.buildings_tel = buildings_tel;
	}
	public double getGreen_ratio() {
		return green_ratio;
	}
	public void setGreen_ratio(double green_ratio) {
		this.green_ratio = green_ratio;
	}
	public double getPlot_ratio() {
		return plot_ratio;
	}
	public void setPlot_ratio(double plot_ratio) {
		this.plot_ratio = plot_ratio;
	}
	public String getProperty_company() {
		return property_company;
	}
	public void setProperty_company(String property_company) {
		this.property_company = property_company;
	}
	public double getProperty_fee() {
		return property_fee;
	}
	public void setProperty_fee(double property_fee) {
		this.property_fee = property_fee;
	}
	public int getCar_station() {
		return car_station;
	}
	public void setCar_station(int car_station) {
		this.car_station = car_station;
	}
	public String getTraffic() {
		return traffic;
	}
	public void setTraffic(String traffic) {
		this.traffic = traffic;
	}
	public String getEquipments() {
		return equipments;
	}
	public void setEquipments(String equipments) {
		this.equipments = equipments;
	}
	public String getBuildings_logo() {
		return buildings_logo;
	}
	public void setBuildings_logo(String buildings_logo) {
		this.buildings_logo = buildings_logo;
	}
	public String getBuildings_intro() {
		return buildings_intro;
	}
	public void setBuildings_intro(String buildings_intro) {
		this.buildings_intro = buildings_intro;
	}
	public String getCreated_time() {
		return created_time;
	}
	public void setCreated_time(String created_time) {
		this.created_time = created_time;
	}
	public String getBuildings_status() {
		return buildings_status;
	}
	public void setBuildings_status(String buildings_status) {
		this.buildings_status = buildings_status;
	}
	

}
