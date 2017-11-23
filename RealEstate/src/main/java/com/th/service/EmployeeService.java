package com.th.service;

import java.io.File;
import java.util.List;
import java.util.Map;

import com.th.bean.Building;
import com.th.bean.Buildings;
import com.th.bean.Employee;
import com.th.common.PageByEasyUi;

public interface EmployeeService extends TopService<String, Employee>{
	public abstract String uploadFile(File file);
	public abstract Employee employeelogin(String phone,String pwd);
	public abstract String MD5Util(String str);
	public abstract String Deciphering(String str);
	public abstract void employeepwdUp(Employee employee);
	public abstract Employee employeeupdate(Employee employee);
	public abstract void employeeadd(Employee employee,String agencyid);
	public List<Employee> EmpFindPage(int pageNumber,int pageSize,String id);
	public abstract void empUpdateStratus(String employeeid);
	public abstract void empDownStratus(String employeeid);
	public abstract List<Buildings> Buildinglist(String agencyid);
	public abstract List<Employee> Hemployee(String buildingsid);
	public abstract List<Employee> listemployee();
	public abstract Employee EmpMap(List listemp);
	
	public PageByEasyUi<Employee> queryByPage(PageByEasyUi<Employee> page,String id);
	public int count(String id) ;
	
}
