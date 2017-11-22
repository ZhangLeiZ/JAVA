/**
 * Created by Administrator on 2017/11/8.
 */
var app = angular.module('myapp', []);
app.controller('myCtrl', function($scope) {
    $scope.name = "John Doe";

    $scope.page = "Runoob";
    $scope.sayHello = function() {
        $scope.greeting = 'Hello ' + $scope.page + '!';
    };
    $scope.names=["h1","h2","h3","h4"];
    $scope.msg="hello";
});

app.filter('reverse', function() { //可以注入依赖
    return function(text) {
        return text.split("").reverse().join("");
    }
});

app.controller('myccc',function($scope,$rootScope){
    $rootScope.str="string";
    $scope.namess=["t1","t2","t3"];
});
app.controller('myppp',function($scope,$rootScope){
    $rootScope.strs="stringss";
    $scope.namesss=["y1","y2","y3"];
});
app.controller('clute',function($scope){
    $scope.lists=[{name:'name1',property:'p3'},
        {name:'name2',property:'p2'},
        {name:'name3',property:'p1'}];
});
