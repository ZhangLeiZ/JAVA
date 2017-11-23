package com.th.service;

import java.util.List;

import com.th.bean.Employee;
import com.th.bean.Mission;
import com.th.common.PageByEasyUi;
import com.th.common.Pager4EasyUI;

public interface MissionService extends TopService<String,Mission> {
	public PageByEasyUi<Mission> queryByPage(PageByEasyUi<Mission> page);
	public List<Employee> listEmp();
	public Mission missionFind(String emp) ;
	public PageByEasyUi<Mission> queryByPage(PageByEasyUi<Mission> page, String missid);
	public int countByid(String employee_id); 
	public Pager4EasyUI<Mission> queryByPage(Pager4EasyUI<Mission> page,String employee_id);
}
