package com.th.dao;

import com.th.bean.User;

public interface UserDAO extends TopDAO<String,User> {
	
	public User register(User user);	//注册

	public User checkLoginUser(User user);  //检查登录用户
	
	public User addOrUpdate(User user,String user_id);     //新增，修改资料    
	
	public void modifyPsd(User user,String user_phone);    //修改密码
	
	public User checkPhone(User user);
	public void forgetPsd(User user);    //找回密码
}
