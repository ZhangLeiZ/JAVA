<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/11/7
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<script src="http://cdn.static.runoob.com/libs/angular.js/1.4.6/angular.min.js"></script>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <div ng-app="myapp">


    <ul>
      <li ng-repeat="x in names">{{ x }}</li>
    </ul>
  </div>
  </body>
</html>
