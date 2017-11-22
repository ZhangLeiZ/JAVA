package com.zl.Service;

import com.zl.Bean.Permisson;

import java.util.List;

/**
 * Created by Administrator on 2017/10/9.
 */
public interface PermissonService {
    List<String> permissonList(String username);
    List<Permisson> permissionPageList(Integer mid);
}
