package com.zl.Bean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.Resource;
import org.springframework.data.redis.connection.RedisClusterConnection;
import org.springframework.data.redis.connection.RedisClusterNode;
import org.springframework.data.redis.connection.jedis.JedisClusterConnection;
import org.springframework.data.redis.core.RedisTemplate;
import redis.clients.jedis.HostAndPort;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisCluster;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashSet;
import java.util.Properties;
import java.util.Set;
import java.util.regex.Pattern;

/**
 * Created by Administrator on 2017/11/9.
 */
public class TestJedisCluster {
    @Autowired
    private RedisTemplate redisTemplate;
    private Resource addressConfig;
    private String addressKeyPrefix ;
    private Pattern p = Pattern.compile("^.+[:]\\d{1,5}\\s*$");
    public static void main(String[] args) throws Exception {
       /* TestJedisCluster test = new TestJedisCluster();
        Set<HostAndPort> hostAndPortSet = test.parseHostAndPort();*/
        /*Jedis jedis = new Jedis("192.168.3.119", 6379, 60000);
        System.out.println("连接成功");
        System.out.println("服务正在运行: " + jedis.ping());
        ApplicationContext context = new ClassPathXmlApplicationContext("file:C:/Users/Administrator/Desktop/SSH/Redis/src/main/resources/config/spring-redis-single.xml");
        JedisCluster jc = context.getBean(JedisCluster.class);*/

        HostAndPort host1 = new HostAndPort("192.168.3.119", 6379);
        HostAndPort host2 = new HostAndPort("192.168.3.119", 6376);
        HostAndPort host3 = new HostAndPort("192.168.3.119", 6377);
        Set<HostAndPort> hosts = new HashSet<HostAndPort>();
        hosts.add(host1);
        hosts.add(host2);
        hosts.add(host3);
        JedisCluster cluster = new JedisCluster(hosts, 60 * 1000);
        System.out.println("服务正在运行: " + cluster.ping());
        cluster.set("key1", "value1");
        System.out.println(cluster.get("key1"));

         System.out.println(cluster.set("name", "yucong"));
         System.out.println(cluster.set("age", "28"));
         System.out.println(cluster.set("sex", "男"));

        System.out.println(cluster.get("name"));
         System.out.println(cluster.get("age"));
        System.out.println(cluster.get("sex"));

    }
    private Set<HostAndPort> parseHostAndPort() throws Exception {
        try {
            Properties prop = new Properties();
            prop.load(this.addressConfig.getInputStream());

            Set<HostAndPort> haps = new HashSet<HostAndPort>();
            for (Object key : prop.keySet()) {

                if (!((String) key).startsWith(addressKeyPrefix)) {
                    continue;
                }

                String val = (String) prop.get(key);

                boolean isIpPort = p.matcher(val).matches();

                if (!isIpPort) {
                    throw new IllegalArgumentException("ip 或 port 不合法");
                }
                String[] ipAndPort = val.split(":");

                HostAndPort hap = new HostAndPort(ipAndPort[0], Integer.parseInt(ipAndPort[1]));
                haps.add(hap);
            }

            return haps;
        } catch (IllegalArgumentException ex) {
            throw ex;
        } catch (Exception ex) {
            throw new Exception("解析 jedis 配置文件失败", ex);
        }
    }
}
