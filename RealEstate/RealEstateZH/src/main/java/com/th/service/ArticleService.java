package com.th.service;

import java.util.List;

import com.th.bean.Article;
import com.th.bean.Type;

public interface ArticleService extends TopService<String, Article>{

	public java.util.List<Type> List();
	public List<Article> ArticleList();
}
