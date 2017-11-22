package com.zl.Service.ServiceImpl;

import com.zl.Bean.Permisson;
import com.zl.Dao.PermissonDao;
import com.zl.Service.PermissonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/10/9.
 */
@Service
public class PermissonServiceImpl implements PermissonService {
    @Autowired
    private PermissonDao permissonDao;
    public List<String> permissonList(String username) {
        return permissonDao.permissonList(username);
    }

    public List<Permisson> permissionPageList(Integer mid) {
        return permissonDao.permissionPageList(mid);
    }
}
