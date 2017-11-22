<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/11/7
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath();%>
<html>
<script src="http://cdn.static.runoob.com/libs/angular.js/1.4.6/angular.min.js"></script>
<head>
    <title>$Title$</title>
  </head>
  <body>
  <div ng-app="myapp" ng-init="quantity=1;cost=5;munber1=2;munber2=3" ng-controller="myCtrl">
      1.<p>总价: {{ quantity * cost }}</p>
     2. <h2>计算器</h2>
      <input type="number" ng-model="munber1"/>
      <input type="number" ng-model="munber2"/>
      <p>计算：{{ munber1 * munber2 |currency }}
      3. 名字：<input type="text" ng-model="name">
      <p>名字：{{ name }}</p>
      4.时间格式：<p>{{1490161945000 | date:"yyyy-MM-dd HH:mm:ss"}}</p>
      5.number 格式化（保留小数）<p>{{149016.1945000 | number:2}}</p>
      6.currency货币格式化<p>{{ 250 | currency:"RMB ￥ " }}</p>
      7.limitTo 截取<p>{{"1234567890" | limitTo :6}} // 从前面开始截取6位
      8.{{"1234567890" | limitTo:-4}} // 从后面开始截取4位</p>
      输入：<input type="text" ng-model="page"/>
      <p>输出值：{{ greeting | uppercase }}</p>

      <button ng-click="sayHello()">点我！</button>

      <ul>
          <li ng-repeat="x in names">{{ x }}</li>
      </ul>

      <input type="text" ng-model="msg"/>
      姓名: {{ msg | reverse |uppercase }}

      <div ng-controller="myccc">
          <p>{{ $root.str }}</p>
          <ul>
              <li ng-repeat="x in namess">{{ x }}</li>
          </ul>
          <div ng-controller="myppp">
              <p>{{ $root.strs }}</p>
              <ul>
                  <li ng-repeat="x in namesss">{{ x }}</li>
              </ul>
          </div>
          <div ng-controller="clute">
             输入过滤： <input type="text" ng-model="test"/>
              <ul>
                  <li ng-repeat="x in lists |filter:test | orderBy:'name'">{{(x.name | uppercase)+','+x.property}}</li>
              </ul>
          </div>
      </div>
  </div>



 成功
  </body>

<script src="<%=path %>/static/js/personController.js"></script>
</html>
