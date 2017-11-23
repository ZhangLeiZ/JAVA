package com.th.serviceImpl;

import java.util.List;

import com.th.bean.Img;
import com.th.dao.ImgDAO;
import com.th.service.ImgService;

public class ImgServiceImpl implements ImgService{

	private ImgDAO imgDAOImpl;
	
	public void setImgDAOImpl(ImgDAO imgDAOImpl) {
		this.imgDAOImpl = imgDAOImpl;
	}

	@Override
	public Img queryById(String id) {
		
		return imgDAOImpl.queryById(id);
	}

	@Override
	public void delete(Img t) {
		imgDAOImpl.delete(t);
		
	}

	@Override
	public void update(Img t) {
		imgDAOImpl.update(t);
		
	}

	@Override
	public void add(Img t) {
		imgDAOImpl.add(t);
		
	}

	
	@Override
	public void valid(String id, String valid) {
		imgDAOImpl.valid(id, valid);
		
	}

	@Override
	public int count() {
		
		return imgDAOImpl.count();
	}

	@Override
	public List<Img> FindPage(int pageNumber, int pageSize) {
		
		return imgDAOImpl.FindPage(pageNumber, pageSize);
	}

	@Override
	public List<Img> queryByIdImg(String id) {
		return imgDAOImpl.queryByIdImg(id);
	}

}
