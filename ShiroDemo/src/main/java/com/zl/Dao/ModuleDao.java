package com.zl.Dao;

import com.zl.Bean.Module;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2017/10/10.
 */
@Repository
public interface ModuleDao {
    List<Module> moduleList();
}
