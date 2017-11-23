<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>经销商登录页面</title>
<script type="text/javascript" >
	
		function check(){
			
			var agency_name=document.getElementById("agency_name").value;
			if(agency_name==""){
				alert("请输入手机号！");
				return false;
			}	
			
			var agency_email=document.getElementById("agency_email").value;
			if(agency_email==""){
				alert("请输入邮箱！");
				return false;
			}	
			
			var agency_pwd=document.getElementById("agency_pwd").value;
			if(agency_pwd==""){
				alert("请输入密码！");
				return false;
			}	
			
			var passwords=document.getElementById("passwords").value;
			if(agency_pwd==""){
				alert("请输入密码！");
				return false;
			}	
			
			var agency_leader=document.getElementById("agency_leader").value;
			if(agency_leader==""){
				alert("请输入姓名！");
				return false;
			}	
			
			var agency_phone=document.getElementById("agency_phone").value;
			if(agency_phone==""){
				alert("请输入手机号！");
				return false;
			}	
			
			var agency_tel=document.getElementById("agency_tel").value;
			if(agency_tel==""){
				alert("请输入固定电话！");
				return false;
			}	
			
			var agency_address=document.getElementById("agency_address").value;
			if(agency_address==""){
				alert("请输入地址！");
				return false;
			}	
			
			var agency_intro=document.getElementById("agency_intro").value;
			if(agency_address==""){
				alert("请输入简介！");
				return false;
			}	
		}
			

</script>
<meta name="keywords"
	content="" />
<meta name="description"
	content="" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrapValidator.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Css/sweetalert.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/Js/sweetalert-dev.js"></script>

</head>

              <!--登录失败的提示信息  -->
	<%
		String msg = (String)request.getAttribute("msg");
		if(msg!=null){
		%>
			<script type="text/javascript">
			swal("成功信息","4444");   
	       	</script>  
	    <%		
		}
	%>

	

