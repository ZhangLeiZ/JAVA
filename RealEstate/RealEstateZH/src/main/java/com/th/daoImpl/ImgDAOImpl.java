package com.th.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.th.bean.Img;
import com.th.dao.ImgDAO;

public class ImgDAOImpl implements ImgDAO {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Img queryById(String id) {
		
		return null;
	}
	
	@Override
	public void update(Img t) {
		Session session = sessionFactory.openSession();
		session.update(t);
	}

	@Override
	public void add(Img t) {
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
	public void delete(Img img) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.clear();
		session.delete(img);
		transaction.commit();
		session.close();
		
	}
	
	@Override
	public int count() {
		Session session=sessionFactory.openSession();
		Query query =session.createSQLQuery("select count(*) from t_img");
		List list=query.list();
		int cnt=Integer.parseInt(list.get(0).toString());
		return cnt;
	}

	@Override
	public List<Img> FindPage(int pageNumber, int pageSize) {
		List<Img> list = new ArrayList<Img>();
		try {
			Session session = sessionFactory.openSession();
			String hql = "from Img";
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
	public List<Img> queryByIdImg(String id) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		String sql = "select * from t_buildings_img where buildings_id = '"+id+"'";
		List<Img> list = session.createSQLQuery(sql).addEntity(Img.class).list();
		session.getTransaction().commit();
		return list;
	}
}
