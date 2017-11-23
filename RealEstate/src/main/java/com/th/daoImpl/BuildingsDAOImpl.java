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
import com.th.bean.Img;
import com.th.common.PageByEasyUi;
import com.th.dao.BuildingsDAO;

public class BuildingsDAOImpl implements BuildingsDAO {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Buildings queryById(String id) {
		Session session = sessionFactory.getCurrentSession();
		Buildings buildings = (Buildings)session.get(Buildings.class, id);
		return buildings;
	}
	
	@Override
	public void update(Buildings t) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		String sql = "update Buildings set buildings_name='"+
		t.getBuildings_name()+"',buildings_logo='"+t.getBuildings_logo()
		+"',buildings_area='"+t.getBuildings_area()+
		"',avg_price='"+t.getAvg_price()+
		"',house_type='"+t.getHouse_type()+
		"',company='"+t.getCompany()+
		"',buildings_status='"+t.getBuildings_status()+
		"' where buildings_id='"+t.getBuildings_id()+"'";
		
		Query q1=session.createQuery(sql);
		q1.executeUpdate();
		
		session.getTransaction().commit();
	}

	@Override
	public void add(Buildings t) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
	//	session.clear();
		session.save(t);
		transaction.commit();
		session.close();

	}
	@Override
	public void valid(String id, String valid) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		String sql = "update Buildings set buildings_status = '"+valid+"'  where buildings_id = '"+id+"'";
		
		Query q1=session.createQuery(sql);
		q1.executeUpdate();
		
		session.getTransaction().commit();

	}

	@Override
	public void delete(Buildings buildings) {
		Session session = sessionFactory.openSession();
		session.clear();
		session.delete(buildings);
		session.close();
		
	}
	
	@Override
	public int count() {
		Session session=sessionFactory.openSession();
		Query query =session.createSQLQuery("select count(*) from t_buildings");
		List list=query.list();
		int cnt=Integer.parseInt(list.get(0).toString());
		return cnt;
	}

	@Override
	public List<Buildings> FindPage(int pageNumber, int pageSize) {
		List<Buildings> list = new ArrayList<Buildings>();
		try {
			Session session = sessionFactory.openSession();
			String hql = "from Buildings";
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
	public List<Buildings> findByPage(int currentPage, int pageSize) {
		List<Buildings> list=new ArrayList<>();
		try {
			Session session=sessionFactory.openSession();
			String hql="from  Buildings";
			Query query=session.createQuery(hql);
			query.setFirstResult(currentPage-1);
			query.setMaxResults(pageSize);
			list=query.list();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public PageByEasyUi<Buildings> queryByPage(PageByEasyUi<Buildings> page,String agencyId) {
		try {
			Session session=sessionFactory.openSession();
			Query query=session.createQuery("from Buildings where agency_id='"+agencyId+"'");
			query.setFirstResult(page.getBeginIndex());
			query.setMaxResults(page.getPageSize());
			List<Buildings>list=query.list();
			 page.setRows(list);
			page.setTotal(pageCount(agencyId));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return page;

	}


	@Override
	public PageByEasyUi<Buildings> queryByPageFind(PageByEasyUi<Buildings> page, String agencyId, String buildings_name,
			String avg_price) {
		try {
			Session session=sessionFactory.openSession();
			Query query=session.createQuery("from Buildings where  agency_id='"+agencyId+"' and  concat(buildings_name, ',',avg_price,',',buildings_status) LIKE '%"+buildings_name+"%'");
			query.setFirstResult(page.getBeginIndex());
			query.setMaxResults(page.getPageSize());
			List<Buildings>list=query.list();
			 page.setRows(list);
			page.setTotal(count(agencyId));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return page;
	}

	@Override
	public int count(String agencyId) {
		Session session=sessionFactory.openSession();
		Query query =session.createSQLQuery("select count(*) from t_buildings where agency_id='"+agencyId+"'");
		List list=query.list();
		int cnt=Integer.parseInt(list.get(0).toString());
		return cnt;
	}

	@Override
	public List<Buildings> ListBuildings(String stratu) {
		Session session = sessionFactory.openSession();
		String hql = "from Buildings where buildings_status='"+stratu+"'";
		List<Buildings> list = session.createQuery(hql).list();
		return list;
	}

	@Override
	public List<Buildings> ListBuildingsType(String buildingtype) {
		Session session = sessionFactory.openSession();
		String hql = "from Buildings where building_type='"+buildingtype+"'";
		List<Buildings> list = session.createQuery(hql).list();
		return list;
	}

	@Override
	public int pageCount(String agencyid) {
		Session session=sessionFactory.getCurrentSession();
		Query query =session.createSQLQuery("select count(*) from t_buildings where agency_id='"+agencyid+"'");
		List list=query.list();
		int cnt=Integer.parseInt(list.get(0).toString());
		return cnt;
	}
	@Override
	public List<Buildings> SearchBuildings(String location) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "select * from t_Buildings where concat(buildings_name,buildings_area,buildings_address,house_type,building_type) like '%"+location+"%'";
		Query query = session.createSQLQuery(sql).addEntity(Buildings.class);
		List<Buildings> searchlist = query.list();
		return searchlist;
	}

	@Override
	public List<Buildings> ListNewBuildings(String stratu) {
		Session session = sessionFactory.openSession();
		String hql = "select * from t_buildings where buildings_status='"+stratu+"' group by created_time desc";
		Query query = session.createSQLQuery(hql).addEntity(Buildings.class);
		List<Buildings> list = query.list();
		return list;
	}

	
	
}
