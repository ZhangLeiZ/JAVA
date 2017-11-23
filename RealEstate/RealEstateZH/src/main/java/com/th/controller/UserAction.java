package com.th.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ActionSupport;
import com.th.bean.User;
import com.th.common.SendCode;
import com.th.service.UserService;
import com.th.common.EncryptUtil;

public class UserAction extends ActionSupport implements SessionAware {
	
	private static final long serialVersionUID = 1L;
	
	private User user;
	private UserService userService;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	private Map mySession;       //session
	@Override
	public void setSession(Map session) {
		this.mySession = session;		
	}
	
	private HttpServletRequest request = ServletActionContext.getRequest();
	private HttpServletResponse response = ServletActionContext.getResponse();
	public HttpServletRequest getRequest() {
		return request;
	}
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}
	public HttpServletResponse getResponse() {
		return response;
	}
	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}
	
	//文件上传
	private File logoFile;    //文件对象与file控件的name对应（同名）               
	private String logoFileFileName;//文件名：文件对象+FlieName 这样可以自动获取页面文件名称
	public File getLogoFile() {
		return logoFile;
	}
	public void setLogoFile(File logoFile) {
		this.logoFile = logoFile;
	}
	public String getLogoFileFileName() {
		return logoFileFileName;
	}
	public void setLogoFileFileName(String logoFileFileName) {
		this.logoFileFileName = logoFileFileName;
	}
	
	//起始访问页(登录注册)
	public String page() {  
		return "register";
	}
	//短信验证码
	public String duanadd() throws Exception {
		response.setContentType("text/html,charset=utf-8");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");		
		SendCode send = new SendCode();
		int mobile_code = send.sendsms(request.getParameter("phone"));
		PrintWriter out = response.getWriter();
	    out.print(mobile_code);
	    out.flush();
		out.close();		
		return "code";       //接收验证码还是在注册页面
	}
	//注册
	public String register(){	
		user.setUser_pwd(EncryptUtil.md5Encrypt(user.getUser_pwd()));  //密码加密
		if(userService.register(user)!=null){
			return "regSuccess";         //注册成功跳转到登录页面
		}else{
			request.setAttribute("msg1","手机号已注册，请登录！");
			return "regSuccess";
		}
	}        
	//登录
	public String login(){		
		if(userService.checkLoginUser(user) != null){
			mySession.put("user", userService.checkLoginUser(user)); //用session保存该用户信息	
			setCookie(request,response,user.getUser_phone(),user.getUser_pwd());
	        return "loginSuccess";
	    }else{			    	
			request.setAttribute("msg2", "手机号码或密码错误，登录失败！");
	        return "loginFail";
	    }
	}
	//设置用户登录的有效期
	private void setCookie(HttpServletRequest request, HttpServletResponse response, String phone,String password){
		Cookie cookie1 = new Cookie("phone",phone);
    	Cookie cookie2 = new Cookie("password",password);   	
		cookie1.setMaxAge(24*60*60*30);  //设置30天的有效期,单位是秒
		cookie2.setMaxAge(24*60*60*30);		
//	    System.out.println(cookie1.getName()+"="+cookie1.getValue());
//	   	System.out.println(cookie2.getName()+"="+cookie2.getValue());   	
    	cookie1.setPath(request.getContextPath()); //设置保存路径
    	cookie2.setPath(request.getContextPath());    	
    	response.addCookie(cookie1);
    	response.addCookie(cookie2);
	}
	//自动登录
	public String autoLogin(){
		String phone = request.getParameter("nickname").trim();
		String pwd = request.getParameter("password").trim();
		user.setUser_phone(phone);
		user.setUser_pwd(pwd);
		if(userService.checkLoginUser(user) != null){
			mySession.put("user", userService.checkLoginUser(user)); //用session保存该用户信息	
			setCookie(request,response,user.getUser_phone(),user.getUser_pwd());
	        return "loginSuccess";
	    }else{			    	
			request.setAttribute("msg2", "手机号码或密码错误，登录失败！");
	        return "loginFail";
	    }
	}
	public String safeExit(){
			//使session失效
		mySession.clear();
		Cookie cookie1 = new Cookie("phone",URLEncoder.encode(""));
    	Cookie cookie2 = new Cookie("password",URLEncoder.encode(""));
		cookie1.setMaxAge(0);
		cookie2.setMaxAge(0);
    	cookie1.setPath(request.getContextPath());
    	cookie2.setPath(request.getContextPath());
    	response.addCookie(cookie1);
    	response.addCookie(cookie2);
    	return "index";
	}
	
	//资料的新增修改
	public String userInfo(){
		if(logoFile!=null){   //选择了文件
			//保存文件的路径(文件夹)，必须是tomcat里面当前项目下的子路径 
	        String filePath = request.getServletContext().getRealPath("/attached");        
	        File file = new File(filePath);        
	        if(!file.exists()){
	        	file.mkdirs();   //创建该路径(目标文件夹)   
	        }   
	        //重新定义文件名称
	        String newFileName = userService.getRandomString(4)+logoFileFileName;  
	        try {
	        	//把文件保存至目标文件夹          文件                                                 目标文件夹        文件名称
				FileUtils.copyFile(logoFile, new File(file,newFileName));
			} catch (IOException e) {
				e.printStackTrace();   
			}
	        user.setHeadicon(newFileName);  //设置图片(头像)
		}else{
			User u = (User) mySession.get("user");  //获取登录时session保存的user
			user.setHeadicon(u.getHeadicon());  //设置图片(头像)
		}
		User u1 = (User) mySession.get("user");  //获取登录时session保存的user
		//修改并且用session保存修改后的user                     session的id  
		mySession.put("user", userService.addOrUpdate(user,u1.getUser_id())); 
		return "info";   
	}                      
	//修改,找回密码的短信验证码
	public String psdCode() throws Exception {
		response.setContentType("text/html,charset=utf-8");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");		
		SendCode send = new SendCode();
		int mobile_code = send.sendsms(request.getParameter("phone"));
		PrintWriter out = response.getWriter();
	    out.print(mobile_code);
	    out.flush();
		out.close();		
		return "psdCode";     
	}
	//忘记密码
	public String forgetPsd(){
		if(userService.checkPhone(user)!= null){
			userService.forgetPsd(user);
			return "forgetPsd";
		}else{
			request.setAttribute("msg","手机号未注册，请先注册！");
			return "forgetPsd";       
		} 
	}
	//修改密码
	public String modifyPsd(){
		User u = (User) mySession.get("user");
		userService.modifyPsd(user,u.getUser_phone());
		return "skipUserInfo";     
	} 
	
	
	//页面跳转
	public String skipForgetPsd(){
		return "skipForgetPsd";
	}
	public String skipUserInfo(){
		return "skipUserInfo";
	}
	public String skipModifyPsd(){ 
		return "skipModifyPsd";
	}
	
	         

}
