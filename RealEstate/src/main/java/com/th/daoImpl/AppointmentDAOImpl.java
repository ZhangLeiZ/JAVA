package com.th.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.th.bean.Appointment;
import com.th.bean.Building;
import com.th.bean.Buildings;
import com.th.bean.Employee;
import com.th.bean.History;

import com.th.bean.House;
import com.th.bean.User;
import com.th.common.PageByEasyUi;
import com.th.dao.AppointmentDAO;

public class AppointmentDAOImpl implements AppointmentDAO {
	
	private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public Appointment queryById(String id) {		
		return null;
	}
	public void update(Appointment t) {
	
	}
	public void valid(String id, String valid) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		String sql = "update Appointment set appointment_status = '"+valid+"'  where appointment_id = '"+id+"'";
		Query q1=session.createQuery(sql);
		q1.executeUpdate();
		session.getTransaction().commit();
	}
	
	public void delete(Appointment appointment) {
		
	}
	
	public int count() {
		Session session=sessionFactory.openSession();
		Query query =session.createSQLQuery("select count(*) from t_appointment");
		List list=query.list();
		int cnt=Integer.parseInt(list.get(0).toString());
		return cnt;
	}
	public List<Appointment> FindPage(int pageNumber, int pageSize) {
		List<Appointment> list = new ArrayList<Appointment>();
		try {
			Session session = sessionFactory.openSession();
			String hql = "from Appointment";
			Query query = session.createQuery(hql);
			query.setFirstResult(pageNumber);          
			query.setMaxResults(pageSize);
			list = query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	public void add(Appointment appointment) {
		Session session = sessionFactory.getCurrentSession();
		session.save(appointment);
	}
	public int countById(String id) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createSQLQuery("select count(appointment_id) from t_appointment where user_id='"+id+"'");
		List list = query.list();
		int cnt = Integer.parseInt(list.get(0).toString());
		return cnt;    
	}
	public PageByEasyUi<Appointment> pageById(PageByEasyUi<Appointment> page, String userId) {
		Session session = sessionFactory.openSession();
		String hql = "from Appointment where user_id=:user_id";
		Query query = session.createQuery(hql);
		query.setParameter("user_id",userId);
		query.setFirstResult(page.getBeginIndex()); 
		query.setMaxResults(page.getPageSize());  
		List<Appointment> list = query.list();
		page.setTotal(countById(userId));         
		page.setRows(list);             
		return page;    
	}
	
	
	@Override
	public PageByEasyUi<Appointment> queryByPage(PageByEasyUi<Appointment> page) {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Appointment");
		query.setFirstResult(page.getBeginIndex());
		query.setMaxResults(page.getPageSize());
		List<Appointment> list=query.list();
		page.setTotal(count());
		page.setRows(list);
		return page;
	}
	@Override
	public void delete(String id){
		Session session = sessionFactory.getCurrentSession();
		Appointment appointment = session.get(Appointment.class, id);
		session.delete(appointment);
	}
		
	public Appointment appointmentFind(String employee_id) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		String sql = "select * from t_appointment where employee_id ='"+employee_id+"'";
		SQLQuery query = session.createSQLQuery(sql).addEntity(Appointment.class);
		Appointment produ = (Appointment)query.uniqueResult();
		session.getTransaction().commit();
		return produ;
	}
	@Override
	public User userFind(String userid) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		String sql = "select * from t_user where user_id ='"+userid+"'";
		SQLQuery query = session.createSQLQuery(sql).addEntity(User.class);
		User produ = (User)query.uniqueResult();
		session.getTransaction().commit();
		return produ;
	}
	@Override
	public House houseFind(String houseid) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		String sql = "select * from t_house where house_id ='"+houseid+"'";
		SQLQuery query = session.createSQLQuery(sql).addEntity(House.class);
		House produ = (House)query.uniqueResult();
		session.getTransaction().commit();
		return produ;
	}
	@Override
	public Employee employeeFind(String empid) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		String sql = "select * from t_employee where employee_name ='"+empid+"'";
		SQLQuery query = session.createSQLQuery(sql).addEntity(Employee.class);
		Employee produ = (Employee)query.uniqueResult();
		session.getTransaction().commit();
		return produ;
	}
	@Override
	public int countByid(String employee_id) {
		Session session = sessionFactory.openSession();
		Query query = session.createSQLQuery("select count(appointment_id) from t_appointment where employee_id='"+employee_id+"'");
		List list = query.list();
		int cnt = Integer.parseInt(list.get(0).toString());
		return cnt;
	}
	
	@Override
	public Appointment updateappointment(Appointment appointment) {
		Session session = sessionFactory.getCurrentSession();
		String sql="update t_appointment  set arrive_time='"+appointment.getArrive_time()+"',app_status='"+appointment.getApp_status()+"' where appointment_id='"+appointment.getAppointment_id()+"'";
		session.createSQLQuery(sql).executeUpdate();
		return appointment;
	}
	
	@Override
	public PageByEasyUi<Appointment> queryByPage(PageByEasyUi<Appointment> page, String employee_id) {
		try {
			Session session = sessionFactory.openSession();
			String hql = "from Appointment where employee_id=:employee_id";
			Query query = session.createQuery(hql);
			query.setParameter("employee_id",employee_id);
			query.setFirstResult(page.getBeginIndex()); 
			query.setMaxResults(page.getPageSize());  
			List<Appointment> list = query.list();
			page.setTotal(countByid(employee_id));         
			page.setRows(list);    
		} catch (Exception e) {
			e.printStackTrace();
		}
		return page;   
	}
	
	 
}
