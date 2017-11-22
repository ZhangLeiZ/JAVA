package com.zl.Service.ServiceImpl;

import com.zl.Bean.User;
import com.zl.Dao.UsersDao;
import com.zl.Service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2017/9/28.
 */
@Service
public class UsersServiceImpl implements UsersService {
    @Autowired
    private UsersDao usersDao;
    public User UserFindBy(String username, String password) {
        return usersDao.UserFindBy(username,password);
    }
}
