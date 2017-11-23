package com.th.serviceImpl;

import java.util.List;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import com.th.bean.User;
import com.th.dao.UserDAO;
import com.th.service.UserService;

public class UserServiceImpl implements UserService {

	private UserDAO userDAO; 
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	private HttpServletRequest request;
	public HttpServletRequest getRequest() {
		return request;
	}
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}
	
	public void add(User t) {		
		
	}
	public User queryById(String id) {
		return null;
	}
	public void delete(User t) {
	
	}
	public void update(User t) {

	}
	public void valid(String id, String valid) {
	
	}
	public int count() {
		return 0;
	}
	public List<User> FindPage(int pageNumber, int pageSize) {
		return null;
	}
	

	public User register(User user) {
		return userDAO.register(user);
	}

	public User checkLoginUser(User user) {
		return userDAO.checkLoginUser(user);
	}
	
	public User addOrUpdate(User user,String user_id) {
		return userDAO.addOrUpdate(user,user_id);	
	}

	public void modifyPsd(User user, String user_phone) {
		userDAO.modifyPsd(user, user_phone);	
	}
	public User checkPhone(User user) {
		return userDAO.checkPhone(user);
	}
	public void forgetPsd(User user) {
		userDAO.forgetPsd(user);	
	}
	
	//随机生成指定长度的字符串
	public String getRandomString(int length){
		String str = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
		Random random = new Random();
		StringBuffer sb = new StringBuffer();
		for(int i=0;i<length;i++){
			int number = random.nextInt(62);
			sb.append(str.charAt(number));
		}
		return sb.toString();
	}
	
	

}
