package com.th.controller;

import java.io.File;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.th.bean.Agency;
import com.th.bean.Building;
import com.th.bean.Buildings;
import com.th.bean.Employee;
import com.th.common.PageByEasyUi;
import com.th.service.EmployeeService;

public class EmployeeAction extends ActionSupport{
	private Employee employee;
	private EmployeeService employeeServiceImpl;
	private File file;
	private String employeePhone;
	private String employeePwd;
	
	private String oldpwd;
	private String newpwd;
	private String employeeid;
	private String agencyid;
	private int emp;
	private int pageNumber;
	private int pageSize;
	private List<Employee> rows;
	private List<Buildings> buildings;
	private String prompt;
	
	public void setRows(List<Employee> rows) {
		this.rows = rows;
	}
	public String getPrompt() {
		return prompt;
	}
	public void setPrompt(String prompt) {
		this.prompt = prompt;
	}
	public List<Buildings> getBuildings() {
		return buildings;
	}
	public List<Employee> getRows() {
		return rows;
	}
	public int getTotal() {
		return total;
	}
	private int total;
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public void setAgencyid(String agencyid) {
		this.agencyid = agencyid;
	}
	public void setEmp(int emp) {
		this.emp = emp;
	}
	public void setOldpwd(String oldpwd) {
		this.oldpwd = oldpwd;
	}
	public void setNewpwd(String newpwd) {
		this.newpwd = newpwd;
	}
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();
	public void setEmployeePhone(String employeePhone) {
		this.employeePhone = employeePhone;
	}
	public void setEmployeePwd(String employeePwd) {
		this.employeePwd = employeePwd;
	}
	public void setFile(File file) {
		this.file = file;
	}
	public void setEmployeeServiceImpl(EmployeeService employeeServiceImpl) {
		this.employeeServiceImpl = employeeServiceImpl;
	}
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	public String Employeeadd() throws Exception {
		if(emp==2){
			Agency agency = (Agency)session.getAttribute("agency");
			buildings = employeeServiceImpl.Buildinglist(agency.getAgency_id());
			return SUCCESS;
		}else{
			try {
				if(!file.equals("") && file!=null){
					employee.setHeadicon(employeeServiceImpl.uploadFile(file));
				}else{
					employee.setHeadicon("/images/EhXMKTTovOtGipiW784N.jpg");
				}
				employee.setEmployee_pwd(employeeServiceImpl.MD5Util(employeePwd));
				employee.setEmployee_status("激活");
				employee.setCreated_time(new Date().toLocaleString());
				employeeServiceImpl.add(employee);
			} catch (Exception e) {
				return SUCCESS;
			}
		}
		return SUCCESS;
	}
	public String add() throws Exception {
		return "add";
	}
	public String login() throws Exception {
		return "login";
	}
	public String employeelogin() throws Exception {
		if(emp==1){
			return "emplogin";
		}else if(!employeePhone.equals("") && employeePhone!=null && !employeePwd.equals("") && employeePwd!=null){
					employee = employeeServiceImpl.employeelogin(employeePhone,employeeServiceImpl.MD5Util(employeePwd));
			if(employee!=null && !employee.equals("") && !employee.getEmployee_status().equals("冻结")){
					session.setAttribute("employee", employee);
			}else{
				request.setAttribute("msg", "用户名或者密码错误，或者用户没有激活");
				return ERROR;
				}
			}
		return "emplogin";
	}
	public void setEmployeeid(String employeeid) {
		this.employeeid = employeeid;
	}
	public String logout() throws Exception {
		session.invalidate();
		return "login";
	}
	public String updatePwd()throws Exception{
		if (newpwd==null) {
			return "pwd";
		}else{
			employee = (Employee)session.getAttribute("employee");
			if(employee.getEmployee_pwd().equals(employeeServiceImpl.MD5Util(oldpwd))){
				employee.setEmployee_pwd(employeeServiceImpl.MD5Util(newpwd));
				employeeServiceImpl.employeepwdUp(employee);
				prompt="修改密码成功！";
				request.setAttribute("msg", "恭喜你密码修改成功");
			}else{
				request.setAttribute("msg", "密码修改失败");
			}
		}
		return "pwd";
	}
	
	public String password()throws Exception{
		return "pwd";
	}
	
	public String update1()throws Exception{
		try {
			if(file!=null && !file.equals("")){
				employee.setHeadicon(employeeServiceImpl.uploadFile(file));
			}
			if(employee!=null){
				employee = employeeServiceImpl.employeeupdate(employee);
				session.setAttribute("employee", employee);
				prompt="修改成功！";
			}
		} catch (Exception e) {
			return "update";
		}
		return "update";
	}
	
	public String update()throws Exception{
		return "update";
	}
	
	public String list()throws Exception{
		if(pageNumber==0 && pageSize==0){
			return "pages";
		}else{
		
//		rows = employeeServiceImpl.EmpFindPage(pageNumber, pageSize,agencyid);
//		total = employeeServiceImpl.count();
			
			PageByEasyUi<Employee> page=new PageByEasyUi<>();
			page.setPageSize(pageSize);
			page.setPage(pageNumber);
			page=employeeServiceImpl.queryByPage(page, agencyid);
			rows=page.getRows();
			total=page.getTotal();
			
		}
		return "page";
	}
	public String updatestatus(){
		employeeServiceImpl.empUpdateStratus(employeeid);
		return "page";
	}
	public String downstatus(){
		employeeServiceImpl.empDownStratus(employeeid);
		return "page";
	}
	
}
	
