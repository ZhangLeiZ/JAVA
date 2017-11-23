<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>员工登录页面</title>
<meta name="keywords"
	content="" />
<meta name="description"
	content="" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrapValidator.css }">
	<script src="${pageContext.request.contextPath}/assets/js/bootstrapValidator.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery-1.10.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
</head>

<script type="text/javascript">
	function check(){
		var employeePhone = document.getElementById("employeePhone").value;
		var employeePwd = document.getElementById("employeePwd").value;
		if(employeePhone==""){
			alert("请输入手机号码");
			document.getElementById("employeePhone").focus();
			return false;
		}
		if(employeePhone.length!=11){
			alert("请输入11位数字的手机号码");
			document.getElementById("employeePhone").focus();
			return false;
		}
		if(employeePwd==""){
			alert("请输入登录密码");
			document.getElementById("employeePwd").focus();
			return false;
		}
		return true;
	}
</script>
    <!--登录失败的提示信息  -->
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

<body class="login-layout" background="${pageContext.request.contextPath}/images/loginbg.jpg">
	<div class="main-container">
		<div class="main-content">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1">
					<div class="login-container">
						<div class="center">
							<h1>
								<i class="icon-leaf green"></i> <span class="red">员工登录</span> 
							</h1>
							<h4 class="blue">&copy;员工业务管理平台</h4>
						</div>

						<div class="space-6"></div>

						<div class="position-relative">
							<div id="login-box"
								class="login-box visible widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">
										<h4 class="header blue lighter bigger">
											<center><i class="icon-coffee green"></i>登录</center>
										</h4>
										<div class="space-6"></div>
										<form id="form1"  action="${pageContext.request.contextPath}/employee/employeelogin" method="post" onsubmit="return check();">
											<fieldset>
											<div class="form-group">
												<label class="block clearfix" for="agencyPhone">
												 <span class="block input-icon input-icon-right"> <input id="employeePhone" name="employeePhone" type="tel" class="form-control" placeholder="手机号码" />
													<i class="icon-user"></i>
												</span>
												</label> 
												</div>
												<div class="form-group">
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input id="employeePwd" name="employeePwd" type="password"  class="form-control"
														placeholder="密码" /> <i class="icon-lock"></i>
												</span>
												</label>
												</div>
												<div class="space"></div>
												<div class="clearfix">
													<label class="inline"> <input type="checkbox"
														class="ace" /> <span class="lbl">记住密码</span>
													</label>
													<div class="form-group">
													<button class="width-35 pull-right btn btn-sm btn-primary">
														<li>登录</li>
													</button>
													</div>
												</div>
												<div class="space-4"></div>
											</fieldset>
										</form>
										<div class="social-or-login center">
											<span class="bigger-110">其他方式登录</span>
										</div>
										<div class="social-login center">
											<a class="btn btn-primary"> <i class="icon-facebook"></i>
											</a> <a class="btn btn-info"> <i class="icon-twitter"></i>
											</a> <a class="btn btn-danger"> <i class="icon-google-plus"></i>
											</a>
										</div>
									</div>
									<!-- /widget-main -->
									<div class="toolbar clearfix">
										<div>
											<a href="#" onclick="show_box('forgot-box'); return false;"
												class="forgot-password-link"> <i class="icon-arrow-left"></i>
												忘记密码
											</a>
										</div>

									</div>
								</div>
							</div>

							<div id="forgot-box" class="forgot-box widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">
										<h4 class="header red lighter bigger">
											<center><i class="icon-key"></i>重置密码</center>
										</h4>
										<div class="space-6"></div>
										<p>请输入你的手机号码并接收消息</p>

										<form action="#" method="post">
											<label class="block clearfix"> <span
												class="block input-icon input-icon-right"> <input name="agency.agency_phone" type="tel" class="form-control" placeholder="手机号码" />
												<i class="icon-envelope"></i>
											</span> 
											</label>
											<div class="clearfix">
												<button class="width-35 pull-right btn btn-sm btn-danger">
													<i class="icon-lightbulb"></i>发送
												</button>
											</div>
										</form>
									</div>
									<div class="toolbar center">
										<a href="#" onclick="show_box('login-box'); return false;"
											class="back-to-login-link">返回登录界面 <i
											class="icon-arrow-right"></i>
										</a>
									</div>
								</div>
								<!-- /widget-body -->
							</div>
							<!-- /forgot-box -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<script type="text/javascript">
$(document).ready(function() {
    /**
     * 下面是进行插件初始化
     * 你只需传入相应的键值对
     * */
    $('#form1').bootstrapValidator({
    	message: 'This value is not valid',
            feedbackIcons: {/*输入框不同状态，显示图片的样式*/
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {/*验证*/
            	agencyPhone: {/*键名和input name值对应*/
                    message: 'The agencyPhone is not valid',
                    validators: {
                        notEmpty: {/*非空提示*/
                            message: '用户名不能为空'
                        },
                        regexp: {/* 只需加此键值对 */
                            regexp: /^[a-zA-Z0-9_\.]+$/,
                            message: '只能是数字和字母_.'
                        },
                        stringLength: {/*长度提示*/
                            min: 6,
                            max: 30,
                            message: '用户名长度必须在6到30之间'
                        }/*最后一个没有逗号*/
                    }
                },
                agencyPwd: {
                    message:'密码无效',
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        },
                        stringLength: {
                            min: 6,
                            max: 30,
                            message: '用户名长度必须在6到30之间'
                        },
                        
                        different: {//不能和用户名相同
                            field: 'agencyPhone',
                            message: '不能和用户名相同'
                        },
                        regexp: {/* 只需加此键值对 */
                            regexp: /^[a-zA-Z0-9_\.]+$/,
                            message: '只能是数字和字母_.'
                        }
                    }
                },
               
            }
        });
});
</script>
	<script type="text/javascript">
		window.jQuery || document.write("<script src='${pageContext.request.contextPath}/assets/js/jquery-2.0.3.min.js'>" + "<"+"/script>");
	</script>

	<script type="text/javascript">
		if ("ontouchend" in document)
			document.write("<script src='${pageContext.request.contextPath}/assets/js/jquery.mobile.custom.min.js'>" + "<"+"/script>");
	</script>

	<script type="text/javascript">
		function show_box(id) {
			jQuery('.widget-box.visible').removeClass('visible');
			jQuery('#' + id).addClass('visible');
		}
	</script>
	
</body>
</html>
