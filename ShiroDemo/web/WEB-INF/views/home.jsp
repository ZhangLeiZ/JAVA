<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/27
  Time: 8:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <shiro:authenticated>
    只有登录的用户才能看的
  </shiro:authenticated>
  <shiro:principal/>
  <shiro:hasRole name="role1">
    role1可以看到人
  </shiro:hasRole>
  <shiro:hasAnyRoles name="role1,role2">
    role1或role2可以看到的内容
  </shiro:hasAnyRoles>
  <shiro:hasPermission name="user:add">
    拥有user:add权限的用户才可以看到的内容
  </shiro:hasPermission>
  都可以看的内容
  </body>
</html>
