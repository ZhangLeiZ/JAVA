<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/10/10
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath();%>
<html>
<head>
    <title>Title</title>
    <link href="<%=path %>/plugins/bootstrap/bootstrap.min.css" rel="stylesheet"/>
    <link href="<%=path %>/plugins/select2/select2.min.css" rel="stylesheet"/>
    <link href="<%=path %>/plugins/select2/select2-bootstrap.min.css" rel="stylesheet"/>
    <link href="<%=path %>/plugins/zTree/zTreeStyle/zTreeStyle.css" rel="stylesheet" />
</head>
<body class="container">
<div class="row">
    <div class="col-lg-2">
        <select id="role" name="role" class="form-control select2"></select>
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <ul id="pTree" class="ztree"></ul>
    </div>
</div>
</body>
</html>
<script src="<%=path %>/plugins/jquery-2.1.0.js"></script>
<script src="<%=path %>/plugins/bootstrap/bootstrap.min.js"></script>
<script src="<%=path %>/plugins/select2/select2.full.min.js"></script>
<script src="<%=path %>/plugins/zTree/jquery.ztree.all.min.js"></script>
<script>
    var setting = {
        check: {
            enable: true
        },
        data: { // 树的数据的形式
            simpleData: {
                enable: true,
                idKey: "id", // id编号命名
                pIdKey: "pId", // 父id编号命名
                rootId: 0
            }
        },
        async: {
            enable: true,
            url: '<%=path %>/permiss/permisslist',
            method: 'post',
            autoParam: ["id=mid"]
        }
    };
    $(function() {
        // 去获取角色的json数据
        $.get("<%=path %>/roles/rolelist",
            function (data) {
                $("#role").select2(
                    {
                        data:data,
                        placeholder:'请选择',
                        allowClear:false
                    }
                );
            }, "json"
        );
        $.get("<%=path %>/module/modulelist",
            function (data) {
                $.fn.zTree.init($('#pTree'), setting, data);
            }, "json"
        );
    });
</script>
