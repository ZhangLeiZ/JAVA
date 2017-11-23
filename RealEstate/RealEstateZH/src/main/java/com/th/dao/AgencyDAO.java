package com.th.dao;

import com.th.bean.Agency;

public interface AgencyDAO extends TopDAO<String,Agency>{

	//验证登录账号和密码是否存在
	public abstract Agency agencylogin(String phone,String pwd);
	//验证登录状态
	public abstract Agency loginstatus(String status);
	//修改经销商数据
	public abstract Agency updateagency(Agency agency);
	//修改经销商密码
	public abstract void updatepwd(Agency agency);
}
