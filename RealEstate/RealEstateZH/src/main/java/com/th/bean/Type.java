package com.th.bean;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
//18.文章类别表t_article_type
public class Type implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String type_id;    //	编号,UUID，主键
	private String type_name;	//类别名称，uniquue,not null
	private String type_des;	//类别描述
	private String type_status; //状态
	
	private Set<Article> articlelist = new HashSet<Article>();
	public Set<Article> getArticlelist() {
		return articlelist;
	}
	public void setArticlelist(Set<Article> articlelist) {
		this.articlelist = articlelist;
	}
	
	public String getType_status() {
		return type_status;
	}
	public void setType_status(String type_status) {
		this.type_status = type_status;
	}
	
	public String getType_id() {
		return type_id;
	}
	public void setType_id(String type_id) {
		this.type_id = type_id;
	}
	public String getType_name() {
		return type_name;
	}
	public void setType_name(String type_name) {
		this.type_name = type_name;
	}
	public String getType_des() {
		return type_des;
	}
	public void setType_des(String type_des) {
		this.type_des = type_des;
	}

}
