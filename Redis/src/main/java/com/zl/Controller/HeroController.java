package com.zl.Controller;

import com.zl.Bean.Hero;
import com.zl.Service.HeroService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by Administrator on 2017/11/7.
 */
@Controller
@RequestMapping("/hero")
public class HeroController {
    @Autowired
    private HeroService heroService;

    @RequestMapping("select")
    public String SelectHero() {
        List<Hero> heroList = heroService.SelectHero();
        for (Hero h:heroList) {
            System.out.println("名称："+h.gethName());
        }
        return "index";
    }
}
