package com.th.service;

import com.th.bean.History;
import com.th.common.PageByEasyUi;

public interface HistoryService extends TopService<String, History>{

	public void list(History history);
	
	public PageByEasyUi<History> pageById(PageByEasyUi<History> page, String userId);
	
	public void delete(String id);
}
