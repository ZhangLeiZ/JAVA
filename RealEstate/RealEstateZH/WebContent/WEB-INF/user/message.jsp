<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
    	String path = request.getContextPath();
    %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的留言</title>
	
	<!-- 分页css -->
	<link rel="stylesheet" type="text/css" href="<%=path %>/Css/Lcss/bootstrap/bootstrap-table.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/Css/Lcss/bootstrap/index.css">
	<link rel="stylesheet" href="<%=path%>/Css/Lcss/bootstrap/vendor/bootstrap/css/bootstrap.css"/>
	<!-- 窗口 -->
	<link rel="stylesheet" href="<%=path%>/Css/sweetalert.css"/>
	<script src="<%=path%>/Js/sweetalert-dev.js"></script>	
	
</head>
<body>
	<h3 align="center">我的留言</h3>
	<div class="container">
		<div class="row" style="width: 860px">
			<!-- 表格工具栏-->
			<div id="toolbar" class="btn-group">
					       
		        <button type="button" id="modifyMsg" class="btn btn-default btn-sm" style="width: 60px">
		        	<span class="glyphicon glyphicon-pencil"></span>修改
		        </button>
				
				<button type="button" id="activeMsg" class="btn btn-default btn-sm" style="width: 60px">
		            <span class="glyphicon glyphicon-heart-empty"></span> 激活
		        </button>
	
		     	<button type="button" id="inactiveMsg"  class="btn btn-default btn-sm" style="width: 60px">
		            <span class="glyphicon glyphicon-plane"></span> 冻结
		        </button>
		    </div>
		 	<!-- 表格 -->
            <div class="col-xs-12">
                <table id="tb" class="table table-bordered table-hover table-condensed" data-toggle="table"
					data-url="<%=path %>/message/listPage" data-pagination="true" data-striped="true">
					<thead>
						<tr>
							<th data-field="state" data-radio="true"></th>
							<th data-field="buildings.buildings_name">楼盘名称</th>
							<th data-field="message_content">留言内容</th>							
							<th data-field="leave_time">留言时间</th>							
							<th data-field="reply">回复内容</th>
							<th data-field="reply_time">回复时间</th>
							<th data-field="message_status">状态</th>
						</tr>
					</thead>
				</table>
            </div>
            
            <!-- 修改 -->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
				  <div class="modal-dialog" role="document">
		            <div class="modal-content">
		                <div class="modal-header">
		                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		                    <h4 class="modal-title" id="exampleModalLabel">编辑</h4>
		                </div>
		                <div class="modal-body">
		                   <form id="form1" action="<%=path %>/message/updateMessage" method="post">
		                   		<!--修改  给id赋值  -->
		                   		<input type="hidden" name="message.message_id" value="${message.message_id }">		                 		                  
			                   	<div class="form-group">
			                        <label for="message.message_content">留言内容</label>
			                        <textarea name="message.message_content" class="form-control" rows="10"></textarea>
			                    </div>			                    
			                    <div class="modal-footer">
				                     <button type="button" class="btn btn-default" data-dismiss="modal" style="width: 50px;">关闭</button>
									 <button type="submit" class="btn btn-primary" style="width: 50px;">确 认</button>
			                   </div>
		                   </form>
		                </div>
		            </div>
		        </div>
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
	
	<!-- 修改窗口 -->
	<script src="<%=path%>/assets/js/formFill.js"></script>
</html>