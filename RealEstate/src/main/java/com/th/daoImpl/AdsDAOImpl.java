package com.th.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.th.bean.Ads;
import com.th.dao.AdsDAO;

public class AdsDAOImpl implements AdsDAO {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Ads queryById(String id) {
		
		return null;
	}
	
	@Override
	public void update(Ads t) {
		Session session = sessionFactory.openSession();
		session.update(t);
	}

	@Override
	public void add(Ads t) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
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
	public void delete(Ads ads) {
		Session session = sessionFactory.openSession();
		session.clear();
		session.delete(ads);
		session.close();
		
	}
	
	@Override
	public int count() {
		Session session=sessionFactory.openSession();
		Query query =session.createSQLQuery("select count(*) from t_ads");
		List list=query.list();
		int cnt=Integer.parseInt(list.get(0).toString());
		return cnt;
	}

	@Override
	public List<Ads> FindPage(int pageNumber, int pageSize) {
		List<Ads> list = new ArrayList<Ads>();
		try {
			Session session = sessionFactory.openSession();
			String hql = "from Ads";
			Query query = session.createQuery(hql);
			query.setFirstResult(pageNumber);
			query.setMaxResults(pageSize);
			list = query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
