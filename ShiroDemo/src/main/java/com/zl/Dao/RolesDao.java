package com.zl.Dao;

import com.zl.Bean.Role;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2017/10/9.
 */
@Repository
public interface RolesDao {
    List<String> RolesList(String username);
    List<Role> RolesPageList();
}
