package com.th.service;

import com.th.bean.Like;
import com.th.common.PageByEasyUi;

public interface LikeService extends TopService<String,Like > {
	
	public PageByEasyUi<Like> pageById(PageByEasyUi<Like> page, String userId);
	
	public void delete(String id);
	
}
