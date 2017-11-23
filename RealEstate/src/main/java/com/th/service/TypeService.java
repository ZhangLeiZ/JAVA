package com.th.service;

import com.th.bean.Type;
import com.th.common.PageByEasyUi;

public interface TypeService extends TopService<String, Type> {

	public PageByEasyUi<Type> page(PageByEasyUi<Type> page) ;
	public void valid(String id, String valid) ;
}
