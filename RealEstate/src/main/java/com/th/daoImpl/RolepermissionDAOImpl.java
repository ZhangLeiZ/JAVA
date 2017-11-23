package com.th.daoImpl;

import java.util.List;

import org.hibernate.SessionFactory;

import com.th.bean.Rolepermission;
import com.th.dao.RolepermissionDAO;

public class RolepermissionDAOImpl implements RolepermissionDAO {

	private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public Rolepermission queryById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(Rolepermission t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Rolepermission t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void add(Rolepermission t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void valid(String id, String valid) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int count() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Rolepermission> FindPage(int pageNumber, int pageSize) {
		// TODO Auto-generated method stub
		return null;
	}

}
