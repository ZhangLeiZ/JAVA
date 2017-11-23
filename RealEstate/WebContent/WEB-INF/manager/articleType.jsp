<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String path = request.getContextPath();
    %>
<!DOCTYPE html>
<head>
<title>文章类型管理</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" type="text/css" href="<%=path %>/Css/Lcss/bootstrap/bootstrap-table.css">

	
	<script type="text/javascript" src="<%=path%>/Js/sweetalert-dev.js"></script>	
</head>
<body>
<section id="container">
<jsp:include page="/WEB-INF/manager/managertop.jsp" flush="true"></jsp:include>
<jsp:include page="/WEB-INF/manager/nativetop.jsp" flush="true"></jsp:include>


<!--main content start-->
<section id="main-content">
	<section class="wrapper">
		<div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
     文章类型管理
    </div>
     <div class="row w3-res-tb"></div>
     
     <button type="button" id="btn_typeAdd" class="btn btn-default btn-sm" data-target="#exampleModals">
        <span class="glyphicon glyphicon-search"></span> 添加
     </button>
     <button type="button" id="btn_typeUpdate" class="btn btn-default btn-sm" data-target="#example">
        <span class="glyphicon glyphicon-search"></span> 修改
     </button>
	 <button type="button" id="typeActive" class="btn btn-default btn-sm">
        <span class="glyphicon glyphicon-heart-empty"></span> 激活
     </button>
   	 <button type="button" id="typeInactive"  class="btn btn-default btn-sm">
        <span class="glyphicon glyphicon-plane"></span> 冻结
     </button>
       
     <table id="tb" class="table table-bordered table-hover" data-toggle="table" 
			data-url="<%=path %>/type/listPage" data-pagination="true" data-striped="true">
			<thead>
				<tr>
					<th data-hidden="type_id" data-radio="true"></th>
					<th data-field="type_name" >类别名称</th>               
					<th data-field="type_des" >类别描述</th> 
					<th data-field="type_status">状态</th>           
				</tr>
			</thead>
	</table>
		
	<div class="modal fade" id="exampleModals" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabels">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title" id="exampleModalLabel">添加文章类型</h4>
		      </div>
		      <div>
		        <form id="addType" name="addType" action="<%=path %>/type/add" method="post" class="form-horizontal" >
					<div class="form-group">
						<label class="col-lg-3 control-label">类型名称</label>
						<div class="col-lg-5">
							<input type="text"  class="form-control" name="type.type_name"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">类型描述</label>
						<div class="col-lg-5">
							<textarea rows="6" class="form-control" name="type.type_des"></textarea>
						</div>
					</div>
					<div class="modal-footer">
				        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				        <button type="submit" class="btn btn-primary">保  存</button>
				     </div>
				</form>
			</div>
		</div>
	   </div>
	</div>
	  	
	   
    <div class="modal fade" id="example" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title" id="exampleModalLabel">修改文章类型</h4>
		      </div>
		      <div>
		        <form id="updateType" name="updateType" action="<%=path %>/type/update" method="post" class="form-horizontal" >
		        	<input type="hidden" name="type.type_id" value="${type.type_id }">
					<div class="form-group">
						<label class="col-lg-3 control-label">类别名称</label>
						<div class="col-lg-5">
							<input type="text"  class="form-control" name="type.type_name"/>
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-3 control-label">类别描述</label>
						<div class="col-lg-5">
							<input type="text"  class="form-control" name="type.type_des"/>
						</div>
					</div>
					<div class="modal-footer">
				        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				        <button type="submit" class="btn btn-primary">保  存</button>
				     </div>
			    </form>
	          </div>	
	      </div>
	    </div>		
	 </div>
	 
	 </div>
  </div>
</section>
</section>
<!--main content end-->
</section>


	<script type="text/javascript" src="<%=path %>/Css/Lcss/bootstrap/vendor/jquery/jquery-1.10.2.min.js"></script>
	<script src="<%=path %>/Js/Ljs/bootstrap-table.js"></script>
	<script src="<%=path %>/Js/Ljs/bootstrap-table-zh-CN.js"></script>
	<script src="<%=path %>/Js/Ljs/tableExport.js"></script>
	<script src="<%=path %>/Js/Ljs/bootstrap-table-export.js"></script>
	<script src="<%=path %>/Js/Ljs/bootstrap-table-locale-all.min.js"></script>
	<script src="<%=path %>/Js/Ljs/table_page.js"></script>
	<script src="<%=path %>/assets/js/bootstrap.min.js"></script>
	<script src="<%=path %>/manager/js/bootstrap.js"></script>
	
	<script src="<%=path %>/Js/Ljs/formFill.js"></script>
	<script src="<%=path %>/Js/Ljs/manager.js"></script>
	<script type="text/javascript" src="<%=path %>/Css/Lcss/bootstrap/dist/js/bootstrapValidator.js"></script>
	
</body>
</html>