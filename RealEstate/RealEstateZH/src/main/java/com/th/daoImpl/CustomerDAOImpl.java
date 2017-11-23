package com.th.daoImpl;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.th.bean.Buildings;
import com.th.bean.Customer;
import com.th.bean.Room;
import com.th.common.PageByEasyUi;
import com.th.common.Pager4EasyUI;
import com.th.dao.CustomerDAO;

public class CustomerDAOImpl implements CustomerDAO {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Customer queryById(String id) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		String sql = "select * from t_customer where customer_id ='"+id+"'";
		SQLQuery query = session.createSQLQuery(sql).addEntity(Customer.class);
		Customer produ = (Customer)query.uniqueResult();
		session.getTransaction().commit();
		return produ;
	}
	
	@Override
	public void update(Customer t) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.clear();
		session.update(t);
		transaction.commit();
		session.close();
	}

	@Override
	public void add(Customer t) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.clear();
		session.save(t);
		transaction.commit();
		session.close();

	}
	@Override
	public void valid(String id, String valid) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		String sql = "update Customer set customer_status = '"+valid+"'  where customer_id = '"+id+"'";
		
		Query q1=session.createQuery(sql);
		q1.executeUpdate();
		session.getTransaction().commit();

	}

	@Override
	public void delete(Customer customer) {
		Session session = sessionFactory.openSession();
		session.clear();
		session.delete(customer);
		session.close();
		
	}
	
	@Override
	public int count() {
		Session session=sessionFactory.openSession();
		Query query =session.createSQLQuery("select count(*) from t_customer");
		List list=query.list();
		int cnt=Integer.parseInt(list.get(0).toString());
		return cnt;
	}

	@Override
	public List<Customer> FindPage(int pageNumber, int pageSize) {
		List<Customer> list = new ArrayList<Customer>();
		try {
			Session session = sessionFactory.openSession();
			String hql = "from Customer";
			Query query = session.createQuery(hql);
			query.setFirstResult(pageNumber);
			query.setMaxResults(pageSize);
			list = query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public PageByEasyUi<Customer> queryByPage(PageByEasyUi<Customer> page) {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Customer");
		query.setFirstResult(page.getBeginIndex());
		query.setMaxResults(page.getPageSize());
		List<Customer>list=query.list();
		page.setRows(list);
		page.setTotal(count());
		
		return page;
	}

	@Override
	public void updateCustomer(Customer customer) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		String sql = "update Customer set customer_name='"+customer.getCustomer_name()+"',"
				+ "employee_id='"+customer.getEmployee_id()+
				"',customer_gender='"+customer.getCustomer_gender()+
				"',identity_id='"+customer.getIdentity_id()+
				"',customer_phone='"+customer.getCustomer_phone()+
				"',customer_type='"+customer.getCustomer_type()+
				"',customer_status='"+customer.getCustomer_status()+
				"' where customer_id='"+customer.getCustomer_id()+"'";
		
		
		Query q1=session.createQuery(sql);
		q1.executeUpdate();
		
		session.getTransaction().commit();
		
	}

	@Override
	public void updateContract(String customerid, String contract,String archives) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		String sql = "update Customer set customer_contract='"+contract+"',archives='"+archives+"' where customer_id='"+customerid+"'";
				
		
		Query q1=session.createQuery(sql);
		q1.executeUpdate();
		
		session.getTransaction().commit();
		
	}

	@Override
	public Pager4EasyUI<Customer> queryByPage(Pager4EasyUI<Customer> page, String customer_id) {
		try {
			Session session=sessionFactory.openSession();
			Query query=session.createQuery("from Customer where employee_id=:employee_id");
			query.setParameter("employee_id", customer_id);
			query.setFirstResult(page.getBeginIndex());
			query.setMaxResults(page.getPageSize());
			List<Customer> list=query.list();
			page.setRows(list);
			page.setTotal(countById(customer_id));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return page;
	}

	@Override
	public int countById(String id) {
		Session session =sessionFactory.getCurrentSession();
		String sql="select count(customer_id) from t_customer where employee_id='"+id+"'";
		BigInteger cnt=(BigInteger)session.createNativeQuery(sql).uniqueResult();
		return cnt.intValue();
	}

	@Override
	public Customer upfile(Customer customer) {
		Session session = sessionFactory.getCurrentSession();
		String sql="update t_customer  set archives='"+customer.getArchives()+"' where customer_id='"+customer.getCustomer_id()+"'";
		session.createSQLQuery(sql).executeUpdate();
		return customer;
	}

	@Override
	public Customer updatecustomer(Customer customer) {
		Session session = sessionFactory.getCurrentSession();
		String sql="update t_customer  set customer_name='"+customer.getCustomer_name()+"',customer_gender='"+customer.getCustomer_gender()+"',customer_email='"+customer.getCustomer_email()+"',customer_phone='"+customer.getCustomer_phone()+"',customer_address='"+customer.getCustomer_address()+"',identity_id='"+customer.getIdentity_id()+"',together='"+customer.getTogether()+"',customer_type='"+customer.getCustomer_type()+"',created_time='"+new Date().toLocaleString()+"' where customer_id='"+customer.getCustomer_id()+"'";
		session.createSQLQuery(sql).executeUpdate();
		return customer;
	}
}
