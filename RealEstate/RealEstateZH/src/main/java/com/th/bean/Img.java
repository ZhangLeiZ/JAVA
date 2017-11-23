package com.th.bean;

import java.io.Serializable;
//3.楼盘图片表t_buildings_img
public class Img implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String id	;	//编号,UUID，主键
	private String img_path	;	//图片路径，not null
	private String img_des	;	//图片简单描述
	private String buildings_id	;	//楼盘编号，外键字段，来源于t_buildings的id字段
	private String created_time	;	//创建时间
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getImg_path() {
		return img_path;
	}
	public void setImg_path(String img_path) {
		this.img_path = img_path;
	}
	public String getImg_des() {
		return img_des;
	}
	public void setImg_des(String img_des) {
		this.img_des = img_des;
	}
	public String getBuildings_id() {
		return buildings_id;
	}
	public void setBuildings_id(String buildings_id) {
		this.buildings_id = buildings_id;
	}
	public String getCreated_time() {
		return created_time;
	}
	public void setCreated_time(String created_time) {
		this.created_time = created_time;
	}

}
