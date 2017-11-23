package com.th.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.th.bean.Sale;
import com.th.common.PageByEasyUi;
import com.th.dao.SaleDAO;

	public class SaleDAOImpl implements SaleDAO {

		private SessionFactory sessionFactory;
		public SessionFactory getSessionFactory() {
			return sessionFactory;
		}
		public void setSessionFactory(SessionFactory sessionFactory) {
			this.sessionFactory = sessionFactory;
		}
		
		@Override
		public Sale queryById(String id) {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public void delete(Sale t) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public void update(Sale t) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public void add(Sale t) {
			Session session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();
		//	session.clear();
			session.save(t);
			transaction.commit();
			session.close();
		}

		@Override
		public void valid(String id, String valid) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public int count() {
			Session session=sessionFactory.openSession();
			Query query=session.createSQLQuery("select count(*) from t_sale");
			List list=query.list();
			int cnt=Integer.parseInt(list.get(0).toString());
			return cnt;
		}

		@Override
		public List<Sale> FindPage(int pageNumber, int pageSize) {
			// TODO Auto-generated method stub
			return null;
		}
		@Override
		public PageByEasyUi<Sale> queryByPage(PageByEasyUi<Sale> page) {
			Session session=sessionFactory.openSession();
			Query query=session.createQuery("from Sale");
			query.setFirstResult(page.getBeginIndex());
			query.setMaxResults(page.getPageSize());
			List<Sale>list=query.list();
			 page.setRows(list);
			page.setTotal(count());
			
			return page;
		}
		@Override
		public int sale1() {
			Session session=sessionFactory.openSession();
			Query query=session.createSQLQuery("select COUNT(*) from t_sale where sale_time>='2017-01-01 00:00:00' and sale_time<'2017-02-01 00:00:00'");
			List list=query.list();
			int cnt=Integer.parseInt(list.get(0).toString());
			return cnt;
		}
		@Override
		public int sale2() {
			Session session=sessionFactory.openSession();
			Query query=session.createSQLQuery("select COUNT(*) from t_sale where sale_time>='2017-02-01 00:00:00' and sale_time<'2017-03-01 00:00:00'");
			List list=query.list();
			int cnt=Integer.parseInt(list.get(0).toString());
			return cnt;
		}
		@Override
		public int sale3() {
			Session session=sessionFactory.openSession();
			Query query=session.createSQLQuery("select COUNT(*) from t_sale where sale_time>='2017-03-01 00:00:00' and sale_time<'2017-04-01 00:00:00'");
			List list=query.list();
			int cnt=Integer.parseInt(list.get(0).toString());
			return cnt;
		}
		@Override
		public int sale4() {
			Session session=sessionFactory.openSession();
			Query query=session.createSQLQuery("select COUNT(*) from t_sale where sale_time>='2017-04-01 00:00:00' and sale_time<'2017-05-01 00:00:00'");
			List list=query.list();
			int cnt=Integer.parseInt(list.get(0).toString());
			return cnt;
		}
		@Override
		public int sale5() {
			Session session=sessionFactory.openSession();
			Query query=session.createSQLQuery("select COUNT(*) from t_sale where sale_time>='2017-05-01 00:00:00' and sale_time<'2017-06-01 00:00:00'");
			List list=query.list();
			int cnt=Integer.parseInt(list.get(0).toString());
			return cnt;
		}
		@Override
		public int sale6() {
			Session session=sessionFactory.openSession();
			Query query=session.createSQLQuery("select COUNT(*) from t_sale where sale_time>='2017-06-01 00:00:00' and sale_time<'2017-07-01 00:00:00'");
			List list=query.list();
			int cnt=Integer.parseInt(list.get(0).toString());
			return cnt;
		}
		@Override
		public int sale7() {
			Session session=sessionFactory.openSession();
			Query query=session.createSQLQuery("select COUNT(*) from t_sale where sale_time>='2017-07-01 00:00:00' and sale_time<'2017-08-01 00:00:00'");
			List list=query.list();
			int cnt=Integer.parseInt(list.get(0).toString());
			return cnt;
		}
		@Override
		public int sale8() {
			Session session=sessionFactory.openSession();
			Query query=session.createSQLQuery("select COUNT(*) from t_sale where sale_time>='2017-08-01 00:00:00' and sale_time<'2017-09-01 00:00:00'");
			List list=query.list();
			int cnt=Integer.parseInt(list.get(0).toString());
			return cnt;
		}
		@Override
		public int sale9() {
			Session session=sessionFactory.openSession();
			Query query=session.createSQLQuery("select COUNT(*) from t_sale where sale_time>='2017-09-01 00:00:00' and sale_time<'2017-10-01 00:00:00'");
			List list=query.list();
			int cnt=Integer.parseInt(list.get(0).toString());
			return cnt;
		}
		@Override
		public int sale10() {
			Session session=sessionFactory.openSession();
			Query query=session.createSQLQuery("select COUNT(*) from t_sale where sale_time>='2017-10-01 00:00:00' and sale_time<'2017-11-01 00:00:00'");
			List list=query.list();
			int cnt=Integer.parseInt(list.get(0).toString());
			return cnt;
		}
		@Override
		public int sale11() {
			Session session=sessionFactory.openSession();
			Query query=session.createSQLQuery("select COUNT(*) from t_sale where sale_time>='2017-11-01 00:00:00' and sale_time<'2017-12-01 00:00:00'");
			List list=query.list();
			int cnt=Integer.parseInt(list.get(0).toString());
			return cnt;
		}
		@Override
		public int sale12() {
			Session session=sessionFactory.openSession();
			Query query=session.createSQLQuery("select COUNT(*) from t_sale where sale_time>='2017-12-01 00:00:00' and sale_time<'2017-12-31 24:59:59'");
			List list=query.list();
			int cnt=Integer.parseInt(list.get(0).toString());
			return cnt;
		}

	}
