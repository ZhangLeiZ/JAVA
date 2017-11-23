package com.th.dao;

import java.util.List;

import com.th.bean.Agency;
import com.th.bean.Building;
import com.th.bean.Employee;
import com.th.bean.Manager;

public interface ManagerDAO extends TopDAO<String,Manager> {
	public abstract List<Object> AgencyFindByPage(int pageNumber,int pageSize,String struta);
	public abstract void ExamineAndverify(String struta,String id); 
	public abstract Manager Managerlogin(String account,String pwd);
	public abstract int managerCount(String sql);
	public abstract void StatusUp(String sql);
	public abstract List<Object> EmployeeFindByPage(int pageNumber,int pageSize,String struta);
	public abstract List<Object> UserFindByPage(int pageNumber,int pageSize,String struta);
	public abstract List<Object> ActivityFindByPage(int pageNumber,int pageSize,String struta);
	public abstract List<Object> ArticleFindByPage(int pageNumber,int pageSize,String struta);

}
