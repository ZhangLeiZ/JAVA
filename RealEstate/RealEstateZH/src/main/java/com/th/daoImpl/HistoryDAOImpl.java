package com.th.daoImpl;

import java.util.ArrayList;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.th.bean.History;
import com.th.common.PageByEasyUi;
import com.th.dao.HistoryDAO;

public class HistoryDAOImpl implements HistoryDAO {
	
	private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public History queryById(String id) {		
		return null;
	}
	public void update(History t) {
		
	}	  
	public void delete(History history) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "delete t_history where history_id='"+history.getHistory_id()+"'";
		session.createQuery(hql).executeUpdate();	
	}
	public void valid(String id, String valid) {
	
	}
	
	public void list(History history) {
		
	}
	public List<History> FindPage(int pageNumber, int pageSize) {
		List<History> list = new ArrayList<History>();
		try {
			Session session = sessionFactory.openSession();
			String hql = "from History";
			Query query = session.createQuery(hql);
			query.setFirstResult(pageNumber);
			query.setMaxResults(pageSize);
			list = query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public void add(History history) {
		Session session = sessionFactory.openSession();
		session.save(history);
	}
	//总记录条数
	public int count() {
		Session session = sessionFactory.openSession();
		Query query = session.createSQLQuery("select count(*) from t_history");
		List list = query.list();
		int cnt = Integer.parseInt(list.get(0).toString());
		return cnt;
	}	
	//单个用户的记录条数
	public int countById(String id) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createSQLQuery("select count(history_id) from t_history where user_id='"+id+"'");
		List list = query.list();
		int cnt = Integer.parseInt(list.get(0).toString());
		return cnt;     
	}
	//获取PageByEasyUi对象
	public PageByEasyUi<History> pageById(PageByEasyUi<History> page, String userid) {		
		//这里用 .openSession(); 原因：没有配置加载方式，是默认加载。。
		Session session = sessionFactory.openSession();
		String hql = "from History where user_id=:user_id";  //这样写
		Query query = session.createQuery(hql);
		query.setParameter("user_id",userid);
		query.setFirstResult(page.getBeginIndex()); //开始页码
		query.setMaxResults(page.getPageSize());  //每页记录数
		List<History> list = query.list();
		page.setTotal(countById(userid));    //总记录数       
		page.setRows(list);             //每页结果     
		return page;    
	}
	public void delete(String id) {
		Session session = sessionFactory.getCurrentSession();
		History history = (History)session.get(History.class, id);
		session.delete(history);
	}
	
}
