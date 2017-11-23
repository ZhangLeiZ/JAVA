package com.th.daoImpl;

import java.util.List;

import org.hibernate.SessionFactory;

import com.th.bean.Permission;
import com.th.dao.PermissionDAO;

public class PermissionDAOImpl implements PermissionDAO {

	private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public Permission queryById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(Permission t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Permission t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void add(Permission t) {
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
	public List<Permission> FindPage(int pageNumber, int pageSize) {
		// TODO Auto-generated method stub
		return null;
	}

}
