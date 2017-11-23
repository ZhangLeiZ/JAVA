package com.th.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.th.bean.History;
import com.th.bean.Type;
import com.th.common.PageByEasyUi;
import com.th.dao.TypeDAO;

public class TypeDAOImpl implements TypeDAO {

	private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Override
	public Type queryById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(Type t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void valid(String id, String valid) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		String sql = "update Type set type_status = '"+valid+"'  where type_id = '"+id+"'";
		
		Query q1=session.createQuery(sql);
		q1.executeUpdate();
		
		session.getTransaction().commit();
		
	}

	@Override
	public List<Type> FindPage(int pageNumber, int pageSize) {
		// TODO Auto-generated method stub
		return null;
	}

	//总记录条数
	public int count() {
		Session session = sessionFactory.openSession();
		Query query = session.createSQLQuery("select count(*) from t_article_type");
		List list = query.list();
		int cnt = Integer.parseInt(list.get(0).toString());
		return cnt;
	}	
	//获取PageByEasyUi对象
	public PageByEasyUi<Type> page(PageByEasyUi<Type> page) {
		Session session = sessionFactory.openSession();
		String hql = "from Type";
		Query query = session.createQuery(hql);
		query.setFirstResult(page.getBeginIndex()); 
		query.setMaxResults(page.getPageSize()); 
		List<Type> list = query.list();
		page.setTotal(count());   
		page.setRows(list);                 
		return page;    
	}
	

	public void add(Type type) {
		Session session = sessionFactory.getCurrentSession();
		session.save(type);
	}
	public void update(Type type) {
		Session session = sessionFactory.getCurrentSession();
		String hql="update t_article_type set type_name='"+type.getType_name()+"',type_des='"+type.getType_des()+"' where type_id='"+type.getType_id()+"'";                          
		session.createSQLQuery(hql).executeUpdate();
	}
	


}
