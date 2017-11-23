package com.th.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.th.bean.Buildings;
import com.th.bean.History;
import com.th.bean.User;
import com.th.common.PageByEasyUi;
import com.th.service.HistoryService;

public class HistoryAction extends ActionSupport implements SessionAware{
	
	private static final long serialVersionUID = 1L;
	
	private History history;
	private HistoryService historyService;
	
	private int pageSize;
	private int pageNumber;	
	private int total;
	private List<History> rows;
	
	private String id;   // historyId  js中url参数
	private String userId;   // 分页参数
	
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
	
	public History getHistory() {
		return history;
	}
	public void setHistory(History history) {
		this.history = history;
	}	
	public void setHistoryService(HistoryService historyService) {
		this.historyService = historyService;
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
	public List<History> getRows() {
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
	
	public String addHistory(){
		history.setBuildings(buildings);
		history.setUser(user);
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		history.setCreated_time(df.format(new Date()));
		historyService.add(history);
		return "list";                          
	}                            
	
	public String listPage(){		
		PageByEasyUi<History> page = new PageByEasyUi<History>();
		page.setPageSize(pageSize);     //当前第几页
		page.setPage(pageNumber);       //每页记录数
		User u = (User)mySession.get("user");
		page = historyService.pageById(page, u.getUser_id());
		rows = page.getRows();      
		total = page.getTotal(); 
		return "listPage";		      
	}
	public String delete(){
		historyService.delete(id);
		return "delete";
	}
	
	
}
