package com.th.bean;

import java.io.Serializable;
import java.util.Set;
//客户表t_customer

public class Customer implements Serializable{

	private static final long serialVersionUID = 1L;
	private String customer_id;	//编号
	private String customer_name;//姓名
	private String customer_gender;//性别	
	private String birthday;//生日
	private String identity_id;//身份证号
	private String customer_email;//邮箱
	private String customer_phone;//手机号
	private String customer_address;//联系地址
	private String customer_type;//客户类型
	private String together;//共同购房人姓名
	private String customer_contract;//电子版购房合同路径
	private String archives;//zip版电子档案路径
	private String created_time;//创建时间
	private String customer_status;//状态，激活或冻结
	private String employee_id;//员工表的外键
	
	private Employee employee;
	private Set<Sale> saleSet;
	private Set<House> houseSet;
	
	public Set<Sale> getSaleSet() {
		return saleSet;
	}
	public void setSaleSet(Set<Sale> saleSet) {
		this.saleSet = saleSet;
	}
	public Set<House> getHouseSet() {
		return houseSet;
	}
	public void setHouseSet(Set<House> houseSet) {
		this.houseSet = houseSet;
	}
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	public String getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(String employee_id) {
		this.employee_id = employee_id;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public String getCustomer_name() {
		return customer_name;
	}
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}
	public String getCustomer_gender() {
		return customer_gender;
	}
	public void setCustomer_gender(String customer_gender) {
		this.customer_gender = customer_gender;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getIdentity_id() {
		return identity_id;
	}
	public void setIdentity_id(String identity_id) {
		this.identity_id = identity_id;
	}
	public String getCustomer_email() {
		return customer_email;
	}
	public void setCustomer_email(String customer_email) {
		this.customer_email = customer_email;
	}
	public String getCustomer_phone() {
		return customer_phone;
	}
	public void setCustomer_phone(String customer_phone) {
		this.customer_phone = customer_phone;
	}
	public String getCustomer_address() {
		return customer_address;
	}
	public void setCustomer_address(String customer_address) {
		this.customer_address = customer_address;
	}
	public String getCustomer_type() {
		return customer_type;
	}
	public void setCustomer_type(String customer_type) {
		this.customer_type = customer_type;
	}
	public String getTogether() {
		return together;
	}
	public void setTogether(String together) {
		this.together = together;
	}
	public String getCustomer_contract() {
		return customer_contract;
	}
	public void setCustomer_contract(String customer_contract) {
		this.customer_contract = customer_contract;
	}
	public String getArchives() {
		return archives;
	}
	public void setArchives(String archives) {
		this.archives = archives;
	}
	public String getCreated_time() {
		return created_time;
	}
	public void setCreated_time(String created_time) {
		this.created_time = created_time;
	}
	public String getCustomer_status() {
		return customer_status;
	}
	public void setCustomer_status(String customer_status) {
		this.customer_status = customer_status;
	}

}
