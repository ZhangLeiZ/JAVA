package com.th.serviceImpl;

import java.util.List;

import com.th.bean.Article;
import com.th.bean.Type;
import com.th.dao.ArticleDAO;
import com.th.service.ArticleService;

public class ArticleServiceImpl implements ArticleService{

	private ArticleDAO articleDAOImpl;
	
	public void setArticleDAOImpl(ArticleDAO articleDAOImpl) {
		this.articleDAOImpl = articleDAOImpl;
	}

	@Override
	public Article queryById(String id) {
		
		return articleDAOImpl.queryById(id);
	}

	@Override
	public void delete(Article t) {
		articleDAOImpl.delete(t);
		
	}

	@Override
	public void update(Article t) {
		articleDAOImpl.update(t);
		
	}

	@Override
	public void add(Article t) {
		articleDAOImpl.add(t);
		
	}

	
	@Override
	public void valid(String id, String valid) {
		articleDAOImpl.valid(id, valid);
		
	}

	@Override
	public int count() {
		
		return articleDAOImpl.count();
	}

	@Override
	public List<Article> FindPage(int pageNumber, int pageSize) {
		
		return articleDAOImpl.FindPage(pageNumber, pageSize);
	}

	@Override
	public java.util.List<Type> List() {
		return articleDAOImpl.List();
	}

	@Override
	public java.util.List<Article> ArticleList() {
		return articleDAOImpl.ArticleList();
	}

}
