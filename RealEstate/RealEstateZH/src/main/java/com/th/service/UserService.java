package com.th.service;

import com.th.bean.User;

public interface UserService extends TopService<String, User> {

	public User register(User user);
	
	public User checkLoginUser(User user);
	
	public User addOrUpdate(User user,String user_id);     
	
	public void modifyPsd(User user,String user_phone);
	public User checkPhone(User user);
	public void forgetPsd(User user);    
	
	public String getRandomString(int length);
}
