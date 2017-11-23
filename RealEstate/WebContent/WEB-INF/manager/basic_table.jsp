<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String path = request.getContextPath();
    %>
<!DOCTYPE html>
<head>
<title>经销管理</title>
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
     经销商管理
    </div>
     <div class="row w3-res-tb"></div>

	<button type="button" id="find" class="btn btn-default btn-sm" data-target="#finds">
        <span class="glyphicon glyphicon-search"></span> 查看详情
      </button>

	<button type="button" id="active" class="btn btn-default btn-sm">
        <span class="glyphicon glyphicon-heart-empty"></span> 激活
      </button>

   	<button type="button" id="inactive"  class="btn btn-default btn-sm">
        <span class="glyphicon glyphicon-plane"></span> 冻结
      </button>
      
      	<button type="button" id="excmal"  class="btn btn-default btn-sm">
        <span class="glyphicon glyphicon-plane"></span> 已冻结经销商
      </button>

      <table id="tb" class="table table-bordered table-hover" data-toggle="table" 
			data-url="<%=path %>/manager/agency?struta=激活" data-pagination="true" data-striped="true">
			<thead>
				<tr>
					<th data-radio="true"></th>
					<th data-field="agency_logo" data-formatter="format">商标</th>
					<th data-field="agency_name">经销商名称</th>
					<th data-field="agency_email" >经销商邮箱</th>
					<th data-field="agency_leader">负责人</th>
					<th data-field="agency_tel" >固定电话</th>
					<th data-field="agency_address">地址</th>
					<th data-field="created_time">创建时间</th>
					<th data-field="agency_status">状态</th>
				</tr>
			</thead>
	</table>
								
	
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
	<script src="<%=path %>/Js/Ljs/manager.js"></script>
	<script type="text/javascript" src="<%=path %>/Css/Lcss/bootstrap/dist/js/bootstrapValidator.js"></script>
	
</body>
</html>