<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="com.th.bean.Activity"%>
<%@page import="com.th.bean.Mission"%>
<%@page import="com.th.bean.Employee"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
Mission mission = (Mission)session.getAttribute("mission");
Employee employee = (Employee)session.getAttribute("employee");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>绩效管理</title>


<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&ak=PQkrfSzjE6GXYZReYsHPtKU92Gx3mOfR"></script>


<!-- 楼栋分页样式 -->
<link rel="stylesheet" type="text/css"
	href="<%=path%>/Css/Lcss/bootstrap/bootstrap-table.css">
<link rel="stylesheet" type="text/css"
	href="<%=path%>/Css/Lcss/bootstrap/bootstrap-table.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=path%>/Css/Lcss/bootstrap/index.css">
<link rel="stylesheet"
	href="<%=path%>/Css/Lcss/bootstrap/dist/css/bootstrapValidator.css" />
<link rel="stylesheet"
	href="<%=path%>/Css/Lcss/bootstrap/vendor/bootstrap/css/bootstrap.css" />

<link rel="stylesheet"
	href="<%=path%>/Css/Lcss/bootstrap/vendor/bootstrap/css/bootstrap.min.css" />

<link rel="stylesheet" href="<%=path%>/Css/Lcss/linkage/form.css" />


<script src="<%=path%>/Css/Lcss/linkage/kit.js"></script>
<script src="<%=path%>/Css/Lcss/linkage/dom.js"></script>
<script src="<%=path%>/Css/Lcss/linkage/event.js"></script>
<script src="<%=path%>/Css/Lcss/linkage/TreeDict.js"></script>
<script src="<%=path%>/Css/Lcss/linkage/math.js"></script>
<script src="<%=path%>/Css/Lcss/linkage/form.js"></script>
<script src="<%=path%>/Css/Lcss/linkage/combobox.js"></script>
<script src="<%=path%>/Css/Lcss/linkage/suggestselect.js"></script>
<script src="<%=path%>/Css/Lcss/linkage/list.js"></script>
<script src="<%=path%>/Css/Lcss/linkage/json-data.js"></script>



<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="stylesheet" href="<%=path%>/assets/css/font-awesome.min.css" />

<link rel="stylesheet"
	href="<%=path%>/assets/css/jquery-ui-1.10.3.full.min.css" />
<link rel="stylesheet" href="<%=path%>/assets/css/datepicker.css" />
<link rel="stylesheet" href="<%=path%>/assets/css/ui.jqgrid.css" />
<link rel="stylesheet" href="<%=path%>/Css/sweetalert.css" />
<script type="text/javascript" src="<%=path%>/Js/sweetalert-dev.js"></script>
<link rel="stylesheet" href="<%=path%>/assets/css/ace.min.css" />
<link rel="stylesheet" href="<%=path%>/assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="<%=path%>/assets/css/ace-skins.min.css" />

