package com.zl.Test;

/**
 * Created by Administrator on 2017/9/28.
 */

import com.zl.Bean.User;
import com.zl.Service.UsersService;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(value = {"classpath:/config/spring-context.xml",
        "classpath:/config/spring-mybatis.xml"})
public class ShiroTreeTest extends AuthorizingRealm{
    @Resource
    private UsersService usersService;
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        return null;
    }

    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {

        String username = (String)authenticationToken.getPrincipal();
        String password = String.valueOf((char[])authenticationToken.getCredentials());
        User user = usersService.UserFindBy(username,password);
        if(user != null){
            return new SimpleAuthenticationInfo(username,password,"myrealm2");
        }

        return null;
    }
}
