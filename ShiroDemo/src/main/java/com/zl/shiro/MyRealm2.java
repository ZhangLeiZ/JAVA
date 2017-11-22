package com.zl.shiro;

import com.zl.Bean.User;
import com.zl.Service.PermissonService;
import com.zl.Service.RolesService;
import com.zl.Service.UsersService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.web.tags.SecureTag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.Collection;
import java.util.Set;

/**
 * Created by Administrator on 2017/9/27.
 */
@Component
public class MyRealm2 extends AuthorizingRealm {
    @Autowired
    private UsersService usersService;
    @Autowired
    private RolesService rolesService;
    @Autowired
    private PermissonService permissonService;
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        String username = principalCollection.getPrimaryPrincipal().toString();
        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
        authorizationInfo.setRoles(ConllerSet.listToSet(rolesService.RolesList(username)));
        authorizationInfo.setStringPermissions(ConllerSet.listToSet(permissonService.permissonList(username)));
        Set<String> set = principalCollection.getRealmNames();
        for (String s:set) {
            System.out.println("aaaa"+s);
        }
        Set<String> sets  = (Set<String>) principalCollection.fromRealm("myrealm2");
        for (String se:sets) {
            System.out.println("qqqqq"+se);
        }
        return authorizationInfo;
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
