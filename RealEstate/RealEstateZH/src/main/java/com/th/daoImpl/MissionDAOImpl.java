package com.th.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.th.bean.Buildings;
import com.th.bean.Employee;
import com.th.bean.Mission;
import com.th.bean.Room;
import com.th.common.PageByEasyUi;
import com.th.common.Pager4EasyUI;
import com.th.dao.MissionDAO;

public class MissionDAOImpl implements MissionDAO {

	private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public Mission queryById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(Mission t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Mission t) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.clear();
		session.update(t);
		transaction.commit();
		session.close();
	}

	@Override
	public void add(Mission t) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
//		session.clear();
		session.save(t);
		transaction.commit();
		session.close();
		
	}

	@Override
	public void valid(String id, String valid) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int count() {
		Session session=sessionFactory.openSession();
		Query query =session.createSQLQuery("select count(*) from t_misson");
		List list=query.list();
		int cnt=Integer.parseInt(list.get(0).toString());
		return cnt;
	}

	@Override
	public List<Mission> FindPage(int pageNumber, int pageSize) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public PageByEasyUi<Mission> queryByPage(PageByEasyUi<Mission> page) {
		
			Session session=sessionFactory.openSession();
			Query query=session.createQuery("from Mission");
			query.setFirstResult(page.getBeginIndex());
			query.setMaxResults(page.getPageSize());
			List<Mission>list=query.list();
			 page.setRows(list);
			page.setTotal(count());
		
		return page;
	}
	@Override
	public List<Employee> listEmp() {
		Session session = sessionFactory.openSession();
		String sql = "from Employee";
		Query query = session.createQuery(sql);
		List<Employee> list = query.list();
		
		return list;
	}
	@Override
	public Mission missionFind(String emp) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		String sql = "select * from t_employee where employee_name like '%"+emp+"%'";
		SQLQuery query = session.createSQLQuery(sql).addEntity(Mission.class);
		Mission produ = (Mission)query.uniqueResult();
		session.getTransaction().commit();
		return produ;
	}
	@Override
	public PageByEasyUi<Mission> queryByPage(PageByEasyUi<Mission> page, String missid) {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Mission where mission_id='"+missid+"'");
		query.setFirstResult(page.getBeginIndex());
		query.setMaxResults(page.getPageSize());
		List<Mission> list=query.list();
		 page.setRows(list);
		page.setTotal(count());
	
	return page;
	}
	
	@Override
	public int countByid(String employee_id) {
		Session session = sessionFactory.openSession();
		Query query = session.createSQLQuery("select count(mission_id) from t_misson where employee_id='"+employee_id+"'");
		List list = query.list();
		int cnt = Integer.parseInt(list.get(0).toString());
		return cnt; 
	}
	@Override
	public Pager4EasyUI<Mission> queryByPage(Pager4EasyUI<Mission> page, String employee_id) {
		try {
			Session session = sessionFactory.openSession();
			String hql = "from Mission where employee_id=:employee_id";
			Query query = session.createQuery(hql);
			query.setParameter("employee_id",employee_id);
			query.setFirstResult(page.getBeginIndex()); 
			query.setMaxResults(page.getPageSize());  
			List<Mission> list = query.list();
			page.setTotal(countByid(employee_id));         
			page.setRows(list);    
		} catch (Exception e) {
			e.printStackTrace();
		}
		return page; 
	}
}
