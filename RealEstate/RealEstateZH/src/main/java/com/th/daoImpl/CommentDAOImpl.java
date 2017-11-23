package com.th.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.th.bean.Buildings;
import com.th.bean.Comment;
import com.th.bean.Room;
import com.th.common.PageByEasyUi;
import com.th.dao.CommentDAO;

public class CommentDAOImpl implements CommentDAO {
	
	private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public Comment queryById(String id) {		
		return null;
	}		
	public void delete(Comment comment) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(comment);
	}
	public int count() {
		Session session=sessionFactory.openSession();
		Query query =session.createSQLQuery("select count(*) from t_comment");
		List list=query.list();
		int cnt=Integer.parseInt(list.get(0).toString());
		return cnt;
	}
	public List<Comment> FindPage(int pageNumber, int pageSize) {
		List<Comment> list = new ArrayList<Comment>();
		try {
			Session session = sessionFactory.openSession();
			String hql = "from Comment";
			Query query = session.createQuery(hql);
			query.setFirstResult(pageNumber);
			query.setMaxResults(pageSize);
			list = query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	//添加
	public void add(Comment comment) {
		Session session = sessionFactory.getCurrentSession();
		session.save(comment);
	}
	public int countById(String id) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "select count(comment_id) from t_comment where user_id='"+id+"'";
		Query query = session.createSQLQuery(sql);
        List list = query.list();
        int cnt = (Integer.parseInt(list.get(0).toString()));
		return cnt;        
	}
	public PageByEasyUi<Comment> pageById(PageByEasyUi<Comment> page, String userId) {
		Session session = sessionFactory.openSession();
		String hql = "from Comment where user_id=:user_id";
		Query query = session.createQuery(hql);
		query.setParameter("user_id", userId);
		query.setFirstResult(page.getBeginIndex());
		query.setMaxResults(page.getPageSize());
		List<Comment> list = query.list();            
		page.setTotal(countById(userId));
		page.setRows(list);		
		return page;                      
	} 
	//修改评价内容
	public void update(Comment comment) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "update t_comment set comment_content='"+comment.getComment_content()+"' where comment_id='"+comment.getComment_id()+"'";
		session.createSQLQuery(sql).executeUpdate();   
	}
	//修改状态
	public void valid(String id, String valid) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "update t_comment set comment_status='"+valid+"' where comment_id='"+id+"'";
		session.createSQLQuery(sql).executeUpdate();  
	}	
	//查看评价
	public List<Comment> listComment(){
		Session session = sessionFactory.openSession();
		String hql = "select * from t_comment group by comment_time desc limit 6";
		Query query = session.createSQLQuery(hql).addEntity(Comment.class);
		 List<Comment> commentList = query.list();
		return commentList;
	}
	
	
	
	@Override
	public PageByEasyUi<Comment> queryByPage(PageByEasyUi<Comment> page) {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Comment");
		query.setFirstResult(page.getBeginIndex());
		query.setMaxResults(page.getPageSize());
		List<Comment>list=query.list();
		 page.setRows(list);
		page.setTotal(count());
		return page;
	}
	
	
}
