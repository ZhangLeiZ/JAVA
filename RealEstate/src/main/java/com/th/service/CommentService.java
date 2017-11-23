package com.th.service;

import java.util.List;

import com.th.bean.Comment;
import com.th.common.PageByEasyUi;

public interface CommentService extends TopService<String, Comment>{
	
	public PageByEasyUi<Comment> pageById(PageByEasyUi<Comment> page, String userId);
	public List<Comment> listComment();
	
	
	public PageByEasyUi<Comment> queryByPage(PageByEasyUi<Comment> page) ;
}
