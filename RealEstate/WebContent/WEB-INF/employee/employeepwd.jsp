<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>员工业务管理中心</title>
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<!-- basic styles -->
		<link href="<%=path %>/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="<%=path %>/assets/css/font-awesome.min.css" />

		<link rel="stylesheet" href="<%=path %>/assets/css/ace.min.css" />
		<link rel="stylesheet" href="<%=path %>/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="<%=path %>/assets/css/ace-skins.min.css" />
		<script src="<%=path %>/assets/js/ace-extra.min.js"></script>
		<script type="text/javascript">
			function check(){
				var oldpwd = document.getElementById("oldpwd").value;
				var newpwd = document.getElementById("newpwd").value;
				var cfgpwd = document.getElementById("cfgpwd").value;
				if(oldpwd==""){
					alert("请输入原密码");
					document.getElementById("oldpwd").focus();
					return false;
				}
				if(newpwd==""){
					alert("请输入新密码");
					document.getElementById("newpwd").focus();
					return false;
				}
				if(cfgpwd==""){
					alert("请确认新密码");
					document.getElementById("cfgpwd").focus();
					return false;
				}
				if(newpwd!=cfgpwd){
					alert("新密码月确认密码不一致，请重新输入");
					document.getElementById("cfgpwd").focus();
					return false;
				}
				return true;
			}
		</script>
		<!--密码修改失败的提示信息  -->
		<%
			String msg = (String)request.getAttribute("msg");
			if(msg!=null){
			%>
				<script type="text/javascript">
				alert("${msg}");
		       	</script>  
		    <%		
			}
		%>
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
					</a>
				</div>

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
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>

					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
					</script>
				</div>

				<div class="main-content">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="#">员工</a>
							</li>

							<li>
								<a href="#">个人资料</a>
							</li>
							<li class="active">修改密码</li>
						</ul><!-- .breadcrumb -->

						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="icon-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- #nav-search -->
					</div>

					<div class="page-content">
						<div class="page-header">
							<h1>
								修改密码
							</h1>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<form class="form-horizontal" role="form" action="<%=path %>/employee/updatePwd" method="post" onsubmit="return check();">
									<input type="hidden" name="employee_id" id="employee_id" value="${sessionScope.employee.employee_id }">
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">当前用户:</label>
										<div class="col-sm-9">
											<h4><font color="red">${sessionScope.employee.employee_name }</font></h4>
										</div>
									</div>
									<div class="space-4"></div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">原密码:</label>
										<div class="col-sm-9">
											<input type="password" id="oldpwd" name="oldpwd" placeholder="原密码" class="col-xs-10 col-sm-5" />
										</div>
									</div>
									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">新密码:</label>
										<div class="col-sm-9">
											<input type="password" id="newpwd" name="newpwd" placeholder="新密码" class="col-xs-10 col-sm-5" />
										</div>
									</div>
									<div class="space-4"></div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">确认密码</label>
										<div class="col-sm-9">
											<input type="password" id="cfgpwd" name="cfgpwd" placeholder="确认密码" class="col-xs-10 col-sm-5" />
										</div>
									</div>
									<div class="space-4"></div>
									

									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<button class="btn btn-info" >
												<i>提交</i>
												
											</button>

											&nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
												<i>重置</i>
												
											</button>
										</div>
									</div>		
								</form>							
							</div>
						</div>
					</div>
				</div>
			
				<div class="ace-settings-container" id="ace-settings-container">
					<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
						<i class="icon-cog bigger-150"></i>
					</div>

					<div class="ace-settings-box" id="ace-settings-box">
						<div>
							<div class="pull-left">
								<select id="skin-colorpicker" class="hide">
									<option data-skin="default" value="#438EB9">#438EB9</option>
									<option data-skin="skin-1" value="#222A2D">#222A2D</option>
									<option data-skin="skin-2" value="#C6487E">#C6487E</option>
									<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
								</select>
							</div>
							<span>&nbsp; 选择皮肤</span>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
							<label class="lbl" for="ace-settings-navbar"> 固定导航条</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
							<label class="lbl" for="ace-settings-sidebar"> 固定滑动条</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
							<label class="lbl" for="ace-settings-breadcrumbs">固定面包屑</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
							<label class="lbl" for="ace-settings-rtl">切换到左边</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
							<label class="lbl" for="ace-settings-add-container">
								切换窄屏
								<b></b>
							</label>
						</div>
					</div>
				</div><!-- /#ace-settings-container -->
			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->

		<script src="<%=path %>/assets/js/jquery.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

		<!--[if !IE]> -->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='<%=path %>/assets/js/jquery-2.0.3.min.js'>"+"<"+"script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='<%=path %>/assets/js/jquery-1.10.2.min.js'>"+"<"+"script>");
</script>
<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='<%=path %>/assets/js/jquery.mobile.custom.min.js'>"+"<"+"script>");
		</script>
		<script src="<%=path %>/assets/js/bootstrap.min.js"></script>
		<script src="<%=path %>/assets/js/typeahead-bs2.min.js"></script>

		<script src="<%=path %>/assets/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="<%=path %>/assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="<%=path %>/assets/js/jquery.slimscroll.min.js"></script>
		<script src="<%=path %>/assets/js/jquery.easy-pie-chart.min.js"></script>
		<script src="<%=path %>/assets/js/jquery.sparkline.min.js"></script>
		<script src="<%=path %>/assets/js/flot/jquery.flot.min.js"></script>
		<script src="<%=path %>/assets/js/flot/jquery.flot.pie.min.js"></script>
		<script src="<%=path %>/assets/js/flot/jquery.flot.resize.min.js"></script>

		<!-- ace scripts -->

		<script src="<%=path %>/assets/js/ace-elements.min.js"></script>
		<script src="<%=path %>/assets/js/ace.min.js"></script>

	</body>
</html>

