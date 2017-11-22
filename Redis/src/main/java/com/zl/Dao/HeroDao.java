package com.zl.Dao;

import com.zl.Bean.Hero;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2017/11/7.
 */
@Repository
public interface HeroDao {
    void Addhero(List<Hero> heroList);
    List<Hero> SelectHero();
}
