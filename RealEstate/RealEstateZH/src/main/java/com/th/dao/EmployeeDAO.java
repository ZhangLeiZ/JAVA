package com.th.dao;

import java.util.List;
import java.util.Map;

import com.th.bean.Building;
import com.th.bean.Buildings;
import com.th.bean.Employee;
import com.th.common.PageByEasyUi;

public interface EmployeeDAO extends TopDAO<String, Employee>{

	public abstract Employee employeelogin(String phone,String pwd);
	public abstract void employeepwdUp(Employee employee);
	public abstract Employee employeeupdate(Employee employee);
	public abstract void employeeadd(Employee employee,String agencyid);
	public List<Employee> EmpFindPage(int pageNumber,int pageSize,String id);
	public abstract void empUpdateStratus(String employeeid);
	public abstract void empDownStratus(String employeeid);
	public abstract List<Buildings> Buildinglist(String agencyid);
	public abstract List<Employee> Hemployee(String buildingsid);
	public abstract List<Employee> listemployee();
	
	
	public PageByEasyUi<Employee> queryByPage(PageByEasyUi<Employee> page,String id);
	public int count(String id) ;
}
