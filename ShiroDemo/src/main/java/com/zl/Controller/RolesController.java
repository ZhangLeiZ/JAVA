package com.zl.Controller;

import com.zl.Bean.Role;
import com.zl.Bean.Select2;
import com.zl.Service.RolesService;
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
@RequestMapping("/roles")
public class RolesController {
    @Autowired
    private RolesService rolesService;

    @GetMapping("rolelist")
    @ResponseBody
    public List<Select2> pageRole(){
        List<Role> rolelist = rolesService.RolesPageList();
        List<Select2> selectlist = new ArrayList<Select2>();
        for (Role role:rolelist) {
            selectlist.add(new Select2(role.getId(),role.getRolename()));
        }
        return selectlist;
    }
    @RequestMapping("page")
    public String page(){
        return "perminssion";
    }
}
