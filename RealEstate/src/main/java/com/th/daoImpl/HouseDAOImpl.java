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
import com.th.bean.House;
import com.th.bean.HouseImg;
import com.th.common.PageByEasyUi;
import com.th.dao.HouseDAO;

public class HouseDAOImpl implements HouseDAO {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public House queryById(String id) {
		Session session = sessionFactory.getCurrentSession();
		House house = (House)session.get(House.class, id);
		return house;
	}
	
	@Override
	public void update(House t) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.clear();
		session.update(t);
		transaction.commit();
		session.close();
	}

	@Override
	public void add(House t) {
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
		String sql = "update House set house_status = '"+valid+"'  where house_id = '"+id+"'";
		
		Query q1=session.createQuery(sql);
		q1.executeUpdate();
		
		session.getTransaction().commit();
	}

	@Override
	public void delete(House house) {
		Session session = sessionFactory.openSession();
		session.clear();
		session.delete(house);
		session.close();
		
	}
	
	@Override
	public int count() {
		Session session=sessionFactory.openSession();
		Query query =session.createSQLQuery("select count(*) from t_house");
		List list=query.list();
		int cnt=Integer.parseInt(list.get(0).toString());
		return cnt;
	}

	@Override
	public List<House> FindPage(int pageNumber, int pageSize) {
		List<House> list = new ArrayList<House>();
		try {
			Session session = sessionFactory.openSession();
			String hql = "from House";
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
	public PageByEasyUi<House> queryByPage(PageByEasyUi<House> page) {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from House");
		query.setFirstResult(page.getBeginIndex());
		query.setMaxResults(page.getPageSize());
		List<House>list=query.list();
		 page.setRows(list);
		page.setTotal(count());
		
		return page;
	}

	@Override
	public PageByEasyUi<House> queryByPage(PageByEasyUi<House> page, String agencyId) {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from House where buildings_id='"+agencyId+"'");
		query.setFirstResult(page.getBeginIndex());
		query.setMaxResults(page.getPageSize());
		List<House>list=query.list();
		 page.setRows(list);
		page.setTotal(count());
		
		return page;
	}

	@Override
	public List<House> Houselist(String buildingsid) {
		Session session = sessionFactory.openSession();
		String hql = "from House where buildings_id='"+buildingsid+"'";
		Query query = session.createQuery(hql);
		List<House> houselist = query.list();
		return houselist;
	}

	@Override
	public void HouseImgAdd(HouseImg img) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.clear();
		session.save(img);
		transaction.commit();
		session.close();
	}

	@Override
	public void HouseImgDelete(HouseImg img) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.clear();
		session.delete(img);
		transaction.commit();
		session.close();
		
	}

	@Override
	public List<HouseImg> houseImgList(String houseid) {
		Session session=sessionFactory.openSession();
		String hql="from  HouseImg  where house_id='"+houseid+"'";
		Query query=session.createQuery(hql);
		List<HouseImg>	list=query.list();
		
		return list;
		
	}

	@Override
	public PageByEasyUi<House> queryByPageFind(PageByEasyUi<House> page, String house_name) {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from House where concat(house_name, ',',unit_price,',',house_status)  LIKE  '%"+house_name+"%'");
		query.setFirstResult(page.getBeginIndex());
		query.setMaxResults(page.getPageSize());
		List<House> list=query.list();
		 page.setRows(list);
		page.setTotal(count());
		return page;
	}
}
