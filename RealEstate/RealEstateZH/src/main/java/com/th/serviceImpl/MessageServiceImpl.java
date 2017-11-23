package com.th.serviceImpl;

import java.util.List;

import com.th.bean.Message;
import com.th.common.PageByEasyUi;
import com.th.dao.MessageDAO;
import com.th.service.MessageService;

public class MessageServiceImpl implements MessageService {

	private MessageDAO messageDAO;
	public void setMessageDAO(MessageDAO messageDAO) {
		this.messageDAO = messageDAO;
	}
	public Message queryById(String id) {
		// TODO Auto-generated method stub
		return null;
	}
	public int count() {
		return messageDAO.count();
	}
	public List<Message> FindPage(int pageNumber, int pageSize) {
		return null;
	}

	public void add(Message t) {
		messageDAO.add(t);
	}
	public PageByEasyUi<Message> pageById(PageByEasyUi<Message> page, String userId) {
		return messageDAO.pageById(page, userId);
	}
	public void update(Message t) {
		messageDAO.update(t);
	}	
	public void valid(String id, String valid) {
		messageDAO.valid(id, valid);
	}
	
	

	public PageByEasyUi<Message> queryByPage(PageByEasyUi<Message> page) {
		return messageDAO.queryByPage(page);
	}
	public void updateMessage(Message message) {
		messageDAO.updateMessage(message);
	}
	public void delete(Message t) {
		messageDAO.delete(t);
	}

}
