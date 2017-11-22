package com.zl.Service.ServiceImpl;

import com.zl.Bean.Module;
import com.zl.Dao.ModuleDao;
import com.zl.Service.ModuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/10/10.
 */
@Service
public class ModuleServiceImpl implements ModuleService {
    @Autowired
    private ModuleDao moduleDao;
    public List<Module> moduleList() {
        return moduleDao.moduleList();
    }
}
