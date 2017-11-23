package com.th.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;




import com.opensymphony.xwork2.ActionSupport;
import com.th.bean.Buildings;
import com.th.bean.Message;
import com.th.bean.User;
import com.th.common.PageByEasyUi;
import com.th.service.MessageService;

public class MessageAction extends ActionSupport implements SessionAware{
	
	private static final long serialVersionUID = 1101968021633722002L;

	private Message message;
	private MessageService messageService;
	
	private int pageSize;
	private int pageNumber;	
	private int total;
	private List<Message> rows;
	
	private String userId;
	private String messageId;
	
	private Buildings buildings;
	private User user;
	
	public Buildings getBuildings() {
		return buildings;
	}
	public void setBuildings(Buildings buildings) {
		this.buildings = buildings;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getMessageId() {
		return messageId;
	}
	public void setMessageId(String messageId) {
		this.messageId = messageId;
	}
	public Message getMessage() {
		return message;
	}
	public void setMessage(Message message) {
		this.message = message;
	}
	public void setMessageService(MessageService messageService) {
		this.messageService = messageService;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}	
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	public int getTotal() {
		return total;
	}	
	public List<Message> getRows() {
		return rows;
	}
	
	private Map mySession;       //session
	@Override
	public void setSession(Map session) {
		this.mySession = session;		
	}
	
	public String listMes(){
		return "list";
	}
	//添加
	public String addMessage(){
		message.setUser(user);
		message.setBuildings(buildings);
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		message.setLeave_time(df.format(new Date()));
		message.setMessage_status("激活");
		messageService.add(message);
		return "list";               
	}
	//分页
	public String listPage(){
		User u = (User)mySession.get("user");
		PageByEasyUi<Message> page = new PageByEasyUi<Message>();
		page.setPage(pageNumber);
		page.setPageSize(pageSize);
		page = messageService.pageById(page,u.getUser_id());
		rows = page.getRows();
		total = page.getTotal();		
		return "listPage";        
	}
	//修改
	public String updMessage(){
		messageService.update(message);
		return "list";
	}
	//激活冻结
	public String active(){
		messageService.valid(messageId, "激活");
		return "status";
	}
	public String inactive(){
		messageService.valid(messageId, "冻结");
		return "status";
	}
	
	

	private String prompt;
	public String getPrompt() {
		return prompt;
	}
	public void setPrompt(String prompt) {
		this.prompt = prompt;
	}

	public String messageList(){
		return "messageList";
	}
	public String list(){
		PageByEasyUi<Message> page=new PageByEasyUi<>();
		page.setPageSize(pageSize);
		page.setPage(pageNumber);
		page=messageService.queryByPage(page);
		rows=page.getRows();
		total=page.getTotal();
		return "list1";
	}
	public String updateMessage(){
		messageService.updateMessage(message);
		prompt="回复成功！";
		return "messageList";
	}
	public String deleteMessage(){
		prompt="删除成功！";
		messageService.delete(message);
		return "messageList";
	}
}
