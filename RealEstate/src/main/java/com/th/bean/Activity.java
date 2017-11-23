package com.th.bean;

import java.io.Serializable;

import org.apache.struts2.json.annotations.JSON;

public class Activity implements Serializable{
	
	/**9 76
	 */
	private static final long serialVersionUID = 1L;
	//9.活动表t_activity			
	private String activity_id;			//编号,UUID，主键
	private String activity_title;		//活动标题,not null
	private String start_time;			//开始时间
	private String end_time;				//结束时间
	private String activity_address;	//活动地址
	//text大文本类型	
	private String activity_content;	//活动内容
	private String activity_logo;		//活动图片
	private String buildings_id;		//楼盘编号，外键字段，来源于t_buildings的id字段，如果此字段为空，则表示是由平台管理员发布的活动
	private String activity_status; //活动状态
	//多对一
	private Buildings buildings;
	
	
	public String getActivity_status() {
		return activity_status;
	}
	public void setActivity_status(String activity_status) {
		this.activity_status = activity_status;
	}
	public Buildings getBuildings() {
		return buildings;
	}
	public void setBuildings(Buildings buildings) {
		this.buildings = buildings;
	}
	public String getActivity_id() {
		return activity_id;
	}
	public void setActivity_id(String activity_id) {
		this.activity_id = activity_id;
	}
	public String getActivity_title() {
		return activity_title;
	}
	public void setActivity_title(String activity_title) {
		this.activity_title = activity_title;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getEnd_time() {
		return end_time;
	}
	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}
	public String getActivity_address() {
		return activity_address;
	}
	public void setActivity_address(String activity_address) {
		this.activity_address = activity_address;
	}
	public String getActivity_content() {
		return activity_content;
	}
	public void setActivity_content(String activity_content) {
		this.activity_content = activity_content;
	}
	public String getActivity_logo() {
		return activity_logo;
	}
	public void setActivity_logo(String activity_logo) {
		this.activity_logo = activity_logo;
	}
	public String getBuildings_id() {
		return buildings_id;
	}
	public void setBuildings_id(String buildings_id) {
		this.buildings_id = buildings_id;
	}

}
