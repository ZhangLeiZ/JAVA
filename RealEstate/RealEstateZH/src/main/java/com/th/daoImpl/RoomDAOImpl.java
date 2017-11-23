package com.th.daoImpl;

import java.util.List;

import javax.persistence.Entity;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.th.bean.Building;
import com.th.bean.Buildings;
import com.th.bean.House;
import com.th.bean.Room;
import com.th.common.PageByEasyUi;
import com.th.dao.RoomDAO;

public class RoomDAOImpl implements RoomDAO {

	private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Room queryById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(Room t) {
	
		
	}

	@Override
	public void update(Room t) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		String sql = "update Room set house_id='"+t.getHouse_id()+
				"',room_name='"+t.getRoom_name()+
				"',sale_status='"+t.getSale_status()+
				"' where room_id='"+t.getRoom_id()+"'";
		
		
		Query q1=session.createQuery(sql);
		q1.executeUpdate();
		
		session.getTransaction().commit();
	}

	@Override
	public void add(Room t) {
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		session.clear();
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
		Query query=session.createSQLQuery("select count(*) from t_room");
		List list=query.list();
		int cnt=Integer.parseInt(list.get(0).toString());
		return cnt;
	}
	
	

	@Override
	public List<Room> FindPage(int pageNumber, int pageSize) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public PageByEasyUi<Room> queryByPage(PageByEasyUi<Room> page) {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Room");
		query.setFirstResult(page.getBeginIndex());
		query.setMaxResults(page.getPageSize());
		List<Room> list=query.list();
		page.setRows(list);
		page.setTotal(count());
		
		return page;
	}
	@Override
	public List<House> houseList() {
		Session session = sessionFactory.openSession();
		String sql = "from House";
		Query query = session.createQuery(sql);
		List<House> list = query.list();
		
		return list;
	}
	@Override
	public List<Building> buildingList() {
		Session session = sessionFactory.openSession();
		String sql = "from Building";
		Query query = session.createQuery(sql);
		List<Building> list = query.list();
		
		return list;
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
	public java.util.List<Building> buildingList(String buildingsid) {
		Session session = sessionFactory.openSession();
		String sql = "from Building where buildings_id='"+buildingsid+"'";
		Query query = session.createQuery(sql);
		List<Building> list = query.list();
		return list;
	}
	@Override
	public Building queryByIdBuilding(String id) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		String sql = "select * from t_building where building_id ='"+id+"'";
		SQLQuery query = session.createSQLQuery(sql).addEntity(Building.class);
		Building produ = (Building)query.uniqueResult();
		session.getTransaction().commit();
		return produ;
	}
	@Override
	public boolean checkRoom(String buildingid, String roomname) {
		
		Session session = sessionFactory.openSession();
		String sql = "from Room where building_id='"+buildingid+"' and room_name='"+roomname+"'";
		Query query = session.createQuery(sql);
		List<Room> list = query.list();
		
		if(list.size()>0){
			return true;
		}else{
			return false;
		}
		
	}
	@Override
	public void updateStastus(Room room) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		String sql = "update Room set sale_status='"+room.getSale_status()+"' where room_id='"+room.getRoom_id()+"'";
		
		Query q1=session.createQuery(sql);
		q1.executeUpdate();
		
		session.getTransaction().commit();
		
	}
	@Override
	public PageByEasyUi<Room> queryRoom(PageByEasyUi<Room> page, String buildingid, String room_name,
			String sale_status) {
		
			try {
				Session session=sessionFactory.openSession();
				Query query=session.createQuery("from Room where  (building_id='"+buildingid+"' and  room_name LIKE '%"+room_name+"%') or sale_status LIKE '%"+sale_status+"%'");
				query.setFirstResult(page.getBeginIndex());
				query.setMaxResults(page.getPageSize());
				List<Room>list=query.list();
				 page.setRows(list);
				page.setTotal(count(buildingid));
			} catch (Exception e) {
				e.printStackTrace();
			}
		
			
		
		return page;
	}
	@Override
	public int count(String buildingid) {
		Session session=sessionFactory.openSession();
		Query query=session.createSQLQuery("select count(*) from t_room where building_id='"+buildingid+"'");
		List list=query.list();
		int cnt=Integer.parseInt(list.get(0).toString());
		return cnt;
	}
	
	@Override
	public int roomCount1() {
		Session session=sessionFactory.openSession();
		Query query=session.createSQLQuery("select count(*) from t_room where sale_status='待售'");
		List list=query.list();
		int cnt=Integer.parseInt(list.get(0).toString());
		return cnt;
	}
	@Override
	public int roomCount2() {
		Session session=sessionFactory.openSession();
		Query query=session.createSQLQuery("select count(*) from t_room where sale_status='销售中'");
		List list=query.list();
		int cnt=Integer.parseInt(list.get(0).toString());
		return cnt;
	}
	@Override
	public int roomCount3() {
		Session session=sessionFactory.openSession();
		Query query=session.createSQLQuery("select count(*) from t_room where sale_status='已预定'");
		List list=query.list();
		int cnt=Integer.parseInt(list.get(0).toString());
		return cnt;
	}
	@Override
	public int roomCount4() {
		Session session=sessionFactory.openSession();
		Query query=session.createSQLQuery("select count(*) from t_room where sale_status='已售'");
		List list=query.list();
		int cnt=Integer.parseInt(list.get(0).toString());
		return cnt;
	}
	@Override
	public int roomCount5() {
		Session session=sessionFactory.openSession();
		Query query=session.createSQLQuery("select count(*) from t_room where sale_status='保留'");
		List list=query.list();
		int cnt=Integer.parseInt(list.get(0).toString());
		return cnt;
	}
	
}
