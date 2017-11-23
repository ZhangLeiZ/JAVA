package com.th.daoImpl;

import java.util.List;

import org.hibernate.SessionFactory;

import com.th.bean.Role;
import com.th.dao.RoleDAO;

public class RoleDAOImpl implements RoleDAO {

	private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Role queryById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(Role t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Role t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void add(Role t) {
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
	public List<Role> FindPage(int pageNumber, int pageSize) {
		// TODO Auto-generated method stub
		return null;
	}

}
