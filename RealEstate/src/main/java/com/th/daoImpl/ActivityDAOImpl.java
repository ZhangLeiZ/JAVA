package com.th.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.th.bean.Activity;
import com.th.bean.Article;
import com.th.bean.Buildings;
import com.th.common.Pager4EasyUI;
import com.th.dao.ActivityDAO;

public class ActivityDAOImpl implements ActivityDAO {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Activity queryById(String id) {
		Session session = sessionFactory.openSession();
		Activity activity = (Activity)session.get(Activity.class, id);
		return activity;
	}
	
	@Override
	public void update(Activity t) {
		Session session = sessionFactory.getCurrentSession();
		session.update(t);
	}

	
	
	@Override
	public void add(Activity t) {
		Session session = sessionFactory.getCurrentSession();
		session.save(t);
	}
	@Override
	public void valid(String id, String valid) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		String sql = "update Activity set activity_status = '"+valid+"'  where activity_id = '"+id+"'";
		Query q1=session.createQuery(sql); 
		q1.executeUpdate();
		session.getTransaction().commit();

	}

	@Override
	public void delete(Activity activity) {
		Session session = sessionFactory.openSession();
		session.clear();
		session.delete(activity);
		session.close();
		
	}
	
	@Override
	public int count() {
		int count=0;
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query  = session.createSQLQuery("select count(*) from t_activity");
			List list=query.list();
			count=Integer.parseInt(list.get(0).toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return count;
	}

	@Override
	public List<Activity> FindPage(int pageNumber, int pageSize) {
		List<Activity> list = new ArrayList<Activity>();
		try {
			Session session = sessionFactory.openSession();
			String hql = "from Activity";
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
	public List<Buildings> BuildingsList(String agencyid) {
		List<Buildings> list=null;
		try {
			Session session = sessionFactory.openSession();
			String sql = "from Buildings where agency_id='"+agencyid+"'";
			list = session.createQuery(sql).list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Pager4EasyUI<Activity> queryByPage(Pager4EasyUI<Activity> page,String agencyid) {
		try {
			Session session=sessionFactory.openSession();
			Query query=session.createSQLQuery("select * from t_activity as a,t_buildings as b where a.buildings_id=b.buildings_id and b.agency_id=:id").addEntity(Activity.class);
			query.setParameter("id", agencyid);
			query.setFirstResult(page.getBeginIndex());
			query.setMaxResults(page.getPageSize());
			List<Activity>list=query.list();
			page.setRows(list);
			page.setTotal(Activitycount(agencyid));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return page;
	}

	

	@Override
	public Activity list(Activity activity) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "from Activity";
		Query query = session.createQuery(sql);
		List<Article> list = query.list();
		return activity;
	}

	@Override
	public int Activitycount(String agencyid) {
		int count=0;
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query  = session.createSQLQuery("select count(*) from t_activity a left join t_buildings b on a.buildings_id=b.buildings_id where b.agency_id='"+agencyid+"'");
			List list=query.list();
			count=Integer.parseInt(list.get(0).toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return count;
	}

}
