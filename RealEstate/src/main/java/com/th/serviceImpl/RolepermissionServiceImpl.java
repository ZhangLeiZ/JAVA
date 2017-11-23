package com.th.serviceImpl;

import java.util.List;

import com.th.bean.Rolepermission;
import com.th.dao.RolepermissionDAO;
import com.th.service.RolepermissionService;

public class RolepermissionServiceImpl implements RolepermissionService {

	private RolepermissionDAO rolepermissionDAO; 
	public void setRolepermissionDAO(RolepermissionDAO rolepermissionDAO) {
		this.rolepermissionDAO = rolepermissionDAO;
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
