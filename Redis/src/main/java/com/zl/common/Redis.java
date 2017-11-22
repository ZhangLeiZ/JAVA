package com.zl.common;
import redis.clients.jedis.Jedis;

/**
 * Created by Administrator on 2017/11/7.
 */
public class Redis {
    public static void main (String [] args) {
        Jedis jedis = new Jedis("127.0.0.1", 6379, 60000);
        System.out.println("连接成功");
        System.out.println("服务正在运行: " + jedis.ping());
    }
}
