package com.zl.Service.ServiceImpl;

import com.zl.Bean.Hero;
import com.zl.Dao.HeroDao;
import com.zl.Service.HeroService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.ListOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import redis.clients.jedis.JedisCluster;
import redis.clients.jedis.ShardedJedisPool;

import java.util.List;

/**
 * Created by Administrator on 2017/11/7.
 */
@Service
public class HeroServiceImpl implements HeroService {

    @Autowired
    private RedisTemplate redisTemplate;
    @Autowired
    private JedisCluster jedisCluster;
    @Autowired
    private HeroDao heroDao;

    private ShardedJedisPool shardedJedisPool;
    @Override
    public void Addhero(List<Hero> heroList) {
        heroDao.Addhero(heroList);
    }

    @Override
    public List<Hero> SelectHero() {
        List<String> heroLists = jedisCluster.lrange("selecthero",0,20);
        ListOperations<String,Hero> listOperations = redisTemplate.opsForList();
        List<Hero> heroList = listOperations.range("selecthero",0,20);
        if(heroList != null && heroList.size()>0){
            return heroList;
        }else{
            List<Hero> herolists = heroDao.SelectHero();
            listOperations.leftPushAll("selecthero",herolists);

            return herolists;
        }
    }
}
