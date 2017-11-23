<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String path = request.getContextPath();
    %>
<!DOCTYPE html>
<head>
<title>活动管理</title>
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
     活动管理
    </div>
     <div class="row w3-res-tb"></div>

	<button type="button" id="actfind" class="btn btn-default btn-sm" data-target="#finds">
        <span class="glyphicon glyphicon-search"></span> 查看详情
      </button>

	<button type="button" id="actactive" class="btn btn-default btn-sm">
        <span class="glyphicon glyphicon-heart-empty"></span> 激活
      </button>

   	<button type="button" id="actinactive"  class="btn btn-default btn-sm">
        <span class="glyphicon glyphicon-plane"></span> 冻结
      </button>
      
      	<button type="button" id="actexcmal"  class="btn btn-default btn-sm">
        <span class="glyphicon glyphicon-plane"></span> 已冻结活动
      </button>

     <table id="tb" class="table table-bordered table-hover" data-toggle="table" 
		data-url="<%=path %>/manager/activity?struta=激活" data-pagination="true" data-striped="true">
		<thead>
			<tr>
				<th data-hidden="activity_id" data-radio="true"></th>
				<th data-field="activity_logo" data-events="logoEvents" data-formatter="format">活动图片</th>
				<th data-field="activity_title" >活动标题</th>
				<th data-field="activity_content">活动内容</th>
				<th data-field="activity_address" >活动地址</th>
				<th data-field="start_time">开始时间</th>
				<th data-field="end_time">结束时间</th>
				<th data-field="buildings.buildings_name">楼盘名称</th>
				<th data-field="activity_status">状态</th>
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