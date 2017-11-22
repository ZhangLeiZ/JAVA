package com.zl.Service;

import com.zl.Bean.Role;

import java.util.List;

/**
 * Created by Administrator on 2017/10/9.
 */
public interface RolesService {
    List<String> RolesList(String username);
    List<Role> RolesPageList();
}
