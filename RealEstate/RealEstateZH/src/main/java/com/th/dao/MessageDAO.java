package com.th.dao;


import com.th.bean.Message;
import com.th.common.PageByEasyUi;

public interface MessageDAO extends TopDAO<String,Message> {
	
	public int countById(String id);
	public PageByEasyUi<Message> pageById(PageByEasyUi<Message> page, String userId);

	
	public PageByEasyUi<Message> queryByPage(PageByEasyUi<Message> page);
	public void updateMessage(Message message);
}
