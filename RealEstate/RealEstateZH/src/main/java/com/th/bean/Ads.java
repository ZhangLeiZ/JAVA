package com.th.bean;

import java.io.Serializable;
//20.广告表t_ads
public class Ads implements Serializable{
	
	private static final long serialVersionUID = 1L;
	private String ads_id;	//编号,UUID，主键
	private String ads_title;	//广告标题,not null
	private String ads_content;	//广告描述,not null
	private String ads_logo;	//广告图片路径
	private String ad_url;	//广告URL路径，可链接到单独的广告页面
	private String show_status;	//是否显示，Y或N
	private int show_order;	//显示顺序，按照主页，详情页的从左到右，从上到下的顺序规定广告位置
	private String created_time;	//创建时间
	private String ads_status;	//状态，激活或冻结
	public String getAds_id() {
		return ads_id;
	}
	public void setAds_id(String ads_id) {
		this.ads_id = ads_id;
	}
	public String getAds_title() {
		return ads_title;
	}
	public void setAds_title(String ads_title) {
		this.ads_title = ads_title;
	}
	public String getAds_content() {
		return ads_content;
	}
	public void setAds_content(String ads_content) {
		this.ads_content = ads_content;
	}
	public String getAds_logo() {
		return ads_logo;
	}
	public void setAds_logo(String ads_logo) {
		this.ads_logo = ads_logo;
	}
	public String getAd_url() {
		return ad_url;
	}
	public void setAd_url(String ad_url) {
		this.ad_url = ad_url;
	}
	public String getShow_status() {
		return show_status;
	}
	public void setShow_status(String show_status) {
		this.show_status = show_status;
	}
	public int getShow_order() {
		return show_order;
	}
	public void setShow_order(int show_order) {
		this.show_order = show_order;
	}
	public String getCreated_time() {
		return created_time;
	}
	public void setCreated_time(String created_time) {
		this.created_time = created_time;
	}
	public String getAds_status() {
		return ads_status;
	}
	public void setAds_status(String ads_status) {
		this.ads_status = ads_status;
	}
	

}
