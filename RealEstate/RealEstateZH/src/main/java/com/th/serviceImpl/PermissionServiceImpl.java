package com.th.serviceImpl;

import java.util.List;

import com.th.bean.Permission;
import com.th.dao.PermissionDAO;
import com.th.service.PermissionService;

public class PermissionServiceImpl implements PermissionService {

	private PermissionDAO permissionDAO;
	public void setPermissionDAO(PermissionDAO permissionDAO) {
		this.permissionDAO = permissionDAO;
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
