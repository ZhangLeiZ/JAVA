<%@page import="com.th.bean.Agency"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <% 
    	String path = request.getContextPath();
    	Agency agency = (Agency)session.getAttribute("agency");
    %> 
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>经销商管理中心</title>
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
							经销商管理平台
						</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->

				<div class="navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
										<img class="nav-user-photo" src="<%=path %>/<%=agency.getAgency_logo() %>" width="40" height="40" alt="" />
										<span class="user-info">
											<small>欢迎光临</small><%=agency.getAgency_name() %>
										</span>
										<i class="icon-caret-down"></i>
									
								</a>

							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a href="<%=path %>/agency/pwd">
										<i class="icon-cog"></i>
										修改密码
									</a>
								</li>
								<li>
									<a href="<%=path%>/agency/login?agen=1">
										<i class="icon-user"></i>
										个人资料
									</a>
								</li>
								<li class="divider"></li>
								<li>
									<a href="<%=path %>/agency/logout">
										<i class="icon-off"></i>
										退出
									</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>

				<div class="sidebar" id="sidebar">
					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
					</script>

					<div class="sidebar-shortcuts" id="sidebar-shortcuts">
						<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
							<button class="btn btn-success">
								<i class="icon-signal"></i>
							</button>

							<button class="btn btn-info">
								<i class="icon-pencil"></i>
							</button>

							<button class="btn btn-warning">
								<i class="icon-group"></i>
							</button>

							<button class="btn btn-danger">
								<i class="icon-cogs"></i>
							</button>
						</div>

						<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
							<span class="btn btn-success"></span>

							<span class="btn btn-info"></span>

							<span class="btn btn-warning"></span>

							<span class="btn btn-danger"></span>
						</div>
					</div><!-- #sidebar-shortcuts -->

					<ul class="nav nav-list">
						<li class="active">
							<a href="<%=path%>/agency/login?agen=1">
								<i class="icon-dashboard"></i>
								<span class="menu-text"> 基础信息管理 </span>
							</a>
						</li>

						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-desktop"></i>
								<span class="menu-text"> 员工管理 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="<%=path%>/employee/Employeeadd?emp=2">
										<i class="icon-double-angle-right"></i>
										员工添加
									</a>
								</li>

								<li>
									<a href="<%=path%>/employee/list">
										<i class="icon-double-angle-right"></i>
										员工列表
									</a>
								</li>
							</ul>  
						</li>
						<li>
							<a href="<%=path%>/mission/miss">
								<i class="icon-text-width"></i>
								<span class="menu-text"> 绩效管理 </span>
								
								
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath }/buildings/buildList" class="dropdown-toggle">
								<i class="icon-list"></i>
								<span class="menu-text"> 
										
										
										楼盘管理
									
								 </span>
								
							</a>
							
						</li>

						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-edit"></i>
								<span class="menu-text"> 楼栋管理</span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="${pageContext.request.contextPath }/house/houseList">
										<i class="icon-double-angle-right"></i>
										户型管理
									</a>
								</li>

								
								<li>
									<a href="${pageContext.request.contextPath }/building/buildList">
										<i class="icon-double-angle-right"></i>
										楼栋管理
									</a>
								</li>
								

							</ul>
						</li>

						<li>
							<a href="${pageContext.request.contextPath }/activity/page">
								<i class="icon-edit"></i>
								<span class="menu-text"> 活动管理</span>
								
							</a>

						</li>
						
						
						<li>
							<a href="${pageContext.request.contextPath }/appointment/applist">
								<i class="icon-calendar"></i>

								<span class="menu-text">
									购房预约管理
								</span>
							</a>
						</li>

						<li>
							<a href="${pageContext.request.contextPath }/sale/saleList">
								<i class="icon-picture"></i>
								<span class="menu-text"> 销售管理 </span>
							</a>
						</li>

						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-tag"></i>
								<span class="menu-text"> 客户管理</span>

								<b class="arrow icon-angle-down"></b>
							</a>
								<ul class="submenu">
								<li>
									<a href="${pageContext.request.contextPath }/message/messageList">
										<i class="icon-double-angle-right"></i>
										留言管理
									</a>
								</li>

								<li>
									<a href="${pageContext.request.contextPath }/comment/comList">
										<i class="icon-double-angle-right"></i>
										评价管理
									</a>
								</li>

								<li>
									<a href="${pageContext.request.contextPath }/customer/customerList">
										<i class="icon-double-angle-right"></i>
										客户管理
									</a>
								</li>

							</ul>
						</li>

						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-file-alt"></i>

								<span class="menu-text">
									报表统计
								</span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li>
									<a href="${pageContext.request.contextPath }/sale/count">
										<i class="icon-double-angle-right"></i>
										销售统计
									</a>
								</li>

								<li>
									<a href="${pageContext.request.contextPath }/room/count">
										<i class="icon-double-angle-right"></i>
										房屋统计
									</a>
								</li>

								
							</ul>
						</li>
					</ul>
		<script src="assets/js/jquery.min.js"></script>
		<script type="text/javascript">
			window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>
		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/typeahead-bs2.min.js"></script>
		<script src="assets/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="assets/js/chosen.jquery.min.js"></script>
		<script src="assets/js/fuelux/fuelux.spinner.min.js"></script>
		<script src="assets/js/date-time/bootstrap-datepicker.min.js"></script>
		<script src="assets/js/date-time/bootstrap-timepicker.min.js"></script>
		<script src="assets/js/date-time/moment.min.js"></script>
		<script src="assets/js/date-time/daterangepicker.min.js"></script>
		<script src="assets/js/bootstrap-colorpicker.min.js"></script>
		<script src="assets/js/jquery.knob.min.js"></script>
		<script src="assets/js/jquery.autosize.min.js"></script>
		<script src="assets/js/jquery.inputlimiter.1.3.1.min.js"></script>
		<script src="assets/js/jquery.maskedinput.min.js"></script>
		<script src="assets/js/bootstrap-tag.min.js"></script>
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>
	</body>
</html>
