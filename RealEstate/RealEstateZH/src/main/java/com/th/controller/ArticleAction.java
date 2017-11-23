package com.th.controller;

import com.opensymphony.xwork2.ActionSupport;
import com.th.bean.Article;
import com.th.service.ArticleService;

public class ArticleAction extends ActionSupport{
	private Article article;
	private ArticleService articleServiceImpl;
	public void setArticleServiceImpl(ArticleService articleServiceImpl) {
		this.articleServiceImpl = articleServiceImpl;
	}
	public Article getArticle() {
		return article;
	}
	public void setArticle(Article article) {
		this.article = article;
	}
	public String Articleadd() throws Exception {
	articleServiceImpl.add(article);
		return SUCCESS;
	}
	
}
