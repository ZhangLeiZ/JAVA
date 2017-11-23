package com.th.service;

import com.th.bean.Message;
import com.th.common.PageByEasyUi;

public interface MessageService extends TopService<String, Message> {
	public PageByEasyUi<Message> queryByPage(PageByEasyUi<Message> page);
	
	public void updateMessage(Message message);
	public PageByEasyUi<Message> pageById(PageByEasyUi<Message> page, String userId);
}
