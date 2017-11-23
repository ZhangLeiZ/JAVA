package com.th.daoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import com.th.bean.Like;
import com.th.common.PageByEasyUi;
import com.th.dao.LikeDAO;

public class LikeDAOImpl implements LikeDAO {

	private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public Like queryById(String id) {		
		return null;
	}	
	public void update(Like t) {
		
	}
	public void delete(Like like) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "delete t_like where like_id='"+like.getLike_id()+"'";
		session.createQuery(hql).executeUpdate();	
	}	
	public void valid(String id, String valid) {
		
	}	
	public List<Like> FindPage(int pageNumber, int pageSize) {
		return null;
	}
	
	public int count() {
		return 0;
	}
	
	//点赞
	public void add(Like like) {
		Session session = sessionFactory.getCurrentSession();
		session.save(like);
	}
	//单个用户的点赞条数
	public int countById(String id) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createSQLQuery("select count(like_id) from t_like where user_id='"+id+"'");
		List list = query.list();
		int cnt = Integer.parseInt(list.get(0).toString());
		return cnt;
	}
	//获取PageByEasyUi对象
	public PageByEasyUi<Like> pageById(PageByEasyUi<Like> page, String userId) {
		Session session = sessionFactory.openSession();
		String hql = "from Like where user_id=:user_id";
		Query query = session.createQuery(hql);
		query.setParameter("user_id", userId);
		query.setFirstResult(page.getBeginIndex());
		query.setMaxResults(page.getPageSize());
		List<Like> list = query.list();
		page.setTotal(countById(userId));
		page.setRows(list);
		return page;
	}
	public void delete(String id){
		Session session = sessionFactory.getCurrentSession();
		Like like = session.get(Like.class, id);
		session.delete(like);
	}
	
}
