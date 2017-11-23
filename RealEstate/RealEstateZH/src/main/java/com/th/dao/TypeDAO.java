package com.th.dao;

import com.th.bean.Type;
import com.th.common.PageByEasyUi;

public interface TypeDAO extends TopDAO<String,Type> {

	public PageByEasyUi<Type> page(PageByEasyUi<Type> page) ;
	public void valid(String id, String valid) ;
}