<script src="<%=path%>/assets/js/ace-extra.min.js"></script>
</head>
<body>
	<div class="navbar navbar-default" id="navbar">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>

			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small>
							<i class="icon-leaf"></i>
							员工管理平台
						</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->

				<div class="navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
						
						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="<%=path %>/${sessionScope.employee.headicon}"/>
								<span class="user-info">
									<small>欢迎光临,</small>
									${sessionScope.employee.employee_name }
								</span>

								<i class="icon-caret-down"></i>
							</a>

							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a href="<%=path%>/employee/password">
										<i class="icon-user"></i>
										修改密码
									</a>
								</li>

								<li class="divider"></li>

								<li>
									<a href="<%=path%>/employee/logout">
										<i class="icon-off"></i>
										退出
									</a>
								</li>
							</ul>
						</li>
					</ul><!-- /.ace-nav -->
				</div><!-- /.navbar-header -->
			</div><!-- /.container -->
		</div>
	<jsp:include page="/WEB-INF/employee/empnavigation.jsp" flush="true"></jsp:include>
	<div class="sidebar-collapse" id="sidebar-collapse">
		<i class="icon-double-angle-left" data-icon1="icon-double-angle-left"
			data-icon2="icon-double-angle-right"></i>
	</div>

	<script type="text/javascript">
		try {
			ace.settings.check('sidebar', 'collapsed')
		} catch (e) {
		}
	</script>
	</div>

	<div class="main-content">
		<div class="breadcrumbs" id="breadcrumbs">
			<script type="text/javascript">
				try {
					ace.settings.check('breadcrumbs', 'fixed')
				} catch (e) {
				}
			</script>

			<ul class="breadcrumb">
				<li><i class="icon-home home-icon"></i> <a href="#">首页</a></li>

				<li><a href="#">员工</a></li>
				<li class="active">绩效 & 管理</li>
			</ul>

		</div>

		<div class="page-content">
			<div class="row">
				<div class="col-xs-12">
					<hr color="green">
					<div>
						<table id="tb" class="table table-bordered table-hover" data-toggle="table" 
							data-url="<%=path %>/mission/page?employee_id=<%=employee.getEmployee_id() %>" data-pagination="true" >
							<thead>
								<tr>
									<th data-hidden="mission_id" data-radio="true"></th>
									<th data-field="employee.headicon" data-events="logoEvents" data-formatter="format">头像</th>
									<th data-field="employee.employee_name">员工姓名</th>
									<th data-field="quantity">本月销量</th>
									<th data-formatter="salaryFormatter">该月绩效</th>
									<th data-field="monthes">月份</th>
									<th data-field="bonus_percent">提成百分比</th>
									<th data-field="employee.basic_salary">基本工资</th>
									<th data-formatter="unper">实际工资</th>
								</tr>
							</thead>
						</table>


						<div id="grid-pager"></div>

						<script type="text/javascript">
							var $path_base = "/";//this will be used in gritter alerts containing images
						</script>

						<!-- PAGE CONTENT ENDS -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.page-content -->
		</div>
		<!-- /.main-content -->

		<div class="ace-settings-container" id="ace-settings-container">
			<div class="btn btn-app btn-xs btn-warning ace-settings-btn"
				id="ace-settings-btn">
				<i class="icon-cog bigger-150"></i>
			</div>

		</div>
	</div>

	<a href="#" id="btn-scroll-up"
		class="btn-scroll-up btn btn-sm btn-inverse"> <i
		class="icon-double-angle-up icon-only bigger-110"></i>
	</a>
	</div>


	<script type="text/javascript">
		window.jQuery
				|| document
						.write("<script src='http://localhost:8080/RealEstate/assets/js/jquery-2.0.3.min.js'>"
								+ "<"+"/script>");
	</script>


	<script type="text/javascript">
		if ("ontouchend" in document)
			document
					.write("<script src='http://localhost:8080/RealEstate/assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>

	<script src="<%=path%>/assets/js/date-time/bootstrap-datepicker.min.js"></script>
	<script src="<%=path%>/assets/js/jqGrid/jquery.jqGrid.min.js"></script>
	<script src="<%=path%>/assets/js/jqGrid/i18n/grid.locale-en.js"></script>

	<script src="<%=path%>/assets/js/ace-elements.min.js"></script>
	<script src="<%=path%>/assets/js/ace.min.js"></script>

	

	<script src="<%=path%>/Js/Ljs/jquery.min.js"></script>



	<!-- 楼栋分页样式 -->
	<script type="text/javascript"
		src="<%=path%>/Css/Lcss/bootstrap/vendor/jquery/jquery-1.10.2.min.js"></script>
	<script src="<%=path%>/Js/Ljs/bootstrap-table.js"></script>
	<script src="<%=path%>/Js/Ljs/bootstrap-table-zh-CN.js"></script>
	<script src="<%=path%>/Js/Ljs/tableExport.js"></script>
	<script src="<%=path%>/Js/Ljs/bootstrap-table-export.js"></script>
	<script src="<%=path%>/Js/Ljs/bootstrap-table-locale-all.min.js"></script>
	<script src="<%=path%>/Js/Ljs/table_page.js"></script>
	<script src="<%=path%>/assets/js/bootstrap.min.js"></script>
	<!-- 修改数据 -->
	<script src="<%=path%>/Js/Ljs/formFill.js"></script>
	<script type="text/javascript">
		function format(value) {
			return "<img style='width:120;height:50px' src='http://localhost:8080/RealEstate"+value+"'>";
		}
		function salaryFormatter(value,row,index){
			var salary=row.quantity*row.bonus_percent;
			return salary;
		}
		function unper(value,row,index){
			var per=(1+row.bonus_percent)*row.employee.basic_salary;
			return per;
		}
	</script>
	<script type="text/javascript"
		src="<%=path%>/Css/Lcss/bootstrap/dist/js/bootstrapValidator.js">
	</script>
</body>
</html>




