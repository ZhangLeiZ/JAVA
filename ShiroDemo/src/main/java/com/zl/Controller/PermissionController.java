package com.zl.Controller;

import com.zl.Bean.Permisson;
import com.zl.Bean.zTree;
import com.zl.Service.PermissonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/10/10.
 */
@Controller
@RequestMapping("/permiss")
public class PermissionController {
    @Autowired
    private PermissonService permissonService;
    @PostMapping("permisslist")
    @ResponseBody
    public List<zTree> permissionList(Integer mid){
        try{
            List<Permisson> permissonList = permissonService.permissionPageList(mid);
            List<zTree> zTreeList = new ArrayList<zTree>();
            for (Permisson p:permissonList) {
                zTreeList.add(new zTree(p.getId(),mid,p.getPermission(),false,false,true));
            }
            return zTreeList;
        }catch (Exception e){
            e.printStackTrace();
        }
       return null;
    }
}
