<%@page import="com.th.bean.Agency"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    	<%@ taglib uri="/struts-tags" prefix="s" %>
    <%
		String path = request.getContextPath();
    	Agency agency = (Agency)session.getAttribute("agency");
	%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>修改密码</title>
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link href="<%=path %>/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="<%=path %>/assets/css/jquery-ui-1.10.3.custom.min.css" />
		<link rel="stylesheet" href="<%=path %>/assets/css/jquery.gritter.css" />
		<link rel="stylesheet" href="<%=path %>/assets/css/select2.css" />
		<link rel="stylesheet" href="<%=path %>/assets/css/bootstrap-editable.css" />
		<link rel="stylesheet" href="<%=path %>/assets/css/ace.min.css" />
		<link rel="stylesheet" href="<%=path %>/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="<%=path %>/assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="<%=path %>/assets/css/bootstrap.css"/>
		<link rel="stylesheet" href="<%=path %>/assets/css/bootstrapValidator.css"/>
		<style>
			.spinner-preview {
				width:100px;
				height:100px;
				text-align:center;
				margin-top:60px;
			}
			
			.dropdown-preview {
				margin:0 5px;
				display:inline-block;
			}
			.dropdown-preview  > .dropdown-menu {
				display: block;
				position: static;
				margin-bottom: 5px;
			}
		</style>
		<script src="<%=path %>assets/js/ace-extra.min.js"></script>
		
	</head>

	<body>
				<jsp:include page="/WEB-INF/agency/navigation.jsp" flush="true"></jsp:include>
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
								<a href="#">经销商</a>
							</li>

							<li>
								<a href="#">个人资料</a>
							</li>
							<li class="active">修改密码</li>
						</ul>
					</div>

					<div class="page-content">
						<div class="page-header">
							<h1>
								修改密码
							</h1>
						</div>
						<div class="row">
							<div class="col-xs-12">

								<form class="form-horizontal" id="form1" action="<%=path %>/agency/pwd" method="post" >
									<s:fielderror></s:fielderror>
									<input type="hidden" name="agency.agency_id" id="agency_id" value="<%=agency.getAgency_id()%>">
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">当前用户:</label>
										<div class="col-sm-9">
											<h4><font color="red"><%=agency.getAgency_leader() %></font></h4>
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
											<input type="password" id="agency_pwd" name="newpwd" placeholder="新密码" class="col-xs-10 col-sm-5" />
											<span class="help-inline col-xs-12 col-sm-7">
												<span class="middle">密码不能为空</span>
											</span>
										</div>
									</div>
									<div class="space-4"></div>
									
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">确认密码</label>
										<div class="col-sm-9">
											<input type="password" id="cfgpwd" name="cfgpwd" placeholder="确认密码" class="col-xs-10 col-sm-5" />
											<span class="help-inline col-xs-12 col-sm-7">
												<span class="middle">确认新密码</span>
											</span>
										</div>
									</div>
									<div class="space-4"></div>
									

									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<button class="btn btn-info" type="submit">
												<i>修改</i>
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
							<label class="lbl" for="ace-settings-navbar">固定导航条</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
							<label class="lbl" for="ace-settings-sidebar">固定滑动条</label>
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
							</label>
						</div>
					</div>
				</div><!-- /#ace-settings-container -->
			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div>
			</div>
		</div>


		<script src="<%=path %>/assets/js/jquery.min.js"></script>


		<script type="text/javascript">
			window.jQuery || document.write("<script src='<%=path %>/assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='<%=path %>/assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='<%=path %>/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="<%=path %>/assets/js/bootstrap.min.js"></script>
		<script src="<%=path %>/assets/js/typeahead-bs2.min.js"></script>

		

		<script src="<%=path %>/assets/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="<%=path %>/assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="<%=path %>/assets/js/bootbox.min.js"></script>
		<script src="<%=path %>/assets/js/jquery.easy-pie-chart.min.js"></script>
		<script src="<%=path %>/assets/js/jquery.gritter.min.js"></script>
		<script src="<%=path %>/assets/js/spin.min.js"></script>
		<script src="<%=path %>/assets/js/jquery.slimscroll.min.js"></script>
		<script src="<%=path %>/assets/js/jquery.hotkeys.min.js"></script>
		<script src="<%=path %>/assets/js/bootstrap-wysiwyg.min.js"></script>
		<script src="<%=path %>/assets/js/select2.min.js"></script>
		<script src="<%=path %>/assets/js/date-time/bootstrap-datepicker.min.js"></script>
		<script src="<%=path %>/assets/js/fuelux/fuelux.spinner.min.js"></script>
		<script src="<%=path %>/assets/js/x-editable/bootstrap-editable.min.js"></script>
		<script src="<%=path %>/assets/js/x-editable/ace-editable.min.js"></script>
		<script src="<%=path %>/assets/js/jquery.maskedinput.min.js"></script>
		<script src="<%=path %>/assets/js/ace-elements.min.js"></script>
		<script src="<%=path %>/assets/js/ace.min.js"></script>
		
		<script type="text/javascript" src="<%=path %>/assets/js/jquery-1.10.2.min.js"></script>
	    <script type="text/javascript" src="<%=path %>/assets/js/bootstrap.min.js"></script>
	    <script type="text/javascript" src="<%=path %>/assets/js/bootstrapValidator.js"></script>

		<script type="text/javascript">
$(document).ready(function() {
    $('#form1').bootstrapValidator({
        message: '所有的值不能为空',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	oldpwd: {
                message: '原密码不能为空',
                validators: {
                    notEmpty: {
                        message: '原密码不能为空'
                    },
                    stringLength: {
                        min: 4,
                        max: 30,
                        message: '原密码长度必须是唯一的'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_\.]+$/,
                        message: '原密码只能输入数字，不能输入符号和文字'
                    }
                }
            },
            newpwd: {
                validators: {
                    notEmpty: {
                        message: '新密码不能为空'
                    },
                    identical: {
                        field: 'cfgpwd',
                        message: '密码和确认密码不一致'
                    }
                }
            },
            cfgpwd: {
                validators: {
                    notEmpty: {
                        message: '确认密码不能为空'
                    },
                    identical: {
                        field: 'newpwd',
                        message: '密码和确认密码不一致'
                    }
                }
            },
        }
    });
});
</script>
	</body>
</html>
    