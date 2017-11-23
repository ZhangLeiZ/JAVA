package com.th.dao;

import java.util.List;

import com.th.bean.Img;

public interface ImgDAO extends TopDAO<String,Img>{
	public List<Img> queryByIdImg(String id);
}
