package com.th.bean;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class User implements Serializable {
	
	private static final long serialVersionUID = -8967481213651477877L;
	
	private String user_id;        //编号
	private String user_email;     //邮箱
	private String user_phone;     //手机号
	private String user_pwd;       //密码
	private String user_qq;        //QQ号
	private String user_wechat;    //微信号
	private String user_gender;    //性别
	private String user_birthday;  //生日
	private String user_nickname;  //昵称
	private String user_name;      //真实姓名
	private String headicon;       //用户头像
	
	//一对多:一的一端存放 Set集合
	private Set<Like> likes = new HashSet<Like>();
	private Set<History> historys = new HashSet<History>();
	private Set<Appointment> appointments = new HashSet<Appointment>(); 
	private Set<Message> messages = new HashSet<Message>();
	
	public Set<Message> getMessages() {
		return messages;
	}
	public void setMessages(Set<Message> messages) {
		this.messages = messages;
	}
	public Set<Appointment> getAppointments() {
		return appointments;
	}
	public void setAppointments(Set<Appointment> appointments) {
		this.appointments = appointments;
	}
	
	public Set<History> getHistorys() {
		return historys;
	}
	public void setHistorys(Set<History> historys) {
		this.historys = historys;
	}
	public Set<Like> getLikes() {
		return likes;
	}
	public void setLikes(Set<Like> likes) {
		this.likes = likes;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	public String getUser_qq() {
		return user_qq;
	}
	public void setUser_qq(String user_qq) {
		this.user_qq = user_qq;
	}
	public String getUser_wechat() {
		return user_wechat;
	}
	public void setUser_wechat(String user_wechat) {
		this.user_wechat = user_wechat;
	}
	public String getUser_gender() {
		return user_gender;
	}
	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}
	public String getUser_birthday() {
		return user_birthday;
	}
	public void setUser_birthday(String user_birthday) {
		this.user_birthday = user_birthday;
	}
	public String getUser_nickname() {
		return user_nickname;
	}
	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getHeadicon() {
		return headicon;
	}
	public void setHeadicon(String headicon) {
		this.headicon = headicon;
	}

}
