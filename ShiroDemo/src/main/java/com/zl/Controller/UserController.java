package com.zl.Controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.servlet.SimpleCookie;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2017/9/29.
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @GetMapping("login_page")
    public String showLogin() {
        return "login";
    }

    @PostMapping("login")
    public String login(String name, String password) {
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(name, password);
        try {
            token.setRememberMe(true);
            subject.login(token);
            System.out.print("sssssssssssssssss"+subject.isAuthenticated());
            return "home";
        } catch (AuthenticationException e) {
            return "unauth";
        }


    }

    @GetMapping("home")
    public String homePage() {
        return "home";
    }

    @GetMapping("logout")
    public String logout() {
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        return "home";
    }


    @GetMapping("tree")
    public String Treeview() {
        return "treeview";
    }

}
