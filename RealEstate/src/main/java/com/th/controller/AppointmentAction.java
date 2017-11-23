package com.th.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ActionSupport;
import com.th.bean.Appointment;
import com.th.bean.Employee;
import com.th.bean.House;
import com.th.bean.User;
import com.th.common.PageByEasyUi;
import com.th.service.AppointmentService;
import com.th.serviceImpl.AppointmentServiceImpl;

public class AppointmentAction extends ActionSupport implements SessionAware{

	private static final long serialVersionUID = -5108384900868159733L;
	private Appointment appointment;
	private AppointmentServiceImpl appointmentService;
	private String appointment_id;
	private String employee_id;
	private int pageSize;
	private int pageNumber;	
	private int total;
	private List<Appointment> rows;
	private House house;
	private User user;
	private Employee employee;
	private String appointmentId;
	private String empname;
	private String housename;
	private String username;
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();
	
	public void setAppointmentService(AppointmentServiceImpl appointmentService) {
		this.appointmentService = appointmentService;
	}
	
	public void setAppointment_id(String appointment_id) {
		this.appointment_id = appointment_id;
	}
	
	public void setEmployee_id(String employee_id) {
		this.employee_id = employee_id;
	}
	
	public void setMySession(Map mySession) {
		this.mySession = mySession;
	}
	
	
	public Appointment getAppointment() {
		return appointment;
	}

	public void setEmpname(String empname) {
		this.empname = empname;
	}
	
	public void setHousename(String housename) {
		this.housename = housename;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public void setAppointment(Appointment appointment) {
		this.appointment = appointment;
	}
	
	public void setAppointmentId(String appointmentId) {
		this.appointmentId = appointmentId;
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
	public List<Appointment> getRows() {         
		return rows;
	}
	
	private Map mySession;       //session
	@Override
	public void setSession(Map session) {
		this.mySession = session;		
	}
	
	public String listApp(){
		return "list";
	}
	public String addAppointment(){
		appointment.setUser(user);
		appointment.setEmployee(employee);
		appointment.setHouse(house);
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		appointment.setCreated_time(df.format(new Date()));
		appointment.setApp_status("已预约");
		appointment.setAppointment_status("激活");
		appointmentService.add(appointment);
		return "list";
	}
	
	public String listPage(){
		//User u = (User)mySession.get("user");
		PageByEasyUi<Appointment> page = new PageByEasyUi<Appointment>();
		page.setPage(1);
		page.setPageSize(5);
		page = appointmentService.pageById(page, "4028804a5dde57e7015dde61e9ee0000");
		rows = page.getRows();
		total = page.getTotal();		
		return "listPage";        
	}
	
	public String delete(){
		appointmentService.delete(appointmentId);    
		return "delete";
	}
	
	public String applist(){
		return "applist";
	}
	public String list(){
		PageByEasyUi<Appointment> page=new PageByEasyUi<>();
		page.setPageSize(5);
		page.setPage(1);
		page=appointmentService.queryByPage(page);
		rows=page.getRows();
		total=page.getTotal();
		return "list1";
	}
	
	public String appfind(){
		employee=appointmentService.employeeFind(empname.trim());
		if(employee==null){
			return "null";
		}
		appointment=appointmentService.appointmentFind(employee.getEmployee_id());
		user=appointmentService.userFind(appointment.getUser_id());
		house=appointmentService.houseFind(appointment.getHouse_id());
		housename=house.getHouse_name();
		username=user.getUser_name();
		return "appfind";
	}

	
	//员工预约管理分页
	public String page()throws Exception{
		try {
			PageByEasyUi<Appointment> page=new PageByEasyUi<Appointment>();
			page.setPageSize(pageSize);
			page.setPage(pageNumber);
			employee = (Employee)session.getAttribute("employee");
			page=appointmentService.queryByPage(page, employee.getEmployee_id());
			rows=page.getRows();
			total=page.getTotal();
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	//获取数据
	public String list1()throws Exception{
		return "page";
	}
	
	//激活
	public String active()throws Exception{
		appointmentService.valid(appointment_id, "激活");
		return "page";
	}
	
	//冻结
	public String inactive()throws Exception{
		appointmentService.valid(appointment_id, "冻结");
		return "page";
	}
	
	//修改数据
	public String update()throws Exception{
		appointmentService.updateappointment(appointment);
		return "page";
	}

	
}
