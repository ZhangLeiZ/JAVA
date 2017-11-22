package com.zl.Test;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.Factory;

import org.junit.Assert;
import org.junit.Test;


/**
 * Created by Administrator on 2017/9/28.
 */
/*@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(value = {"classpath:/config/spring-context.xml",
        "classpath:/config/spring-mybatis.xml"})*/
public class ShiroBodyTest {

    @Test
    public void TestShiro(){
        //1、获取SecurityManager工厂，此处使用Ini配置文件初始化SecurityManager
        Factory<SecurityManager> factory  = new IniSecurityManagerFactory("classpath:shiro-realm.ini");
        SecurityManager securitymanaager = factory.getInstance();
        //2、得到SecurityManager实例 并绑定给SecurityUtils
        SecurityUtils.setSecurityManager(securitymanaager);
        Subject subject = SecurityUtils.getSubject();
        try{
            //3、得到Subject及创建用户名/密码身份验证Token（即用户身份/凭证）
            UsernamePasswordToken Token = new UsernamePasswordToken("zhang","123456");
            subject.login(Token);
            Session session = subject.getSession();
            session.setAttribute("Token",Token);
            UsernamePasswordToken usernamePasswordToken = (UsernamePasswordToken)session.getAttribute("Token");
            //判断拥有权限：user:create
            System.out.println(subject.isPermitted("user:create"));
            //判断拥有权限：user:update and user:delete
            System.out.println(subject.isPermittedAll("user:update", "user:delete"));
            //判断没有权限：user:view
            System.out.println(subject.isPermitted("user:view"));
        } catch (UnknownAccountException e){
            e.printStackTrace();
            System.out.println("账户错误");
        } catch (IncorrectCredentialsException e) {
            e.printStackTrace();
            System.out.println("密码错误");
        } catch (AuthenticationException e){
            e.printStackTrace();
            System.out.println("账户或是密码错误");
        }
        subject.logout();//调用subject.logout退出，其会自动委托给SecurityManager.logout方法退出。
    }
}
