package com.th.serviceImpl;

import java.util.List;

import com.th.bean.Ads;
import com.th.dao.AdsDAO;
import com.th.service.AdsService;

public class AdsServiceImpl implements AdsService{

	private AdsDAO adsDAOImpl;
	
	public void setAdsDAOImpl(AdsDAO adsDAOImpl) {
		this.adsDAOImpl = adsDAOImpl;
	}

	@Override
	public Ads queryById(String id) {
		
		return adsDAOImpl.queryById(id);
	}

	@Override
	public void delete(Ads t) {
		adsDAOImpl.delete(t);
		
	}

	@Override
	public void update(Ads t) {
		adsDAOImpl.update(t);
		
	}

	@Override
	public void add(Ads t) {
		adsDAOImpl.add(t);
		
	}

	
	@Override
	public void valid(String id, String valid) {
		adsDAOImpl.valid(id, valid);
		
	}

	@Override
	public int count() {
		
		return adsDAOImpl.count();
	}

	@Override
	public List<Ads> FindPage(int pageNumber, int pageSize) {
		
		return adsDAOImpl.FindPage(pageNumber, pageSize);
	}

}
