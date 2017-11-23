package com.th.daoImpl;

import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.th.bean.Message;
import com.th.common.PageByEasyUi;
import com.th.dao.MessageDAO;

public class MessageDAOImpl implements MessageDAO {

	private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public Message queryById(String id) {
		return null;
	}
	public int count() {
		Session session=sessionFactory.openSession();
		Query query=session.createSQLQuery("select count(*) from t_message");
		List list=query.list();
		int cnt=Integer.parseInt(list.get(0).toString());
		return cnt;
	}
	public List<Message> FindPage(int pageNumber, int pageSize) {
		return null;
	}
	
	
	public void add(Message message) {
		Session session = sessionFactory.getCurrentSession();
		session.save(message);
	}
	public int countById(String id) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "select count(message_id) from t_message where user_id='"+id+"'";
		Query query = session.createSQLQuery(sql);
        List list = query.list();
        int cnt = (Integer.parseInt(list.get(0).toString()));
		return cnt;        
	}
	public PageByEasyUi<Message> pageById(PageByEasyUi<Message> page, String userId) {
		Session session = sessionFactory.openSession();
		String hql = "from Message where user_id=:user_id";
		Query query = session.createQuery(hql);
		query.setParameter("user_id", userId);
		query.setFirstResult(page.getBeginIndex());
		query.setMaxResults(page.getPageSize());
		List<Message> list = query.list();            
		page.setTotal(countById(userId));
		page.setRows(list);		
		return page;                      
	} 
	//修改留言内容
	public void update(Message message) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "update t_message set message_content='"+message.getMessage_content()+"' where message_id='"+message.getMessage_id()+"'";
		session.createSQLQuery(sql).executeUpdate();   
	}
	//修改状态
	public void valid(String id, String valid) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "update t_message set message_status='"+valid+"' where message_id='"+id+"'";
		session.createSQLQuery(sql).executeUpdate();     
	}	
	
	
	
	
	@Override
	public PageByEasyUi<Message> queryByPage(PageByEasyUi<Message> page) {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Message");
		query.setFirstResult(page.getBeginIndex());
		query.setMaxResults(page.getPageSize());
		List<Message> list=query.list();
		 page.setRows(list);
		page.setTotal(count());
		
		return page;
	}
	@Override
	public void updateMessage(Message message) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		String sql = "update Message set message_content = '"+message.getMessage_content()+"',reply='"+message.getReply()+"'  where message_id = '"+message.getMessage_id()+"'";
		
		Query q1=session.createQuery(sql);
		q1.executeUpdate();
		
		session.getTransaction().commit();
	}
	public void delete(Message t) {
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		session.clear();
		session.delete(t);
		transaction.commit();
		session.close();
	}

}
