package com.zl.Dao;

import com.zl.Bean.cashType;

public interface cashTypeDao {
    int deleteByPrimaryKey(Long id);

    int insert(cashType record);

    int insertSelective(cashType record);

    cashType selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(cashType record);

    int updateByPrimaryKey(cashType record);
}