package com.zl.Service;

import com.zl.Bean.User;

/**
 * Created by Administrator on 2017/9/28.
 */
public interface UsersService {
    User UserFindBy(String username,String password);
}
