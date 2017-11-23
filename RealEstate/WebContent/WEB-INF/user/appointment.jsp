<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
    	String path = request.getContextPath();
    %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的预约</title>
	
	<!-- 分页css -->
	<link rel="stylesheet" type="text/css" href="<%=path %>/Css/Lcss/bootstrap/bootstrap-table.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/Css/Lcss/bootstrap/index.css">
	<link rel="stylesheet" href="<%=path%>/Css/Lcss/bootstrap/vendor/bootstrap/css/bootstrap.css"/>
	<!-- 窗口 -->
	<link rel="stylesheet" href="<%=path%>/Css/sweetalert.css"/>
	<script src="<%=path%>/Js/sweetalert-dev.js"></script>	
	
</head>
<body>
	<h3 align="center">预约历史</h3>
	<div class="container">
		<div class="row" style="width: 860px">
			<!-- 表格工具栏-->
			<div id="toolbar" class="btn-group">
				
		        <button id="deleteApp" class="del btn btn-default" style="width: 100px" >
		            <span class="glyphicon glyphicon-trash" aria-hidden="true">取消预约</span>
		        </button>
		    </div>
		 	<!-- 表格 -->
            <div class="col-xs-12">
                <table id="tb" class="table table-bordered table-hover table-condensed" data-toggle="table"
					data-url="<%=path %>/appointment/listPage" data-pagination="true" data-striped="true">
					<thead>
						<tr>
							<th data-field="state" data-radio="true"></th>
							<th data-field="house.house_name">户型名称</th>
							<th data-field="user.user_name">用户姓名</th>
							<th data-field="employee.employee_name">员工姓名</th>
							<th data-field="app_arrive_time">预约看房时间</th>
							<th data-field="app_status">预约状态</th>						
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