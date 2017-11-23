package com.th.daoImpl;

import java.util.ArrayList;

import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.th.bean.Agency;
import com.th.bean.Building;
import com.th.bean.Buildings;
import com.th.bean.Employee;
import com.th.bean.House;
import com.th.common.PageByEasyUi;
import com.th.dao.AgencyDAO;
import com.th.dao.EmployeeDAO;

public class EmployeeDAOImpl implements EmployeeDAO {
	private SessionFactory sessionFactory;
	private AgencyDAO agencyDAOImpl; 
	public void setAgencyDAOImpl(AgencyDAO agencyDAOImpl) {
		this.agencyDAOImpl = agencyDAOImpl;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Employee queryById(String id) {
		Session session = sessionFactory.openSession();
		Employee employe = (Employee)session.load(Employee.class, id);
		return employe;
	}
	
	@Override
	public void update(Employee t) {
		Session session = sessionFactory.getCurrentSession();
		session.update(t);
	}

	@Override
	public void add(Employee t) {
		try {
			Session session = sessionFactory.getCurrentSession();
			Agency agency = (Agency)session.load(Agency.class, t.getAngency_id());
			t.setCreated_time(new Date().toLocaleString());
			t.setEmployee_status("冻结");
			t.setAgency(agency);
			session.save(t);
		} catch (Exception e) {
			e.printStackTrace();
		}
		

	}
	@Override
	public void valid(String id, String valid) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Employee employee) {
		Session session = sessionFactory.getCurrentSession();
		session.clear();
		session.delete(employee);
		
	}
	
	@Override
	public int count() {
		Session session=sessionFactory.getCurrentSession();
		Query query =session.createSQLQuery("select count(*) from t_employee");
		List list=query.list();
		int cnt=Integer.parseInt(list.get(0).toString());
		return cnt;
	}

	@Override
	public List<Employee> FindPage(int pageNumber, int pageSize) {
		List<Employee> list = new ArrayList<Employee>();
		try {
			Session session = sessionFactory.openSession();
			String hql = "from Employee";
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
	public Employee employeelogin(String phone, String pwd) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Employee where employee_phone='"+phone+"' and employee_pwd='"+pwd+"'";
		Employee employee = (Employee)session.createQuery(hql).uniqueResult();
		return employee;
	}

	@Override
	public void employeepwdUp(Employee employee) {
		Session session = sessionFactory.getCurrentSession();
		session.update(employee);
	}

	@Override
	public Employee employeeupdate(Employee employee) {
		try {
			Session session = sessionFactory.getCurrentSession();
			String sql="update t_employee  set employee_name='"+employee.getEmployee_name()+"',employee_email='"+employee.getEmployee_email()+"',employee_gender='"+employee.getEmployee_gender()+"',employee_exp='"+employee.getEmployee_exp()+"',employee_qq='"+employee.getEmployee_qq()+"',employee_wechat='"+employee.getEmployee_wechat()+"',employee_phone='"+employee.getEmployee_phone()+"',employee_address='"+employee.getEmployee_address()+"',employee_des='"+employee.getEmployee_des()+"',employee_intro='"+employee.getEmployee_intro()+"' where employee_id='"+employee.getEmployee_id()+"'";
			session.createSQLQuery(sql).executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return employee;
	}

	@Override
	public void employeeadd(Employee employee, String agencyid) {
		Session session = sessionFactory.getCurrentSession();
		session.clear();
		Agency agency = agencyDAOImpl.queryById(agencyid);
		employee.setAgency(agency);
		session.save(employee);
	}

	@Override
	public List<Employee> EmpFindPage(int pageNumber, int pageSize, String id) {
		List<Employee> list = new ArrayList<Employee>();
		try {
			Session session = sessionFactory.openSession();
			String hql = "from Employee where angency_id='"+id+"'";
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
	public void empUpdateStratus(String employeeid) {
		Session session = sessionFactory.getCurrentSession();
		Employee employee = (Employee)session.load(Employee.class, employeeid);
		employee.setEmployee_status("激活");
		session.update(employee);
	}

	@Override
	public void empDownStratus(String employeeid) {
		Session session = sessionFactory.getCurrentSession();
		Employee employee = (Employee)session.load(Employee.class, employeeid);
		employee.setEmployee_status("冻结");
		session.update(employee);
	}

	@Override
	public List<Buildings> Buildinglist(String agencyid) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Buildings where agency_id='"+agencyid+"'";
		Query query = session.createQuery(hql);
		List<Buildings> buildingslist = query.list();
		return buildingslist;
	}

	@Override
	public List<Employee> Hemployee(String buildingsid) {
		Session session = sessionFactory.openSession();
		String hql = "from Employee where buildings_id='"+buildingsid+"'";
		List<Employee> employee = session.createQuery(hql).list();
		return employee;
	}

	@Override
	public List<Employee> listemployee() {
		Session session = sessionFactory.openSession();
		String hql = "from Employee";
		List<Employee> employee = session.createQuery(hql).list();
		return employee;
	}

	@Override
	public PageByEasyUi<Employee> queryByPage(PageByEasyUi<Employee> page,String id) {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Employee where angency_id='"+id+"'");
		query.setFirstResult(page.getBeginIndex());
		query.setMaxResults(page.getPageSize());
		List<Employee>list=query.list();
		 page.setRows(list);
		page.setTotal(count(id));
		
		return page;
	}

	@Override
	public int count(String id) {
		Session session=sessionFactory.getCurrentSession();
		Query query =session.createSQLQuery("select count(*) from t_employee where angency_id='"+id+"'");
		List list=query.list();
		int cnt=Integer.parseInt(list.get(0).toString());
		return cnt;
	}
}
