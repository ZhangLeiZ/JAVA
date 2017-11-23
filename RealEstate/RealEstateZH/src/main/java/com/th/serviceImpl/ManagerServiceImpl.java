package com.th.serviceImpl;

import java.util.List;

import com.th.bean.Agency;
import com.th.bean.Employee;
import com.th.bean.Manager;
import com.th.dao.ManagerDAO;
import com.th.service.ManagerService;

public class ManagerServiceImpl implements ManagerService {

	private ManagerDAO managerDAO;
	public void setManagerDAO(ManagerDAO managerDAO) {
		this.managerDAO = managerDAO;
	}

	@Override
	public Manager queryById(String id) {
		return managerDAO.queryById(id);
	}

	@Override
	public void delete(Manager t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Manager t) {
		managerDAO.update(t);
	}

	@Override
	public void add(Manager t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void valid(String id, String valid) {
		managerDAO.valid(id, valid);
	}

	@Override
	public int count() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Manager> FindPage(int pageNumber, int pageSize) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Object> AgencyFindByPage(int pageNumber, int pageSize, String struta) {
		return managerDAO.AgencyFindByPage(pageNumber, pageSize, struta);
	}

	@Override
	public void ExamineAndverify(String struta,String id) {
		managerDAO.ExamineAndverify(struta,id);
	}

	@Override
	public Manager Managerlogin(String account, String pwd) {
		Manager manager = managerDAO.Managerlogin(account, pwd);
		return manager;
	}

	@Override
	public int managerCount(String sql) {
		return managerDAO.managerCount(sql);
	}

	@Override
	public void StatusUp(String sql) {
		managerDAO.StatusUp(sql);
	}

	@Override
	public List<Object> EmployeeFindByPage(int pageNumber, int pageSize, String struta) {
		return managerDAO.EmployeeFindByPage(pageNumber, pageSize, struta);
	}

	@Override
	public List<Object> UserFindByPage(int pageNumber, int pageSize, String struta) {
		return managerDAO.UserFindByPage(pageNumber, pageSize, struta);
	}

	@Override
	public List<Object> ActivityFindByPage(int pageNumber, int pageSize, String struta) {
		
		return managerDAO.ActivityFindByPage(pageNumber, pageSize, struta);
	}

	@Override
	public List<Object> ArticleFindByPage(int pageNumber, int pageSize, String struta) {
		return managerDAO.ArticleFindByPage(pageNumber, pageSize, struta);
	}

}
