package com.th.service;

import java.util.List;

import com.th.bean.Img;

public interface ImgService extends TopService<String, Img>{
	public List<Img> queryByIdImg(String id);
}
