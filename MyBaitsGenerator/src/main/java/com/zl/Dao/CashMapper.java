package com.zl.Dao;

import com.zl.Bean.Cash;

public interface CashMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Cash record);

    int insertSelective(Cash record);

    Cash selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Cash record);

    int updateByPrimaryKey(Cash record);
}