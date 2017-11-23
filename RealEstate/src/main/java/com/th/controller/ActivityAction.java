package com.th.controller;

import java.io.File;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.th.bean.Activity;
import com.th.bean.Agency;
import com.th.bean.Buildings;
import com.th.common.Pager4EasyUI;
import com.th.service.ActivityService;
import com.th.service.EmployeeService;

public class ActivityAction extends ActionSupport{
	
	private static final long serialVersionUID = 5624776271009894998L;
	private Activity activity;
	private String activity_id;
	private int pageNumber;
	private int pageSize;
	private ActivityService activityServiceImpl;
	private String logoFileFileName;//上传图片参数
	private File logoFile;
	private File file;
	private int total;
	private List<Buildings> buildings;
	private List<Activity> rows;
	HttpServletResponse response = ServletActionContext.getResponse();
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();
	private String agencyid;
	private EmployeeService employeeServiceImpl;
	public void setEmployeeServiceImpl(EmployeeService employeeServiceImpl) {
		this.employeeServiceImpl = employeeServiceImpl;
	}
	public void setAgencyid(String agencyid) {
		this.agencyid = agencyid;
	}
	
	public void setFile(File file) {
		this.file = file;
	}
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public List<Buildings> getBuildings() {
		return buildings;
	}
	
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public List<Activity> getRows() {
		return rows;
	}
	public void setRows(List<Activity> rows) {
		this.rows = rows;
	}
	public String getActivity_id() {
		return activity_id;
	}
	public void setActivity_id(String activity_id) {
		this.activity_id = activity_id;
	}
	public String getLogoFileFileName() {
		return logoFileFileName;
	}
	public void setLogoFileFileName(String logoFileFileName) {
		this.logoFileFileName = logoFileFileName;
	}
	public File getLogoFile() {
		return logoFile;
	}
	public void setLogoFile(File logoFile) {
		this.logoFile = logoFile;
	}
	public ActivityService getActivityServiceImpl() {
		return activityServiceImpl;
	}
	public void setActivityServiceImpl(ActivityService activityServiceImpl) {
		this.activityServiceImpl = activityServiceImpl;
	}
	public Activity getActivity() {
		return activity;
	}
	public void setActivity(Activity activity) {
		this.activity = activity;
	}
	
	
	//新增
	public String go() throws Exception {
		if(file!=null){
			activity.setStart_time(new Date().toLocaleString());
			activity.setActivity_logo(employeeServiceImpl.uploadFile(file));
			activity.setActivity_status("激活");
			activityServiceImpl.add(activity);
			session.setAttribute("activity", activity);
		}
		return "list";
	}
	
	//修改
	public String update()throws Exception{
		if(file!=null){
			activity.setActivity_logo(employeeServiceImpl.uploadFile(file));
		}
		activityServiceImpl.update(activity);
		return "list";
	}
	
	//激活
	public String active()throws Exception{
		
		activityServiceImpl.valid(activity_id, "激活");
//		rows = (List<Activity>)activityServiceImpl.list(activity);
		return "list";
	}
	
	//冻结
	public String inactive()throws Exception{
		activityServiceImpl.valid(activity_id, "冻结");
//		rows = (List<Activity>)activityServiceImpl.list(activity);
		return "list";
	}
	
	//分页
	public String page()throws Exception{
		if(pageNumber == 0 && pageSize == 0){
			return "list";
		}
		Pager4EasyUI<Activity> page=new Pager4EasyUI<>();
		page.setPageSize(pageSize);
		page.setPage(pageNumber);
		Agency agency= (Agency)session.getAttribute("agency");
		page=activityServiceImpl.queryByPage(page,agency.getAgency_id());
		rows=page.getRows();
		total=page.getTotal();
		return SUCCESS;
	}
	
	//活动列表的链接
	public String list()throws Exception{
		Agency agency= (Agency)session.getAttribute("agency");
		buildings = activityServiceImpl.BuildingsList(agency.getAgency_id());
		return SUCCESS;
	}
	
}
