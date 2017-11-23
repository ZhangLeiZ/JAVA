package com.th.serviceImpl;

import java.util.List;

import com.th.bean.Employee;
import com.th.bean.Mission;
import com.th.common.PageByEasyUi;
import com.th.common.Pager4EasyUI;
import com.th.dao.MissionDAO;
import com.th.service.MissionService;

public class MissionServiceImpl implements MissionService {

	private MissionDAO missionDAO;  
	public void setMissionDAO(MissionDAO missionDAO) {
		this.missionDAO = missionDAO;
	}

	@Override
	public Mission queryById(String id) {
		// TODO Auto-generated method stub
		return missionDAO.queryById(id);
	}

	@Override
	public void delete(Mission t) {
		missionDAO.delete(t);
		
	}

	@Override
	public void update(Mission t) {
		missionDAO.update(t);
		
	}

	@Override
	public void add(Mission t) {
		missionDAO.add(t);
		
	}

	@Override
	public void valid(String id, String valid) {
		missionDAO.valid(id, valid);
		
	}

	@Override
	public int count() {
		return missionDAO.count();
	}

	@Override
	public List<Mission> FindPage(int pageNumber, int pageSize) {
		return missionDAO.FindPage(pageNumber, pageSize);
	}

	@Override
	public PageByEasyUi<Mission> queryByPage(PageByEasyUi<Mission> page) {
		
		return missionDAO.queryByPage(page);
	}

	@Override
	public List<Employee> listEmp() {
		
		return missionDAO.listEmp();
	}

	@Override
	public Mission missionFind(String emp) {
		// TODO Auto-generated method stub
		return missionDAO.missionFind(emp);
	}

	@Override
	public PageByEasyUi<Mission> queryByPage(PageByEasyUi<Mission> page, String missid) {
		// TODO Auto-generated method stub
		return missionDAO.queryByPage(page, missid);
	}

	@Override
	public int countByid(String employee_id) {
		// TODO Auto-generated method stub
		return missionDAO.countByid(employee_id);
	}

	@Override
	public Pager4EasyUI<Mission> queryByPage(Pager4EasyUI<Mission> page, String employee_id) {
		// TODO Auto-generated method stub
		return missionDAO.queryByPage(page, employee_id);
	}

}
