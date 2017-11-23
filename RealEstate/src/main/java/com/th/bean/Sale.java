package com.th.bean;

import java.io.Serializable;
//销售记录表t_sale
public class Sale implements Serializable{

	private static final long serialVersionUID = 1L;
	private String sale_id;	//编号,UUID，主键
	private String customer_id;	//客户编号，外键字段，来源于t_customer表的id字段 
	private String sale_time;	//销售时间
	private double unit_price;		//销售单价
	private String room_id	;	//房屋编号
	private double discount;	//销售折扣
	private double total_cost;		//销售总价
	private String employee_id;	//员工编号，外键字段，来源于t_employee表的id字段
	private String created_time;	//创建时间
	private String sale_status;	//状态，激活或冻结
	
	private Customer customers;
	private Employee employees;
	
	private Room rooms;
	
	
	
	public Room getRooms() {
		return rooms;
	}
	public void setRooms(Room rooms) {
		this.rooms = rooms;
	}
	public Employee getEmployees() {
		return employees;
	}
	public void setEmployees(Employee employees) {
		this.employees = employees;
	}
	public String getSale_id() {
		return sale_id;
	}
	public Customer getCustomers() {
		return customers;
	}
	public void setCustomers(Customer customers) {
		this.customers = customers;
	}
	public void setSale_id(String sale_id) {
		this.sale_id = sale_id;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public String getSale_time() {
		return sale_time;
	}
	public void setSale_time(String sale_time) {
		this.sale_time = sale_time;
	}
	public double getUnit_price() {
		return unit_price;
	}
	public void setUnit_price(Double unit_price) {
		this.unit_price = unit_price;
	}
	public String getRoom_id() {
		return room_id;
	}
	public void setRoom_id(String room_id) {
		this.room_id = room_id;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(Double discount) {
		this.discount = discount;
	}
	public double getTotal_cost() {
		return total_cost;
	}
	public void setTotal_cost(Double total_cost) {
		this.total_cost = total_cost;
	}
	public String getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(String employee_id) {
		this.employee_id = employee_id;
	}
	public String getCreated_time() {
		return created_time;
	}
	public void setCreated_time(String created_time) {
		this.created_time = created_time;
	}
	public String getSale_status() {
		return sale_status;
	}
	public void setSale_status(String sale_status) {
		this.sale_status = sale_status;
	}

}
