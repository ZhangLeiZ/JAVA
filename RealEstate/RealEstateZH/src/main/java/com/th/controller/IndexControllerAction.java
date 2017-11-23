package com.th.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.th.bean.Article;
import com.th.bean.Buildings;
import com.th.bean.Comment;
import com.th.bean.Employee;
import com.th.bean.House;
import com.th.bean.User;
import com.th.service.ActivityService;
import com.th.service.ArticleService;
import com.th.service.BuildingsService;
import com.th.service.CommentService;
import com.th.service.EmployeeService;
import com.th.service.HouseService;

public class IndexControllerAction extends ActionSupport{
	private BuildingsService buildingsServiceImpl;
	private List<Buildings> listbuildings;
	private List<Buildings> listbuildingsType;
	private String buildingsid;
	private Buildings buildings;
	private EmployeeService employeeServiceImpl;
	private Employee employeemap;
	private HouseService houseServiceImpl;
	private List<House> houselist;
	private String houseid;
	private House house;
	private String location;
	private List<Comment> commentList;
	public List<Comment> getCommentList() {
		return commentList;
	}
	private CommentService commentService;
	HttpServletRequest resquest = ServletActionContext.getRequest();
	HttpSession session = resquest.getSession();
	private String commtie;
	private ArticleService articleServiceImpl;
	private List<Article> articlelist;
	private String acricleid;
	private Article article;
	public Article getArticle() {
		return article;
	}
	public void setAcricleid(String acricleid) {
		this.acricleid = acricleid;
	}
	public List<Article> getArticlelist() {
		return articlelist;
	}
	public void setArticleServiceImpl(ArticleService articleServiceImpl) {
		this.articleServiceImpl = articleServiceImpl;
	}
	public void setCommentService(CommentService commentService) {
		this.commentService = commentService;
	}
	public void setCommtie(String commtie) {
		this.commtie = commtie;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public House getHouse() {
		return house;
	}
	public void setHouseid(String houseid) {
		this.houseid = houseid;
	}
	public List<House> getHouselist() {
		return houselist;
	}
	public void setHouseServiceImpl(HouseService houseServiceImpl) {
		this.houseServiceImpl = houseServiceImpl;
	}
	public Employee getEmployeemap() {
		return employeemap;
	}
	private List<Employee> employeelist;
	
	public void setEmployeelist(List<Employee> employeelist) {
		this.employeelist = employeelist;
	}
	public void setEmployeeServiceImpl(EmployeeService employeeServiceImpl) {
		this.employeeServiceImpl = employeeServiceImpl;
	}
	public Buildings getBuildings() {
		return buildings;
	}
	public void setBuildingsid(String buildingsid) {
		this.buildingsid = buildingsid;
	}
	public List<Buildings> getListbuildingsType() {
		return listbuildingsType;
	}
		public List<Buildings> getListbuildings() {
		return listbuildings;
	}
	public void setBuildingsServiceImpl(BuildingsService buildingsServiceImpl) {
		this.buildingsServiceImpl = buildingsServiceImpl;
	}
	public String index()throws Exception{
		listbuildings = buildingsServiceImpl.ListBuildings("激活");
		listbuildingsType = buildingsServiceImpl.ListBuildingsType("办公式建筑");
		return "index";
	}
	public String excute()throws Exception{
		if(buildingsid!=null){
			buildings = buildingsServiceImpl.queryById(buildingsid);
		}
		employeelist = employeeServiceImpl.Hemployee(buildingsid);
		employeemap = employeeServiceImpl.EmpMap(employeelist);
		return "single";
	} 
	public String getBuildingsid() {
		return buildingsid;
	}
	public String house()throws Exception{
		if(buildingsid!=null){
			houselist = houseServiceImpl.Houselist(buildingsid);    
		}
		return "house";
	}
	
	public String houselist()throws Exception{
		if(houseid!=null){
			house = houseServiceImpl.queryById(houseid);    
		}
		if(buildingsid!=null){
			buildings = buildingsServiceImpl.queryById(buildingsid);
			session.setAttribute("buildingsq", buildings);
		}
		employeelist = employeeServiceImpl.Hemployee(buildingsid);
		employeemap = employeeServiceImpl.EmpMap(employeelist);
		commentList = commentService.listComment();
		return "single";
	}
	public String more()throws Exception{
		if(location!=null && !location.equals("")){
			listbuildings = buildingsServiceImpl.SearchBuildings(location);
			return "more";
		}
		listbuildings = buildingsServiceImpl.ListBuildings("激活");
		return "more";
	} 
	
	public String comment()throws Exception{
		User user = (User)session.getAttribute("user");
		Buildings buildingss = (Buildings)session.getAttribute("buildingsq");
		Comment comment = new Comment();
		try {
			comment.setComment_content(commtie);
			comment.setBuildings(buildingss);
			comment.setUser(user);
			comment.setComment_time(new Date().toLocaleString());
			comment.setComment_status("激活");
			commentService.add(comment);
			commentList = commentService.listComment();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "more";
	}
	public String moress()throws Exception{
		commentList = commentService.listComment();
		return "more";
	} 
	public String renewal()throws Exception{
		if(buildingsid!=null){
			employeelist = employeeServiceImpl.Hemployee(buildingsid);
			employeemap = employeeServiceImpl.EmpMap(employeelist);
		}
		return "more";
	}
	public String acritylists()throws Exception{
		articlelist = articleServiceImpl.ArticleList();
		return "more";
	}
	public String newacrity()throws Exception{
		return "newacrity";
	}
	
	public String acricleexce()throws Exception{
		article = articleServiceImpl.queryById(acricleid);
		return "newacrity";
	}
	public String newindex()throws Exception{
		return "newindex";
	}
	public String newindexfind()throws Exception{
		listbuildings = buildingsServiceImpl.ListNewBuildings("激活");
		return "more";
	}
}
