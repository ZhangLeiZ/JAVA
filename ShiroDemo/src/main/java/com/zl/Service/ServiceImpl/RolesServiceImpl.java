package com.zl.Service.ServiceImpl;

import com.zl.Bean.Role;
import com.zl.Dao.RolesDao;
import com.zl.Service.RolesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/10/9.
 */
@Service
public class RolesServiceImpl implements RolesService {
    @Autowired
    private RolesDao rolesDao;
    public List<String> RolesList(String username) {
        return rolesDao.RolesList(username);
    }

    public List<Role> RolesPageList() {
        return rolesDao.RolesPageList();
    }
}
