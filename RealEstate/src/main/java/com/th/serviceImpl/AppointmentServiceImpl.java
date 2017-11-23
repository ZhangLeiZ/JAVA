package com.th.serviceImpl;

import java.util.List;


import com.th.bean.Appointment;
import com.th.common.PageByEasyUi;
import com.th.bean.Employee;
import com.th.bean.House;
import com.th.bean.User;
import com.th.common.PageByEasyUi;
import com.th.dao.AppointmentDAO;
import com.th.service.AppointmentService;

public class AppointmentServiceImpl implements AppointmentService{

	private AppointmentDAO appointmentDAO; 
	
	public AppointmentDAO getAppointmentDAO() {
		return appointmentDAO;
	}
	public void setAppointmentDAO(AppointmentDAO appointmentDAO) {
		this.appointmentDAO = appointmentDAO;
	}


	public Appointment queryById(String id) {
		// TODO Auto-generated method stub
		return null;
	}
	public void update(Appointment t) {
		// TODO Auto-generated method stub
	}
	public void delete(Appointment t) {
		// TODO Auto-generated method stub	
	}
	public void valid(String id, String valid) {
		appointmentDAO.valid(id, valid);
	}
	public int count() {
		return 0;
	}
	public List<Appointment> FindPage(int pageNumber, int pageSize) {
		return null;
	}

	
	public void add(Appointment t) {
		appointmentDAO.add(t);
	}
	public PageByEasyUi<Appointment> pageById(PageByEasyUi<Appointment> page, String userId) {
		return appointmentDAO.pageById(page, userId);
	}
	public void delete(String id){
		appointmentDAO.delete(id);
	}

	
	
	@Override
	public PageByEasyUi<Appointment> queryByPage(PageByEasyUi<Appointment> page) {
		
		return appointmentDAO.queryByPage(page);
	}

	@Override
	public Appointment appointmentFind(String employee_id) {
		
		return appointmentDAO.appointmentFind(employee_id);
	}

	@Override
	public User userFind(String userid) {
		
		return appointmentDAO.userFind(userid);
	}

	@Override
	public House houseFind(String houseid) {
		
		return appointmentDAO.houseFind(houseid);
	}

	@Override
	public Employee employeeFind(String empid) {
		
		return appointmentDAO.employeeFind(empid);
	}
	@Override
	public int countByid(String employee_id) {
		return appointmentDAO.countByid(employee_id);
	}
	@Override
	public Appointment updateappointment(Appointment appointment) {
		return appointmentDAO.updateappointment(appointment);
	}
	@Override
	public PageByEasyUi<Appointment> queryByPage(PageByEasyUi<Appointment> page, String employee_id) {
		return appointmentDAO.queryByPage(page, employee_id);
	}

}
