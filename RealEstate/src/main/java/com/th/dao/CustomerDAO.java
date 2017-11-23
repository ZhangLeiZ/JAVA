package com.th.dao;

import com.th.bean.Customer;
import com.th.common.PageByEasyUi;
import com.th.common.Pager4EasyUI;

public interface CustomerDAO extends TopDAO<String, Customer>{
	public PageByEasyUi<Customer> queryByPage(PageByEasyUi<Customer> page);
	public void updateCustomer(Customer customer);
	public void updateContract(String customerid,String contract,String archives);
	//激活或冻结
	public void valid(String id, String valid) ;
	//分页
	public Pager4EasyUI<Customer> queryByPage(Pager4EasyUI<Customer> page,String customer_id);
	public int countById(String id);
	//上传电子档案
	public abstract Customer upfile(Customer customer);
	//修改数据
	public abstract Customer updatecustomer(Customer customer);
}
