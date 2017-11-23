package com.th.controller;

import java.text.SimpleDateFormat;

import java.util.Date;
import java.util.List;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.th.bean.Buildings;
import com.th.bean.Comment;
import com.th.bean.User;
import com.th.common.PageByEasyUi;
import com.th.service.CommentService;

public class CommentAction extends ActionSupport implements SessionAware{

	private static final long serialVersionUID = 1L;
	
	private Comment comment;
	private CommentService commentService;
	private int pageSize;
	private int pageNumber;	
	private int total;
	private List<Comment> rows;
	private String commentId;    //作为链接中的参数
	private String userId;
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
	public String getCommentId() {
		return commentId;
	}
	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}
	public Comment getComment() {
		return comment;
	}
	public void setComment(Comment comment) {
		this.comment = comment;
	}
	public void setCommentService(CommentService commentService) {
		this.commentService = commentService;
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
	public List<Comment> getRows() {
		return rows;
	}
	
	
	private Map mySession;       //session
	@Override
	public void setSession(Map session) {
		this.mySession = session;		
	}
	
	public String listCom(){
		return "list";
	}
	//添加
	public String addComment(){
		comment.setUser(user);
		comment.setBuildings(buildings);
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		comment.setComment_time(df.format(new Date()));
		comment.setComment_status("激活");
		commentService.add(comment);
		List<Comment> commentList = commentService.listComment();
		return "commentList";
	}
	//分页
	public String listPage(){
		User u = (User)mySession.get("user");
		PageByEasyUi<Comment> page = new PageByEasyUi<Comment>();
		page.setPage(pageNumber);
		page.setPageSize(pageSize);
		page = commentService.pageById(page,u.getUser_id());
		rows = page.getRows();
		total = page.getTotal();		
		return "listPage";        
	}
	//修改
	public String updateComment(){
		commentService.update(comment);
		return "list";
	}
	//激活冻结
	public String active(){
		commentService.valid(commentId, "激活");
		return "status";
	}
	public String inactive(){
		commentService.valid(commentId, "冻结");
		return "status";
	}
	
	
	
	private String prompt;
	public String getPrompt() {
		return prompt;
	}
	public void setPrompt(String prompt) {
		this.prompt = prompt;
	}
	
	public String comList(){
		return "comList";
	}
	public String list(){
		PageByEasyUi<Comment> page=new PageByEasyUi<>();
		page.setPageSize(pageSize);
		page.setPage(pageNumber);
		page=commentService.queryByPage(page);
		rows=page.getRows();
		total=page.getTotal();
		return "list1";
	}
	public String deleteComment(){
		commentService.delete(comment);
		prompt="删除成功！";
		return "comList";
	}
	
}
