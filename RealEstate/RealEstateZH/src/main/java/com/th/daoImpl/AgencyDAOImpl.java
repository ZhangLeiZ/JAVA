package com.th.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.th.bean.Agency;
import com.th.dao.AgencyDAO;

public class AgencyDAOImpl implements AgencyDAO {

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Agency queryById(String id) {
		Session session = sessionFactory.getCurrentSession();
		Agency agency = (Agency)session.get(Agency.class, id);
		return agency;
	}
	
	@Override
	public void update(Agency t) {
		Session session = sessionFactory.getCurrentSession();
		String hql="update t_agency set agency_name='"+t.getAgency_name()+"',agency_email='"+t.getAgency_email()+"',agency_phone='"+t.getAgency_phone()+"',agency_tel='"+t.getAgency_tel()+"',agency_address='"+t.getAgency_address()+"',agency_intro='"+t.getAgency_intro()+"' where agency_id='"+t.getAgency_id()+"'";
		session.createSQLQuery(hql).executeUpdate();
	}

	//新增
	@Override
	public void add(Agency t) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.clear();
		session.save(t);
		transaction.commit();
		session.close();

	}
	@Override
	public void valid(String id, String valid) {
		
	}
	//删除数据
	@Override
	public void delete(Agency agency) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(agency);
		
	}
	//查询记录条数
	@Override
	public int count() {
		Session session=sessionFactory.getCurrentSession();
		Query query =session.createSQLQuery("select count(*) from t_agency");
		List list=query.list();
		int cnt=Integer.parseInt(list.get(0).toString());
		return cnt;
	}

	//分页操作
	@Override
	public List<Agency> FindPage(int pageNumber, int pageSize) {
		List<Agency> list = new ArrayList<Agency>();
		try {
			Session session = sessionFactory.getCurrentSession();
			String hql = "from Agency";
			Query query = session.createQuery(hql);
			query.setFirstResult(pageNumber);
			query.setMaxResults(pageSize);
			list = query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	//登录检查
	@Override
	public Agency agencylogin(String phone, String pwd) {
		
			Session session = sessionFactory.getCurrentSession();
			String sql = "from Agency where agency_phone='"+phone+"' and agency_pwd='"+pwd+"'";
			Agency list = (Agency)session.createQuery(sql).uniqueResult();
			return list;
	}
	
	@Override
	public Agency loginstatus(String status){
		Session session = sessionFactory.getCurrentSession();
		String sql = "from Agency where agency_status='"+status+"'";
		session.createQuery(sql);
		return null;
	}

	//修改数据
	@Override
	public Agency updateagency(Agency agency) {
		Agency agencys = null;
		try {
			Session session = sessionFactory.getCurrentSession();
			session.update(agency);
			agencys = queryById(agency.getAgency_id());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return agencys;
	}

	//修改密码
	@Override
	public void updatepwd(Agency agency) {
		Session session = sessionFactory.getCurrentSession();
		session.update(agency);
	}
}
