package com.th.bean;

import java.io.Serializable;

public class Mission implements Serializable{

	private static final long serialVersionUID = -6582857390215655692L;
	//8.绩效表t_mission			
	private String mission_id;		//编号,UUID，主键
	private int quantity;			//员工任务量
	private int monthes;			//月份
	private String employee_id;			//员工编号，外键字段，来源于t_employee表的id字段
	private double bonus_percent;	//销售提成百分比
	
	private Employee employee;
	
	
	public String getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(String employee_id) {
		this.employee_id = employee_id;
	}
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	public String getMission_id() {
		return mission_id;
	}
	public void setMission_id(String mission_id) {
		this.mission_id = mission_id;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getMonthes() {
		return monthes;
	}
	public void setMonthes(int monthes) {
		this.monthes = monthes;
	}
	
	public double getBonus_percent() {
		return bonus_percent;
	}
	public void setBonus_percent(double bonus_percent) {
		this.bonus_percent = bonus_percent;
	}

}
