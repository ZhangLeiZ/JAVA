package com.zl.Service;

import com.zl.Bean.Hero;

import java.util.List;

/**
 * Created by Administrator on 2017/11/7.
 */
public interface HeroService {
    void Addhero(List<Hero> heroList);
    List<Hero> SelectHero();
}
