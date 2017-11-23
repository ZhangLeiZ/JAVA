package com.th.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.th.bean.Agency;
import com.th.bean.Employee;
import com.th.bean.Manager;
import com.th.dao.ManagerDAO;

public class ManagerDAOImpl implements ManagerDAO {

	private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Manager queryById(String id) {
		Session session = sessionFactory.getCurrentSession();
		Manager manager = (Manager)session.get(Manager.class, id);
		return manager;
	}

	@Override
	public void delete(Manager t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Manager t) {
		try {
			Session session = sessionFactory.getCurrentSession();
			session.update(t);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void add(Manager t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void valid(String id, String valid) {
		Session session = sessionFactory.getCurrentSession();
	    Manager manager = (Manager)session.get(Manager.class, id);
	    manager.setManager_password(valid);
	    session.update(manager);
	}

	@Override
	public int count() {
		return 0;
	}

	@Override
	public List<Manager> FindPage(int pageNumber, int pageSize) {
		return null;
	}
	@Override 
	public List<Object> AgencyFindByPage(int pageNumber, int pageSize, String struta) {
		Session session = sessionFactory.openSession();
		String hql = "from Agency where agency_status='"+struta+"'";
		Query query = session.createQuery(hql);
		query.setFirstResult(pageNumber);
		query.setMaxResults(pageSize);
		List<Object> agencyList = query.list();
		return agencyList;
	}
	@Override
	public void ExamineAndverify(String struta,String id) {
		Session session = sessionFactory.getCurrentSession();
		Agency agency = (Agency)session.load(Agency.class, id);
		if(id!=null){
			agency.setAgency_status(struta);
			session.update(agency);
		}
	}
	@Override
	public Manager Managerlogin(String account, String pwd) {
		Manager manager=null;
		try {
			Session session = sessionFactory.getCurrentSession();
			String hql = "from Manager where manager_account='"+account+"' and manager_password='"+pwd+"'";
			 manager = (Manager)session.createQuery(hql).uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return manager;
	}
	@Override
	public int managerCount(String sql) {
		Session session=sessionFactory.getCurrentSession();
		Query query =session.createSQLQuery(sql);
		List list=query.list();
		int cnt=Integer.parseInt(list.get(0).toString());
		return cnt;
	}
	@Override
	public void StatusUp(String sql) {
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createSQLQuery(sql);
			query.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	@Override
	public List<Object> EmployeeFindByPage(int pageNumber, int pageSize, String struta) {
		Session session = sessionFactory.openSession();
		String hql = "from Employee where employee_status='"+struta+"'";
		Query query = session.createQuery(hql);
		query.setFirstResult(pageNumber);
		query.setMaxResults(pageSize);
		List<Object> employeeList = query.list();
		return employeeList;
	}
	@Override
	public List<Object> UserFindByPage(int pageNumber, int pageSize, String struta) {
		Session session = sessionFactory.openSession();
		String hql = "from User where user_status='"+struta+"'";
		Query query = session.createQuery(hql);
		query.setFirstResult(pageNumber);
		query.setMaxResults(pageSize);
		List<Object> userList = query.list();
		return userList;
	}
	@Override
	public List<Object> ActivityFindByPage(int pageNumber, int pageSize, String struta) {
		Session session = sessionFactory.openSession();
		String hql = "from Activity where activity_status='"+struta+"'";
		Query query = session.createQuery(hql);
		query.setFirstResult(pageNumber);
		query.setMaxResults(pageSize);
		List<Object> activityList = query.list();
		return activityList;
	}
	
	@Override
	public List<Object> ArticleFindByPage(int pageNumber, int pageSize, String struta) {
		Session session = sessionFactory.openSession();
		String hql = "from Article where article_status='"+struta+"'";
		Query query = session.createQuery(hql);
		query.setFirstResult(pageNumber);
		query.setMaxResults(pageSize);
		List<Object> articleList = query.list();
		return articleList;
	}
	
}
