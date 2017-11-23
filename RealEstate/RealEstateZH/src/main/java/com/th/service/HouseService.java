package com.th.service;

import java.util.List;

import com.th.bean.House;
import com.th.bean.HouseImg;
import com.th.common.PageByEasyUi;

public interface HouseService extends TopService<String, House>{
	public PageByEasyUi<House> queryByPage(PageByEasyUi<House> page);
	public House queryById(String id);
	public PageByEasyUi<House> queryByPage(PageByEasyUi<House> page, String agencyId);
	public abstract List<House> Houselist(String buildingsid);

	
	public void HouseImgAdd(HouseImg img);
	public void HouseImgDelete(HouseImg img);
	public  List<HouseImg> houseImgList(String houseid);
	//户型按条件查找
	public PageByEasyUi<House> queryByPageFind(PageByEasyUi<House> page,String house_name);

}
