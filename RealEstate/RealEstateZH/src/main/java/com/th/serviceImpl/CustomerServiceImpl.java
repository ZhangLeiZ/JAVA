package com.th.serviceImpl;

import java.util.List;

import com.th.bean.Customer;
import com.th.common.PageByEasyUi;
import com.th.common.Pager4EasyUI;
import com.th.dao.CustomerDAO;
import com.th.service.CustomerService;

public class CustomerServiceImpl implements CustomerService{

	private CustomerDAO customerDAOImpl;
	
	public void setCustomerDAOImpl(CustomerDAO customerDAOImpl) {
		this.customerDAOImpl = customerDAOImpl;
	}

	@Override
	public Customer queryById(String id) {
		
		return customerDAOImpl.queryById(id);
	}

	@Override
	public void delete(Customer t) {
		customerDAOImpl.delete(t);
		
	}

	@Override
	public void update(Customer t) {
		customerDAOImpl.update(t);
		
	}

	@Override
	public void add(Customer t) {
		customerDAOImpl.add(t);
		
	}

	
	@Override
	public void valid(String id, String valid) {
		customerDAOImpl.valid(id, valid);
		
	}

	@Override
	public int count() {
		
		return customerDAOImpl.count();
	}

	@Override
	public List<Customer> FindPage(int pageNumber, int pageSize) {
		
		return customerDAOImpl.FindPage(pageNumber, pageSize);
	}

	@Override
	public PageByEasyUi<Customer> queryByPage(PageByEasyUi<Customer> page) {
		
		return customerDAOImpl.queryByPage(page);
	}

	@Override
	public void updateCustomer(Customer customer) {
		customerDAOImpl.updateCustomer(customer);
		
	}

	@Override
	public void updateContract(String customerid, String contract,String archives) {
		customerDAOImpl.updateContract(customerid, contract,archives);
	}

	@Override
	public Pager4EasyUI<Customer> queryByPage(Pager4EasyUI<Customer> page, String customer_id) {
		return customerDAOImpl.queryByPage(page, customer_id);
	}

	@Override
	public int countById(String id) {
		return customerDAOImpl.countById(id);
	}

	@Override
	public Customer upfile(Customer customer) {
		return customerDAOImpl.upfile(customer);
	}

	@Override
	public Customer updatecustomer(Customer customer) {
		return customerDAOImpl.updatecustomer(customer);
	}

}
