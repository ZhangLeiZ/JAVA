package com.th.serviceImpl;

import java.util.List;

import com.th.bean.Like;
import com.th.common.PageByEasyUi;
import com.th.dao.LikeDAO;
import com.th.service.LikeService;

public class LikeServiceImpl implements LikeService {

	private LikeDAO likeDAO;
	public void setLikeDAO(LikeDAO likeDAO) {
		this.likeDAO = likeDAO;
	}

	@Override
	public Like queryById(String id) {
		// TODO Auto-generated method stub
		return null;
	}	
	public void update(Like t) {
		// TODO Auto-generated method stub		
	}	
	public void delete(Like like) {
		likeDAO.delete(like);		
	}

	@Override
	public void valid(String id, String valid) {
		
	}
	public int count() {
		// TODO Auto-generated method stub
		return 0;
	}
	public List<Like> FindPage(int pageNumber, int pageSize) {
		// TODO Auto-generated method stub
		return null;
	}

	public void add(Like t) {
		likeDAO.add(t);
	}
	
	public PageByEasyUi<Like> pageById(PageByEasyUi<Like> page, String userId) {		
		return likeDAO.pageById(page, userId);
	}
	
	public void delete(String id) {
		likeDAO.delete(id);		
	}
	
	

}
