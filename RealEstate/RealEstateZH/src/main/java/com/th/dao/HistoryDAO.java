package com.th.dao;

import com.th.bean.History;
import com.th.common.PageByEasyUi;

public interface HistoryDAO extends TopDAO<String,History>{
	
	public void list(History history);
	
	public int countById(String id);
	public PageByEasyUi<History> pageById(PageByEasyUi<History> page, String userId);
	
	public void delete(String id);
	
	
}
