package com.th.serviceImpl;

import java.util.List;

import com.th.bean.History;
import com.th.common.PageByEasyUi;
import com.th.dao.HistoryDAO;
import com.th.service.HistoryService;

public class HistoryServiceImpl implements HistoryService{

	private HistoryDAO historyDAO;
	public HistoryDAO getHistoryDAO() {
		return historyDAO;
	}
	public void setHistoryDAO(HistoryDAO historyDAO) {
		this.historyDAO = historyDAO;
	}

	public History queryById(String id) {		
		return null;
	}
	public void update(History t) {
		
	}
	public void delete(History history) {
		historyDAO.delete(history);
	}	
	public void valid(String id, String valid) {
		
	}
	public int count() {
		return 0;
	}

	public void list(History history) {
				
	}
	public List<History> FindPage(int pageNumber, int pageSize) {
		return null;
	}
	
	
	public void add(History history) {
		historyDAO.add(history);
	}
	
	public PageByEasyUi<History> pageById(PageByEasyUi<History> page, String userId) {
		return historyDAO.pageById(page, userId);
	}
	
	public void delete(String id) {
		historyDAO.delete(id);	
	}
}
