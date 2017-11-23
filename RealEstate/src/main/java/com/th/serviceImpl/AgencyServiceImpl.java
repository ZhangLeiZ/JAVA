package com.th.serviceImpl;

import java.util.List;

import com.th.bean.Agency;
import com.th.dao.AgencyDAO;
import com.th.service.AgencyService;

public class AgencyServiceImpl implements AgencyService{

	private AgencyDAO agencyDAOImpl;
	
	public void setAgencyDAOImpl(AgencyDAO agencyDAOImpl) {
		this.agencyDAOImpl = agencyDAOImpl;
	}

	@Override
	public Agency queryById(String id) {
		
		return agencyDAOImpl.queryById(id);
	}

	@Override
	public void delete(Agency t) {
		agencyDAOImpl.delete(t);
		
	}

	@Override
	public void update(Agency t) {
		agencyDAOImpl.update(t);
		
	}

	@Override
	public void add(Agency t) {
		agencyDAOImpl.add(t);
		
	}

	
	@Override
	public void valid(String id, String valid) {
		agencyDAOImpl.valid(id, valid);
		
	}

	@Override
	public int count() {
		
		return agencyDAOImpl.count();
	}

	@Override
	public List<Agency> FindPage(int pageNumber, int pageSize) {
		return agencyDAOImpl.FindPage(pageNumber, pageSize);
	}

	@Override
	public Agency agencylogin(String phone, String pwd) {
		return agencyDAOImpl.agencylogin(phone, pwd);
	}

	@Override
	public Agency updateagency(Agency agency) {
		return agencyDAOImpl.updateagency(agency);
	}

	@Override
	public void updatepwd(Agency agency) {
		agencyDAOImpl.updatepwd(agency);
	}

	@Override
	public Agency loginstatus(String status) {
		return agencyDAOImpl.loginstatus(status);
	}

}
