package com.th.dao;

import java.util.List;

import com.th.bean.Buildings;
import com.th.bean.House;
import com.th.bean.HouseImg;
import com.th.common.PageByEasyUi;

public interface HouseDAO extends TopDAO<String,House>{
	public PageByEasyUi<House> queryByPage(PageByEasyUi<House> page);
	public House queryById(String id);
	public void valid(String id, String valid);
	public PageByEasyUi<House> queryByPage(PageByEasyUi<House> page,String agencyId);
	public abstract List<House> Houselist(String buildingsid);

	//户型图片
	public void HouseImgAdd(HouseImg img);
	public void HouseImgDelete(HouseImg img);
	public  List<HouseImg> houseImgList(String houseid);
	public PageByEasyUi<House> queryByPageFind(PageByEasyUi<House> page,String house_name);

}