<body class="login-layout" background="${pageContext.request.contextPath}/404/loginbg.jpg">
	<div class="main-container">
		<div class="main-content">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1">
					<div class="login-container">
						<div class="center">
							<h1>
								<i class="icon-leaf green"></i> <span class="red">经销商</span> 
							</h1>
							<h4 class="blue">&copy;房地产营销平台</h4>
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
										<form  id="form1"  action="${pageContext.request.contextPath}/agency/login" method="post" class="form-horizontal">
											<input type="hidden" name="agency.agency_status" value="${agency.agency_status }">
											<fieldset>
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input id="agency_phone" name="agencyPhone" type="text" value="13361778694" class="form-control" placeholder="手机号码" />
														<i class="icon-user"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input id="agency_pwd" name="agencyPwd" type="password" value="123456" class="form-control"
														placeholder="密码" /> <i class="icon-lock"></i>
												</span>
												</label>
												<div class="space"></div>
												<div class="clearfix">
													<label class="inline"> <input type="checkbox"
														class="ace" /> <span class="lbl">记住密码</span>
													</label>

													<button class="width-35 pull-right btn btn-sm btn-primary" type="submit">
														<li>登录</li>
													</button>
													
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

										<div>
											<a href="#" onclick="show_box('signup-box'); return false;"
												class="user-signup-link">立即注册 <i
												class="icon-arrow-right"></i>
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
												class="block input-icon input-icon-right"> <input name="agency.agency_phone" type="text" class="form-control" placeholder="手机号码" />
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

							<div id="signup-box" class="signup-box widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">
										
										<h4 class="header green lighter bigger">
											<center><i class="icon-group blue"></i>经销商入驻</center>
										</h4>
										
										<div class="space-6"></div>
										<p>请输入你的基本信息：</p>

										<form  id="form2" action="${pageContext.request.contextPath}/agency/add" method="post"  enctype="multipart/form-data" class="form-horizontal">
											<fieldset>
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														name="agency.agency_name" id="agency_name" type="text"  class="form-control" placeholder="经销商名称" /> 
														<i class="icon-envelope"></i>
												</span>
												</label>
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														id="agency_email" name="agency.agency_email" type="text" class="form-control" placeholder="邮箱" />
														<i class="icon-envelope"></i>
												</span>
												</label> 
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														id="agency_pwd" name="agency.agency_pwd" type="password" class="form-control"
														placeholder="密码" /> <i class="icon-lock"></i>
												</span>
												</label> 
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														id="passwords" name="pwd" type="password" class="form-control"
														placeholder="确认密码" /> <i class="icon-retweet"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														id="agency_leader" name="agency.agency_leader" type="text" class="form-control" placeholder="姓名" />
														<i class="icon-user"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														id="agency_phone" name="agency.agency_phone" type="text" class="form-control" placeholder="手机号码" />
														<i class="icon-user"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														id="agency_tel" name="agency.agency_tel" type="text" class="form-control" placeholder="固定电话" />
														<i class="icon-user"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														id="agency_address" name="agency.agency_address" type="text" class="form-control" placeholder="地址" />
														<i class="icon-user"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> 
													<input id="file" name="logoFile" type="file" label="请选择经销商图标"/>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right">
													<textarea  id="agency_intro" name="agency.agency_intro" placeholder="简介" style="width:300px;height:100px;"></textarea> 
												</span>
												
												</label> <label class="block"> <input type="checkbox" id="acceptTerms"
													class="ace" /> <span class="lbl">我接受<a
														href="#">用户条款</a>
												</span>
												</label>

												<div class="space-24"></div>

												<div class="clearfix">
													<button type="reset" class="width-30 pull-left btn btn-sm" >
														<i class="icon-refresh"></i>重置
													</button>
				
													<button class="width-65 pull-right btn btn-sm btn-success" type="submit">
														<i class="icon-arrow-right icon-on-right">注册</i>
													</button>
												</div>
											</fieldset>
										</form>
									</div>
									<div class="toolbar center">
										<a href="#" onclick="show_box('login-box'); return false;"
											class="back-to-login-link"> <i class="icon-arrow-left"></i>
											返回登录界面
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/bootstrapValidator.js"></script>
	<script type="text/javascript">
		window.jQuery || document.write("<script src='${pageContext.request.contextPath}/assets/js/jquery-2.0.3.min.js'>" + "<"+"/script>");
	</script>

	<script type="text/javascript">
		if ("ontouchend" in document)
			document.write("<script src='${pageContext.request.contextPath}/assets/js/jquery.mobile.custom.min.js'>" + "<"+"/script>");
	</script>

	<script type="text/javascript">
		function show_box(id) {
			//swal("成功信息");
			jQuery('.widget-box.visible').removeClass('visible');
			jQuery('#' + id).addClass('visible');
		}
	</script>
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
        	agencyPhone: {
                message: '用户名不能为空',
                validators: {
                    notEmpty: {
                        message: '用户名不能为空'
                    },
                    stringLength: {
                        min: 6,
                        max: 30,
                        message: '用户名长度必须是唯一的'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_\.]+$/,
                        message: '用户名只能输入数字，不能输入符号和文字'
                    }
                }
            },
            agencyPwd: {
                validators: {
                    notEmpty: {
                        message: '密码不能为空'
                    },
                    identical: {
                        field: 'agencyPwd',
                        message: '密码必须为数字或字母'
                    }
                }
            }
        }
    });
    
    
    $('#form2').bootstrapValidator({
        message: '所有的值不能为空',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            agency_phone: {
                message: '固定号码不能为空',
                validators: {
                    notEmpty: {
                        message: '固定电话不能为空'
                    },
                    stringLength: {
                        min: 6,
                        max: 11,
                        message: '号码长度必须是6~11之间'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_\.]+$/,
                        message: '号码只能输入数字，不能输入符号和文字'
                    }
                }
            },
            agency_tel: {
                validators: {
                    notEmpty: {
                        message: '电话不能为空'
                    }
                }
            },
            acceptTerms: {
                validators: {
                    notEmpty: {
                        message: '你必须接受用户条款'
                    }
                }
            },
            agency_name: {
                validators: {
                    notEmpty: {
                        message: '经销商名称不能为空'
                    }
                }
            },
            agency_email: {
                validators: {
                    uri: {
                        allowLocal: true,
                        message: '输入正确的邮箱地址格式'
                    }
                }
            },
            agency_leader: {
                validators: {
                    agency_leader: {
                        message: ' 负责人姓名不能为空'
                    }
                }
            },
            agency_pwd: {
                validators: {
                    notEmpty: {
                        message: '密码不能为空'
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
                        message: '密码不能为空'
                    },
                    identical: {
                        field: 'agency_pwd',
                        message: '密码和确认密码不一致'
                    }
                }
            },
            agency_address: {
                validators: {
                    agency_address: {
                        message: ' 公司地址不能为空'
                    }
                }
            }
        }
    });
});
</script>
</body>
</html>
