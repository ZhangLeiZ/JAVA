package com.th.serviceImpl;

import java.util.List;


import com.th.bean.Comment;
import com.th.common.PageByEasyUi;
import com.th.dao.CommentDAO;
import com.th.service.CommentService;

public class CommentServiceImpl implements CommentService{

	private CommentDAO commentDAO;
	public void setCommentDAO(CommentDAO commentDAO) {
		this.commentDAO = commentDAO;
	}
	
	public Comment queryById(String id) {
		return null;
	}
	public void delete(Comment t) {
		commentDAO.delete(t);
	}
	
	public int count() {
		return 0;
	}
	public List<Comment> FindPage(int pageNumber, int pageSize) {
		return null;
	}
	
	
	public void add(Comment comment) {
		commentDAO.add(comment);
	}
	public PageByEasyUi<Comment> pageById(PageByEasyUi<Comment> page, String userId) {
		return commentDAO.pageById(page, userId);
	}
	public void update(Comment comment) {
		commentDAO.update(comment);
	}	
	public void valid(String id, String valid) {
		commentDAO.valid(id, valid);
	}
	public List<Comment> listComment(){
		return commentDAO.listComment();
	}

	
	
	@Override
	public PageByEasyUi<Comment> queryByPage(PageByEasyUi<Comment> page) {
		
		return commentDAO.queryByPage(page);
	}	
	
	
	
	
	
}
