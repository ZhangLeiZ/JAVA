package com.th.dao;

import java.util.List;

import com.th.bean.Article;
import com.th.bean.Type;

public interface ArticleDAO extends TopDAO<String,Article>{

	public java.util.List<Type> List();
	public List<Article> ArticleList();
}
