package com.th.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.th.bean.Buildings;
import com.th.bean.Like;
import com.th.bean.User;
import com.th.common.PageByEasyUi;
import com.th.service.LikeService;

public class LikeAction extends ActionSupport implements SessionAware{
	
	private static final long serialVersionUID = 1L;

	private Like like;
	private LikeService likeService;
	
	private int pageSize;
	private int pageNumber;	
	private int total;
	private List<Like> rows;
	
	private String id;  // like_id  js中url参数
	private String userId;
	
	private User user;
	private Buildings buildings;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Buildings getBuildings() {
		return buildings;
	}
	public void setBuildings(Buildings buildings) {
		this.buildings = buildings;
	}
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Like getLike() {
		return like;
	}
	public void setLike(Like like) {
		this.like = like;
	}
	public void setLikeService(LikeService likeService) {
		this.likeService = likeService;
	}
	
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}	
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	public int getTotal() {
		return total;
	}	
	public List<Like> getRows() {
		return rows;
	}
	
	
	private Map mySession;       //session
	@Override
	public void setSession(Map session) {
		this.mySession = session;		
	}
	
	public String list(){
		return "list";	
	}
	
	public String addLike(){
		like.setBuildings(buildings);
		like.setUser(user);
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		like.setCreated_time(df.format(new Date()));
		return "list";
	}
	
	public String listPage(){
		User u = (User)mySession.get("user");
		PageByEasyUi<Like> page = new PageByEasyUi<Like>();
		page.setPage(pageNumber);
		page.setPageSize(pageSize);
		page = likeService.pageById(page, u.getUser_id());
		rows = page.getRows();
		total = page.getTotal();		
		return "listPage";		
	}                        
	
	public String delete(){
		likeService.delete(id);    
		return "delete";
	}
	
}
