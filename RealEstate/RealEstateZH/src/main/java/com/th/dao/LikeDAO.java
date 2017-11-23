package com.th.dao;

import com.th.bean.Like;
import com.th.common.PageByEasyUi;

public interface LikeDAO extends TopDAO<String,Like> {

	public int countById(String id);
	
	public PageByEasyUi<Like> pageById(PageByEasyUi<Like> page, String userId);
	
	public void delete(String id);
	
}
