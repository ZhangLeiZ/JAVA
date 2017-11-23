package com.th.daoImpl;

import java.util.ArrayList;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.th.bean.Building;
import com.th.bean.Buildings;
import com.th.bean.Room;
import com.th.common.PageByEasyUi;
import com.th.dao.BuildingDAO;

public class BuildingDAOImpl implements BuildingDAO{
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Building queryById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(Building building) {
		Session session=sessionFactory.openSession();
		session.clear();
		session.delete(building);
		session.close();
	}

	@Override
	public void update(Building t) {
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		session.clear();
		session.update(t);
		transaction.commit();
		session.close();
	}

	@Override
	public void add(Building t) {
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		session.clear();
		session.save(t);
		transaction.commit();
		session.close();
	}

	@Override
	public void valid(String id, String valid) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		String sql = "update Building set building_status = '"+valid+"'  where building_id = '"+id+"'";
		
		Query q1=session.createQuery(sql);
		q1.executeUpdate();
		
		session.getTransaction().commit();
		
	}

	@Override
	public int count() {
		Session session=sessionFactory.openSession();
		Query query=session.createSQLQuery("select count(*) from t_building");
		List list=query.list();
		int cnt=Integer.parseInt(list.get(0).toString());
		return cnt;
	}

	
	//select * from t_building b left  join t_buildings d  on b.buildings_id=d.buildings_id LIMIT 0,4

	
	@Override
	public List<Building> FindPage(int pageNumber, int pageSize) {
		List<Building> list=new ArrayList<Building>();
		try {
			Session session=sessionFactory.openSession();
			String hql="from Building b left  join Buildings d  on b.buildings_id=d.buildings_id";
			Query query=session.createQuery(hql);
			query.setFirstResult(pageNumber);
			query.setMaxResults(pageSize);
			list=query.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		}	
		return list;
	}

	@Override
	public PageByEasyUi<Building> queryByPage(PageByEasyUi<Building> page) {
		
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Building");
		query.setFirstResult(page.getBeginIndex());
		query.setMaxResults(page.getPageSize());
		List<Building>list=query.list();
		 page.setRows(list);
		page.setTotal(count());
		
		return page;
	}

	@Override
	public java.util.List<Buildings> List() {
		Session session = sessionFactory.openSession();
		String sql = "from Buildings";
		Query query = session.createQuery(sql);
		List<Buildings> list = query.list();
		
		return list;
	}

	@Override
	public PageByEasyUi<Room> queryRoom(PageByEasyUi<Room> page, String buildingid) {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Room where building_id='"+buildingid+"'");
		query.setFirstResult(page.getBeginIndex());
		query.setMaxResults(page.getPageSize());
		List<Room>list=query.list();
		 page.setRows(list);
		page.setTotal(counts());
		
		return page;
	}

	@Override
	public int counts() {
		Session session=sessionFactory.openSession();
		Query query=session.createSQLQuery("select count(*) from t_room");
		List list=query.list();
		int cnt=Integer.parseInt(list.get(0).toString());
		return cnt;
	}

	@Override
	public Room roomFind(String buildingid) {
		
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		String sql = "select * from t_room where building_id ='"+buildingid+"'";
		SQLQuery query = session.createSQLQuery(sql).addEntity(Room.class);
		Room produ = (Room)query.uniqueResult();
		session.getTransaction().commit();
		return produ;
	}

	@Override
	public PageByEasyUi<Building> queryByPageFind(PageByEasyUi<Building> page, String building_name) {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Building where  concat(building_name, ',',total_floor,',',building_status) like '%"+building_name+"%'");
		query.setFirstResult(page.getBeginIndex());
		query.setMaxResults(page.getPageSize());
		List<Building>list=query.list();
		 page.setRows(list);
		page.setTotal(count());
		
		return page;
	}
}
