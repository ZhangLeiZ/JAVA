package com.zl.Dao;

import com.zl.Bean.loginLog;

public interface loginLogDao {
    int deleteByPrimaryKey(Long id);

    int insert(loginLog record);

    int insertSelective(loginLog record);

    loginLog selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(loginLog record);

    int updateByPrimaryKey(loginLog record);
}