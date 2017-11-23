package com.th.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.th.bean.Article;
import com.th.bean.Type;
import com.th.dao.ArticleDAO;

public class ArticleDAOImpl implements ArticleDAO {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Article queryById(String id) {
		Session session = sessionFactory.openSession();
		Article article = (Article)session.get(Article.class, id);
		return article;
	}
	
	@Override
	public void update(Article t) {
		Session session = sessionFactory.getCurrentSession();
		session.update(t);
	}

	@Override
	public void valid(String id, String valid) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Article article) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(article);
	}
	
	@Override
	public int count() {
		Session session=sessionFactory.openSession();
		Query query =session.createSQLQuery("select count(*) from t_article");
		List list=query.list();
		int cnt=Integer.parseInt(list.get(0).toString());
		return cnt;
	}

	@Override
	public List<Article> FindPage(int pageNumber, int pageSize) {
		List<Article> list = new ArrayList<Article>();
		try {
			Session session = sessionFactory.openSession();
			String hql = "from Article group by created_time desc";
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
	public java.util.List<Type> List() {
		Session session = sessionFactory.getCurrentSession();
		String sql = "from Type";
		Query query = session.createQuery(sql);
		List<Type> list = query.list();
		return list;
	}
	
	@Override
	public void add(Article t) {
		Session session = sessionFactory.getCurrentSession();
		session.save(t);
	}

	@Override
	public java.util.List<Article> ArticleList() {
		Session session = sessionFactory.getCurrentSession();
		String hql = "select * from t_article group by created_time desc";
		Query query = session.createSQLQuery(hql).addEntity(Article.class);
		List<Article> articlelist = query.list();
		return articlelist;
	}
	
	
	
	
}
