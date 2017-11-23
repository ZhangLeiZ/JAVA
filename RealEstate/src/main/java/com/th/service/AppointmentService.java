package com.th.service;

import com.th.bean.Appointment;

import com.th.bean.Comment;
import com.th.common.PageByEasyUi;
import com.th.bean.Employee;
import com.th.bean.House;
import com.th.bean.User;
import com.th.common.PageByEasyUi;

public interface AppointmentService extends TopService<String, Appointment>{
	
	public PageByEasyUi<Appointment> queryByPage(PageByEasyUi<Appointment> page);
	
	
	public Appointment appointmentFind(String employee_id);
	
	public User userFind(String userid);
	
	public House houseFind(String houseid);
	
	public Employee employeeFind(String empid);
	
	public PageByEasyUi<Appointment> pageById(PageByEasyUi<Appointment> page, String userId);
	
	public void delete(String id);
	public int countByid(String employee_id); 
	//修改数据
	public abstract Appointment updateappointment(Appointment appointment);
	public PageByEasyUi<Appointment> queryByPage(PageByEasyUi<Appointment> page,String employee_id);
}
