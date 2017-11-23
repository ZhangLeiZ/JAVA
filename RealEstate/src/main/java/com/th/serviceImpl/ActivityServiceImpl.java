package com.th.serviceImpl;

import java.util.List;

import com.th.bean.Activity;
import com.th.bean.Buildings;
import com.th.common.Pager4EasyUI;
import com.th.dao.ActivityDAO;
import com.th.service.ActivityService;

public class ActivityServiceImpl implements ActivityService{

	private ActivityDAO activityDAOImpl;
	
	public void setActivityDAOImpl(ActivityDAO activityDAOImpl) {
		this.activityDAOImpl = activityDAOImpl;
	}

	@Override
	public Activity queryById(String id) {
		
		return activityDAOImpl.queryById(id);
	}

	@Override
	public void delete(Activity t) {
		activityDAOImpl.delete(t);
		
	}

	@Override
	public void update(Activity t) {
		activityDAOImpl.update(t);
		
	}

	@Override
	public void add(Activity t) {
		activityDAOImpl.add(t);
		
	}

	
	@Override
	public void valid(String id, String valid) {
		activityDAOImpl.valid(id, valid);
		
	}

	@Override
	public int count() {
		
		return activityDAOImpl.count();
	}

	@Override
	public List<Activity> FindPage(int pageNumber, int pageSize) {
		
		return activityDAOImpl.FindPage(pageNumber, pageSize);
	}

	
	

	@Override
	public Pager4EasyUI<Activity> queryByPage(Pager4EasyUI<Activity> page,String agencyid) {
		return activityDAOImpl.queryByPage(page,agencyid);
	}

	
	@Override
	public Activity list(Activity activity) {
		return activityDAOImpl.list(activity);
	}

	@Override
	public int Activitycount(String agencyid) {
		return activityDAOImpl.Activitycount(agencyid);
	}

	@Override
	public List<Buildings> BuildingsList(String agencyid) {
		
		return activityDAOImpl.BuildingsList(agencyid);
	}

}
