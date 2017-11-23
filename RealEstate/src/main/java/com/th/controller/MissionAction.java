package com.th.controller;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.th.bean.Appointment;
import com.th.bean.Employee;
import com.th.bean.Mission;
import com.th.common.PageByEasyUi;
import com.th.common.Pager4EasyUI;
import com.th.service.MissionService;

public class MissionAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private Mission mission;
	private MissionService missionService;
	private int pageNumber;
	private int pageSize;
	private  int total;
	private String mission_id;
	private String employee_id;
	private Employee employee;
	private List<Mission> rows;
	private List<Employee> employees;
	private String prompt;
	private String empname;
	
	
	public String getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(String employee_id) {
		this.employee_id = employee_id;
	}
	public String getMission_id() {
		return mission_id;
	}
	public void setMission_id(String mission_id) {
		this.mission_id = mission_id;
	}
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	public int getPageNumber() {
		return pageNumber;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public void setRows(List<Mission> rows) {
		this.rows = rows;
	}
	public String getEmpname() {
		return empname;
	}
	public void setEmpname(String empname) {
		this.empname = empname;
	}
	public String getPrompt() {
		return prompt;
	}
	public void setPrompt(String prompt) {
		this.prompt = prompt;
	}
	public List<Employee> getEmployees() {
		return employees;
	}
	public void setEmployees(List<Employee> employees) {
		this.employees = employees;
	}
	public int getTotal() {
		return total;
	}
	public List<Mission> getRows() {
		return rows;
	}
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public Mission getMission() {
		return mission;
	}
	public void setMission(Mission mission) {
		this.mission = mission;
	}
	
	public void setMissionService(MissionService missionService) {
		this.missionService = missionService;
	}
	
	public String miss(){
		employees=missionService.listEmp();
		return "miss";
	}
	
	public String list(){
		pagelist();
		return "list";
	}
	
	public String missionAdds(){
		missionService.add(mission);
		employees=missionService.listEmp();
		prompt="新增成功！";
		return "miss";
	}
	public String addmission() throws Exception{
		
		missionService.add(mission);
		pagelist();
		employees=missionService.listEmp();
		return "addmission";
	}
	public String add() throws Exception{
		
		return "add";
	}
	public void pagelist(){
		PageByEasyUi<Mission> page=new PageByEasyUi<Mission>();
		page.setPageSize(pageSize);
		page.setPage(pageNumber);
		page=missionService.queryByPage(page);
		rows=page.getRows();
		total=page.getTotal();
	}
	
	public String updateMiss(){
		missionService.update(mission);
		employees=missionService.listEmp();
		prompt="修改成功！";
		return "miss";
	}
	
	public String Findmiss(){
		mission=missionService.missionFind(empname);
		PageByEasyUi<Mission> page=new PageByEasyUi<Mission>();
		page.setPageSize(pageSize);
		page.setPage(pageNumber);
		page=missionService.queryByPage(page,mission.getEmployee_id());
		rows=page.getRows();
		total=page.getTotal();
		
		return "list";
	}
	
	//员工绩效分页
	public String page()throws Exception{
		Pager4EasyUI<Mission> page=new Pager4EasyUI<Mission>();
		page.setPageSize(pageSize);
		page.setPage(pageNumber);
		page=missionService.queryByPage(page, employee_id);
		rows=page.getRows();
		total=page.getTotal();
		return "list";
	}
	
	public String list1()throws Exception{
		return "page";
	}
	
	
}
