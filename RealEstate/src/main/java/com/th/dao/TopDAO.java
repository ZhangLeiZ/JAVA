package com.th.dao;

import java.util.List;

public interface TopDAO<PK, T> {
	
	public T queryById(PK id);
	
	public void delete(T t);
	
	public void update(T t);
	
	public void add(T t);
	
	public void valid(PK id, String valid);
	
	public int count();
	
	public List<T> FindPage(int pageNumber,int pageSize);

}
