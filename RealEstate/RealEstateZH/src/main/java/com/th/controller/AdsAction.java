package com.th.controller;

import com.opensymphony.xwork2.ActionSupport;
import com.th.bean.Ads;
import com.th.service.AdsService;

public class AdsAction extends ActionSupport{
	private Ads ads;
	private AdsService adsServiceImpl;
	public void setAdsServiceImpl(AdsService adsServiceImpl) {
		this.adsServiceImpl = adsServiceImpl;
	}
	public Ads getAds() {
		return ads;
	}
	public void setAds(Ads ads) {
		this.ads = ads;
	}
	public String Adsadd() throws Exception {
		adsServiceImpl.add(ads);
		return SUCCESS;
	}
	
}
