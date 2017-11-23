<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
    	String path = request.getContextPath();
    %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="keywords" content="" />
		<meta name="description" content="" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>我的点赞</title>
	
	<!-- 分页css -->
	<link rel="stylesheet" type="text/css" href="<%=path %>/Css/Lcss/bootstrap/bootstrap-table.css">
	<link rel="stylesheet" href="<%=path%>/Css/Lcss/bootstrap/vendor/bootstrap/css/bootstrap.css"/>
	<!-- 提示窗口 -->
	<link rel="stylesheet" href="<%=path%>/Css/sweetalert.css"/>
	<script src="<%=path%>/Js/sweetalert-dev.js"></script>	
	
</head>
<body>
	<h3 align="center">点赞详情</h3>
	<div class="container">
		<div class="row" style="width: 860px">
			<!-- 表格工具栏-->
			<div id="toolbar" class="btn-group">
				
		        <button id="deleteLik" class="del btn btn-default" style="width: 100px">
		            <span class="glyphicon glyphicon-trash" aria-hidden="true">取消点赞</span>
		        </button>
		    </div>
		 	<!-- 表格 -->
            <div class="col-xs-12">
                <table id="tb" class="table table-bordered table-hover table-condensed" data-toggle="table"
					data-url="<%=path %>/like/listPage" data-pagination="true" data-striped="true">
					<thead>
						<tr>
							<th data-field="state" data-radio="true"></th>
							<th data-field="buildings.buildings_name">楼盘名称</th>
							<th data-field="buildings.buildings_logo">楼盘封面</th>
							<th data-field="created_time">点赞时间</th>							
						</tr>
					</thead>
				</table>
            </div>
	    </div>
	</div>     		
</body>	
	<!-- 分页js -->
   	<script src="<%=path %>/Css/Lcss/bootstrap/vendor/jquery/jquery-1.10.2.min.js"></script>
	<script src="<%=path %>/Js/Ljs/bootstrap-table.js"></script>
	<script src="<%=path %>/Js/Ljs/bootstrap-table-zh-CN.js"></script>
	<script src="<%=path %>/Js/Ljs/tableExport.js"></script>
	<script src="<%=path %>/Js/Ljs/bootstrap-table-export.js"></script>
	<script src="<%=path %>/Js/Ljs/bootstrap-table-locale-all.min.js"></script>
	<script src="<%=path %>/Js/Ljs/table_page.js"></script>
	<script src="<%=path %>/assets/js/bootstrap.min.js"></script>
	
	<script src="<%=path %>/user/js/user.js"></script>
</html>