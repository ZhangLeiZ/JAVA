package com.th.bean;

import java.io.Serializable;
//19.文章表t_article
public class Article implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String article_id	;	//编号,UUID，主键
	private String article_title;	//文章标题,not null
	private String article_abstracts;	//文章摘要,not null
	private String article_content;		//文章内容，not null
	private String article_logo;	//文章图片路径
	private String created_time;	//创建时间
	private String article_status;	//状态，激活或冻结
	private String contentUrl;//文章内容的URL地址
	public String getContentUrl() {
		return contentUrl;
	}
	public void setContentUrl(String contentUrl) {
		this.contentUrl = contentUrl;
	}
	public String getArticle_id() {
		return article_id;
	}
	public void setArticle_id(String article_id) {
		this.article_id = article_id;
	}
	public String getArticle_title() {
		return article_title;
	}
	public void setArticle_title(String article_title) {
		this.article_title = article_title;
	}
	public String getArticle_abstracts() {
		return article_abstracts;
	}
	public void setArticle_abstracts(String article_abstracts) {
		this.article_abstracts = article_abstracts;
	}
	public String getArticle_content() {
		return article_content;
	}
	public void setArticle_content(String article_content) {
		this.article_content = article_content;
	}
	public String getArticle_logo() {
		return article_logo;
	}
	public void setArticle_logo(String article_logo) {
		this.article_logo = article_logo;
	}
	public String getCreated_time() {
		return created_time;
	}
	public void setCreated_time(String created_time) {
		this.created_time = created_time;
	}
	public String getArticle_status() {
		return article_status;
	}
	public void setArticle_status(String article_status) {
		this.article_status = article_status;
	}

}
