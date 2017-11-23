package com.th.serviceImpl;

import java.util.List;

import com.th.bean.Type;
import com.th.common.PageByEasyUi;
import com.th.dao.TypeDAO;
import com.th.service.TypeService;

public class TypeServiceImpl implements TypeService {

	private TypeDAO typeDAO;  
	public void setTypeDAO(TypeDAO typeDAO) {
		this.typeDAO = typeDAO;
	}

	@Override
	public Type queryById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(Type t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void valid(String id, String valid) {
		typeDAO.valid(id, valid);
		
	}

	@Override
	public int count() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Type> FindPage(int pageNumber, int pageSize) {
		// TODO Auto-generated method stub
		return null;
	}
	

	public PageByEasyUi<Type> page(PageByEasyUi<Type> page) {
		return typeDAO.page(page);
	}

	public void add(Type t) {
		typeDAO.add(t);
	}
	public void update(Type t) {
		typeDAO.update(t);
	}

	


}
