package com.th.dao;

import java.util.List;

import com.th.bean.Comment;
import com.th.common.PageByEasyUi;

public interface CommentDAO extends TopDAO<String, Comment>{

	public int countById(String id);
	
	public PageByEasyUi<Comment> pageById(PageByEasyUi<Comment> page, String userId);
	
	public List<Comment> listComment();	
	
	
	public PageByEasyUi<Comment> queryByPage(PageByEasyUi<Comment> page);
}
