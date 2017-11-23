package com.th.serviceImpl;

import java.util.List;

import com.th.bean.Role;
import com.th.dao.RoleDAO;
import com.th.service.RoleService;

public class RoleServiceImpl implements RoleService {

	private RoleDAO roleDAO;
	public void setRoleDAO(RoleDAO roleDAO) {
		this.roleDAO = roleDAO;
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
