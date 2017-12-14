package com.zl.Dao;

import com.zl.Bean.payType;

public interface payTypeDao {
    int deleteByPrimaryKey(Long id);

    int insert(payType record);

    int insertSelective(payType record);

    payType selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(payType record);

    int updateByPrimaryKey(payType record);
}