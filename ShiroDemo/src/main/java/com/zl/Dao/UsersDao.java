package com.zl.Dao;

import com.zl.Bean.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2017/9/28.
 */
@Repository
public interface UsersDao {
    User UserFindBy(@Param("usesrname") String username , @Param("password") String password);
}
