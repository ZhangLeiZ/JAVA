package com.th.service;

import java.util.List;

public interface TopService<PK, T> {
	
	public T queryById(PK id);
	
	public void delete(T t);
	
	public void update(T t);
	
	public void add(T t);
	
	public void valid(PK id, String valid);
	
	public int count();
	
	public List<T> FindPage(int pageNumber,int pageSize);

}
