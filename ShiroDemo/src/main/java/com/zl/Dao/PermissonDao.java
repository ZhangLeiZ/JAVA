package com.zl.Dao;

import com.zl.Bean.Permisson;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2017/10/9.
 */
@Repository
public interface PermissonDao {
    List<String> permissonList(String username);
    List<Permisson> permissionPageList(Integer mid);
}
