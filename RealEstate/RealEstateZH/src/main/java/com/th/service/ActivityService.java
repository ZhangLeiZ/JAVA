package com.th.service;

import java.util.List;

import com.th.bean.Activity;
import com.th.bean.Buildings;
import com.th.common.Pager4EasyUI;

public interface ActivityService extends TopService<String, Activity>{

	
	public abstract List<Buildings> BuildingsList(String agencyid);
	
	public Pager4EasyUI<Activity> queryByPage(Pager4EasyUI<Activity> page,String agencyid);
	
	//文章冻结或激活
	public void valid(String id, String valid) ;
	public abstract Activity list(Activity activity);
	public abstract int Activitycount(String agencyid);

}
