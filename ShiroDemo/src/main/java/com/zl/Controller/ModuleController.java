package com.zl.Controller;

import com.zl.Bean.Module;
import com.zl.Bean.zTree;
import com.zl.Service.ModuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/10/10.
 */
@Controller
@RequestMapping("/module")
public class ModuleController {
    @Autowired
    private ModuleService moduleService;
    @GetMapping("modulelist")
    @ResponseBody
    public List<zTree> GetModulelist(){
        try {
            List<Module> moduleList = moduleService.moduleList();
            List<zTree> zTreeList = new ArrayList<zTree>();
            for (Module module:moduleList) {
                zTreeList.add(new zTree(module.getId(),0,module.getName(),false,true,false));
            }
            return zTreeList;
        }catch (Exception e){
            e.printStackTrace();
        }


    return null;
    }
}
