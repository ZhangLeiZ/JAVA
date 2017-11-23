<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%
    String path = request.getContextPath();
    %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>用户信息页面 </title>
		<meta http-equiv="Content-Type" content="multipart/form-data; charset=iso-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- basic styles -->

		<link href="<%=path%>/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="<%=path%>/assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="<%=path%>/assets/css/bootstrapValidator.css }">
		
		
		<!-- page specific plugin styles -->

		<link rel="stylesheet" href="<%=path%>/assets/css/jquery-ui-1.10.3.custom.min.css" />
		<link rel="stylesheet" href="<%=path%>/assets/css/jquery.gritter.css" />
		<link rel="stylesheet" href="<%=path%>/assets/css/select2.css" />
		<link rel="stylesheet" href="<%=path%>/assets/css/bootstrap-editable.css" />

		<!-- fonts -->

		
		

   <script type="text/javascript">
   	
		   window.onload=function(){
				   var m;  m = document.getElementById("period"); 
				   m.style.visibility = "hidden"; 
						
				   var m;  m = document.getElementById("qq"); 
				   m.style.visibility = "hidden"; 
					
				   var m;  m = document.getElementById("exp"); 
				   m.style.visibility = "hidden"; 
				   
				   var m;  m = document.getElementById("email"); 
				   m.style.visibility = "hidden"; 
				   
				   var m;  m = document.getElementById("wechat"); 
				   m.style.visibility = "hidden"; 
				   
				   var m;  m = document.getElementById("phone"); 
				   m.style.visibility = "hidden"; 
				   
				   var m;  m = document.getElementById("address"); 
				   m.style.visibility = "hidden"; 
				   
				   var m;  m = document.getElementById("salary"); 
				   m.style.visibility = "hidden"; 
				   
				   var m;  m = document.getElementById("intro"); 
				   m.style.visibility = "hidden"; 
				   
				  
				   
				   var m;  m = document.getElementById("des"); 
				   m.style.visibility = "hidden"; 
				   
				   
				   var m;  m = document.getElementById("phonecheck"); 
				   m.style.visibility = "hidden"; 
				   
			 }
   
   
   
   		
   			
   			function check(){
   				
   				var employee_name=document.getElementById("employee_name").value;
   				
   				
   				if(employee_name==""){
   					var m;  m = document.getElementById("period");
   	   				m.style.visibility = "visible"; 
   					return false;
   				}
   				
   				
   				if(employee_name!=""){
   					
   					var m;  m = document.getElementById("period"); 
   	   				m.style.visibility = "hidden"; 
   				}
   				
   				var employee_qq=document.getElementById("employee_qq").value;
   				
   				if(employee_qq==""){
   					var m;  m = document.getElementById("qq");
   	   				m.style.visibility = "visible"; 
   	   				return false;
   				}
   				
   				if(employee_qq!=""){
   					var m;  m = document.getElementById("qq");
   	   				m.style.visibility = "hidden"; 
   				}
   				
   				
   				var employee_exp=document.getElementById("employee_exp").value;
   				
   				if(employee_exp==""){
   					var m;  m = document.getElementById("exp");
   	   				m.style.visibility = "visible"; 
   	   				return false;
   				}
   				
   				if(employee_exp!=""){
   					var m;  m = document.getElementById("exp");
   	   				m.style.visibility = "hidden"; 
   				}
   				
   				
				var employee_email=document.getElementById("employee_email").value;
   				
   				if(employee_email==""){
   					var m;  m = document.getElementById("email");
   	   				m.style.visibility = "visible"; 
   	   				return false;
   				}
   				
   				if(employee_email!=""){
   					var m;  m = document.getElementById("email");
   	   				m.style.visibility = "hidden"; 
   				}
   				
   				
				var employee_wechat=document.getElementById("employee_wechat").value;
   				
   				if(employee_wechat==""){
   					var m;  m = document.getElementById("wechat");
   	   				m.style.visibility = "visible"; 
   	   				return false;
   				}
   				
   				if(employee_wechat!=""){
   					var m;  m = document.getElementById("wechat");
   	   				m.style.visibility = "hidden"; 
   				}
   				
   				
				var employee_phone=document.getElementById("employee_phone").value;
   				
   				if(employee_phone==""){
   					var m;  m = document.getElementById("phone");
   	   				m.style.visibility = "visible"; 
   	   				return false;
   				}
   				
   				if(employee_phone!=""){
   					var m;  m = document.getElementById("phone");
   	   				m.style.visibility = "hidden"; 
   				}
   				
   				
   				
   				var a = /^((\(\d{3}\))|(\d{3}\-))?13\d{9}|14[57]\d{8}|15\d{9}|18\d{9}$/;
   				
	   			if(employee_phone.length!=11||!employee_phone.match(a)){
	   				var m;  m = document.getElementById("phonecheck");
   	   				m.style.visibility = "visible"; 
   	   				return false;
	   	     	 }
   				
	   			if(employee_phone.length==11||employee_phone.match(a)){
	   				var m;  m = document.getElementById("phonecheck");
   	   				m.style.visibility = "hidden"; 
   	   				
	   			 }
   				
				var employee_address=document.getElementById("employee_address").value;
   				
   				if(employee_address==""){
   					var m;  m = document.getElementById("address");
   	   				m.style.visibility = "visible"; 
   	   				return false;
   				}
   				
   				if(employee_address!=""){
   					var m;  m = document.getElementById("address");
   	   				m.style.visibility = "hidden"; 
   				}
   				
   				
				var basic_salary=document.getElementById("basic_salary").value;
   				
   				if(basic_salary==""){
   					var m;  m = document.getElementById("salary");
   	   				m.style.visibility = "visible"; 
   	   				return false;
   				}
   				
   				if(basic_salary!=""){
   					var m;  m = document.getElementById("salary");
   	   				m.style.visibility = "hidden"; 
   				}
   				
   				
				var employee_intro=document.getElementById("employee_intro").value;
   				
   				if(employee_intro==""){
   					var m;  m = document.getElementById("intro");
   	   				m.style.visibility = "visible"; 
   	   				return false;
   				}
   				
   				if(employee_intro!=""){
   					var m;  m = document.getElementById("intro");
   	   				m.style.visibility = "hidden"; 
   				}
   				
   				
				var employee_des=document.getElementById("employee_des").value;
   				
   				if(employee_des==""){
   					var m;  m = document.getElementById("des");
   	   				m.style.visibility = "visible"; 
   	   				return false;
   				}
   				
   				if(employee_des!=""){
   					var m;  m = document.getElementById("des");
   	   				m.style.visibility = "hidden"; 
   				}
   			}
   			
   	</script>  
		
		

		<!-- ace styles -->

		<link rel="stylesheet" href="<%=path%>/assets/css/ace.min.css" />
		<link rel="stylesheet" href="<%=path%>/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="<%=path%>/assets/css/ace-skins.min.css" />

		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->

		<script src="<%=path%>/assets/js/ace-extra.min.js"></script>
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
		<a href="#">主页</a>
	</li>

	<li>
		<a href="#">员工管理</a>
	</li>
	<li class="active">员工入职</li>
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
				<div id="user-profile-3" class="user-profile row">
					<div class="col-sm-offset-1 col-sm-10">
				
						<div class="space"></div>
						<form class="form-horizontal" onsubmit="return check();" id="defaultForm" action="<%=path %>/employee/Employeeadd?agencyid=${sessionScope.agency.agency_id}" method="post" enctype="multipart/form-data">
							<div class="tabbable">
								<div class="profile-edit-tab-content">
									<div id="edit-basic" class="tab-pane in active">
										<h4 class="header blue bolder smaller">信息录入</h4>
										<div class="row">
											<div class="col-xs-12 col-sm-12">
												<input type="file" name="file"/>
											</div>
											<div class="vspace-xs"></div>

											<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right"  for="form-field-facebook">用户名称</label>
														
														
														
											<div class="col-sm-6">
												<span class="input-icon">
													<input type="text"  onblur="check();"  name="employee.employee_name" id="employee_name" />
													
													 <font  color="#ff3300"  id="period">请输入用户名称</font>
												</span>
												
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right" for="form-field-facebook">QQ号码</label>

											<div class="col-sm-9">
												<span class="input-icon">
													<input type="text" onblur="check();"  name="employee.employee_qq" id="employee_qq" />
													 <font  color="#ff3300"   id="qq">请输入QQ号码</font>
												</span>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right">性别</label>

											<div class="col-sm-6">
												<label class="inline">
													<input name="employee.employee_gender" type="radio" checked class="ace" value="男"/>
													<span class="lbl"> 男</span>
												</label>

												&nbsp; &nbsp; &nbsp;
												<label class="inline">
													<input name="employee.employee_gender" id="employee_gender" type="radio" class="ace" value="女"/>
													<span class="lbl"> 女</span>
													
												</label>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right" for="form-field-comment">工作经验</label>

											<div class="col-sm-9">
												<textarea  id="employee_exp" onblur="check();" name="employee.employee_exp"></textarea>
												<font  color="#ff3300"   id="exp">请输入工作经验</font>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right" for="form-field-email" >邮箱</label>

											<div class="col-sm-9">
												<span class="input-icon input-icon-right">
													<input type="email" id="employee_email"  onblur="check();"  name="employee.employee_email"/>
													
													
													<font  color="#ff3300"   id="email">请输入邮箱地址</font>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<i class="icon-envelope"></i>
												</span>
											</div>
										</div>

										<div class="space-4"></div>

										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right" for="form-field-website">微信号</label>

											<div class="col-sm-9">
												<span class="input-icon input-icon-right">
													<input type="text" id="employee_wechat" onblur="check();"  name="employee.employee_wechat" />
													<font  color="#ff3300"   id="wechat">请输入微信号</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<i class="icon-globe"></i>
												</span>
											</div>
										</div>

										<div class="space-4"></div>

										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right" for="form-field-phone">手机号</label>

											<div class="col-sm-9">
												<span class="input-icon input-icon-right">
													<input class="input-medium " name="employee.employee_phone" onblur="check();"  type="text" id="employee_phone" />
														<font  color="#ff3300"   id="phone">请输入手机号码</font>
													<font  color="#ff3300"   id="phonecheck">请输入正确的手机号码</font>
												</span>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right" for="form-field-facebook">地址</label>

											<div class="col-sm-9">
												<span class="input-icon">
													<input type="text" name="employee.employee_address" onblur="check();"  id="employee_address" />
													<font  color="#ff3300"   id="address">请输入地址</font>
												</span>
											</div>
										</div>

										<div class="space-4"></div>

										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right" for="form-field-twitter">基本工资</label>

											<div class="col-sm-9">
												<span class="input-icon">
													<input type="text" name="employee.basic_salary"  onblur="check();"  id="basic_salary" />
													<font  color="#ff3300"   id="salary">请输入基本工资</font>
												</span>
											</div>
										</div>
													<input type="hidden" name="employee.angency_id" id="form-field-gplus" value="${sessionScope.agency.agency_id }"/>
									<div id="edit-password" class="tab-pane">
										<!-- <div class="form-group">
											<label class="col-sm-3 control-label no-padding-right" for="form-field-pass1">负责楼盘</label>
											<div class="col-sm-9">
												<input type="text" id="form-field-pass1" name="employee.building_id" />
											</div>
										</div> -->
										<input type="hidden" name="employeePwd" value="123456"/>
										<div class="col-sm-2"></div>
										<div class="form-group">
			                        		 <label for="employee.buildings_id" >负责楼盘</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								   			 <select name="employee.buildings_id" style="width:170px;">
												<s:iterator value="#request.buildings" var="d">
													<option value="${d.buildings_id}">${d.buildings_name}</option>
												</s:iterator>
											</select>
		                   				 </div>

										<div class="space-4"></div>
										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right" for="form-field-comment">个人简历</label>

											<div class="col-sm-9">
												<textarea id="employee_intro"  onblur="check();"  name="employee.employee_intro"></textarea>
												<font  color="#ff3300"   id="intro">请输入个人简历</font>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right" for="form-field-comment">个人说明</label>

											<div class="col-sm-9">
												<textarea id="employee_des" onblur="check();"  name="employee.employee_des"></textarea>
												<font  color="#ff3300"   id="des">请输入个人说明</font>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="clearfix form-actions">
								<div class="col-md-offset-3 col-md-9">
									<button class="btn btn-info" type="submit">
										<i class="icon-ok bigger-110"></i>
										保存
									</button>

									&nbsp; &nbsp;
									<button class="btn" type="reset">
										<i class="icon-undo bigger-110"></i>
										重置
									</button>
								</div>
							</div>
						</form>
					</div><!-- /span -->
	</div><!-- /user-profile -->
</div>

<!-- PAGE CONTENT ENDS -->
</div><!-- /.col -->
</div><!-- /.row -->
</div><!-- /.page-content -->

</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->

		<script src="<%=path%>/assets/js/jquery.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

		<!--[if !IE]> -->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='<%=path%>/assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='<%=path%>/assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='<%=path%>/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="<%=path%>/assets/js/bootstrap.min.js"></script>
		<script src="<%=path%>/assets/js/typeahead-bs2.min.js"></script>

		<!-- page specific plugin scripts -->

		<!--[if lte IE 8]>
		  <script src="<%=path%>/assets/js/excanvas.min.js"></script>
		<![endif]-->

		<script src="<%=path%>/assets/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="<%=path%>/assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="<%=path%>/assets/js/jquery.gritter.min.js"></script>
		<script src="<%=path%>/assets/js/bootbox.min.js"></script>
		<script src="<%=path%>/assets/js/jquery.slimscroll.min.js"></script>
		<script src="<%=path%>/assets/js/jquery.easy-pie-chart.min.js"></script>
		<script src="<%=path%>/assets/js/jquery.hotkeys.min.js"></script>
		<script src="<%=path%>/assets/js/bootstrap-wysiwyg.min.js"></script>
		<script src="<%=path%>/assets/js/select2.min.js"></script>
		<script src="<%=path%>/assets/js/date-time/bootstrap-datepicker.min.js"></script>
		<script src="<%=path%>/assets/js/fuelux/fuelux.spinner.min.js"></script>
		<script src="<%=path%>/assets/js/x-editable/bootstrap-editable.min.js"></script>
		<script src="<%=path%>/assets/js/x-editable/ace-editable.min.js"></script>
		<script src="<%=path%>/assets/js/jquery.maskedinput.min.js"></script>
		<script src="<%=path%>/assets/js/bootstrapValidator.js"></script>
		<!-- ace scripts -->

		<script src="<%=path%>/assets/js/ace-elements.min.js"></script>
		<script src="<%=path%>/assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
<script type="text/javascript">
/* $(document).ready(function() {
    /**
     * 下面是进行插件初始化
     * 你只需传入相应的键值对
     * */
  /* /* /* /*   $('#defaultForm').bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {/*输入框不同状态，显示图片的样式*/
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {/*验证*/
            	employee.employee_name: {/*键名和input name值对应*/
                    message: 'The username is not valid',
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
                employee.employee_qq: {
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
                        identical: {//相同
                            field: 'employee.employee_qq',/* 对应input name值 */
                            message: '两次密码不一致'
                        },
                        different: {//不能和用户名相同
                            field: 'employee.employee_name',
                            message: '不能和用户名相同'
                        },
                        regexp: {/* 只需加此键值对 */
                            regexp: /^[a-zA-Z0-9_\.]+$/,
                            message: '只能是数字和字母_.'
                        }
                    }
                },
                employee.employee_email: {
                    validators: {
                        notEmpty: {
                            message: 'The email address is required and can\'t be empty'
                        },
                        emailAddress: {
                            message: 'The input is not a valid email address'
                        }
                    }
                }
            }
        });
}); */ */ */ */ */
</script>
		<script type="text/javascript">
			jQuery(function($) {
			
				//editables on first profile page
				$.fn.editable.defaults.mode = 'inline';
				$.fn.editableform.loading = "<div class='editableform-loading'><i class='light-blue icon-2x icon-spinner icon-spin'></i></div>";
			
				//editables 
			    $('#username').editable({
					type: 'text',
					name: 'username'
			    });
			
			
				var countries = [];
			    $.each({ "CA": "Canada", "IN": "India", "NL": "Netherlands", "TR": "Turkey", "US": "United States"}, function(k, v) {
			        countries.push({id: k, text: v});
			    });
			
				var cities = [];
				cities["CA"] = [];
				$.each(["Toronto", "Ottawa", "Calgary", "Vancouver"] , function(k, v){
					cities["CA"].push({id: v, text: v});
				});
				cities["IN"] = [];
				$.each(["Delhi", "Mumbai", "Bangalore"] , function(k, v){
					cities["IN"].push({id: v, text: v});
				});
				cities["NL"] = [];
				$.each(["Amsterdam", "Rotterdam", "The Hague"] , function(k, v){
					cities["NL"].push({id: v, text: v});
				});
				cities["TR"] = [];
				$.each(["Ankara", "Istanbul", "Izmir"] , function(k, v){
					cities["TR"].push({id: v, text: v});
				});
				cities["US"] = [];
				$.each(["New York", "Miami", "Los Angeles", "Chicago", "Wysconsin"] , function(k, v){
					cities["US"].push({id: v, text: v});
				});
				
				var currentValue = "NL";
			    $('#country').editable({
					type: 'select2',
					value : 'NL',
			        source: countries,
					success: function(response, newValue) {
						if(currentValue == newValue) return;
						currentValue = newValue;
						
						var new_source = (!newValue || newValue == "") ? [] : cities[newValue];
						
						//the destroy method is causing errors in x-editable v1.4.6
						//it worked fine in v1.4.5
						/**			
						$('#city').editable('destroy').editable({
							type: 'select2',
							source: new_source
						}).editable('setValue', null);
						*/
						
						//so we remove it altogether and create a new element
						var city = $('#city').removeAttr('id').get(0);
						$(city).clone().attr('id', 'city').text('Select City').editable({
							type: 'select2',
							value : null,
							source: new_source
						}).insertAfter(city);//insert it after previous instance
						$(city).remove();//remove previous instance
						
					}
			    });
			
				$('#city').editable({
					type: 'select2',
					value : 'Amsterdam',
			        source: cities[currentValue]
			    });
			
			
			
				$('#signup').editable({
					type: 'date',
					format: 'yyyy-mm-dd',
					viewformat: 'dd/mm/yyyy',
					datepicker: {
						weekStart: 1
					}
				});
			
			    $('#age').editable({
			        type: 'spinner',
					name : 'age',
					spinner : {
						min : 16, max:99, step:1
					}
				});
				
				//var $range = document.createElement("INPUT");
				//$range.type = 'range';
			    $('#login').editable({
			        type: 'slider',//$range.type == 'range' ? 'range' : 'slider',
					name : 'login',
					slider : {
						min : 1, max:50, width:100
					},
					success: function(response, newValue) {
						if(parseInt(newValue) == 1)
							$(this).html(newValue + " hour ago");
						else $(this).html(newValue + " hours ago");
					}
				});
			
				$('#about').editable({
					mode: 'inline',
			        type: 'wysiwyg',
					name : 'about',
					wysiwyg : {
						//css : {'max-width':'300px'}
					},
					success: function(response, newValue) {
					}
				});
				
				
				
				// *** editable avatar *** //
				try {//ie8 throws some harmless exception, so let's catch it
			
					//it seems that editable plugin calls appendChild, and as Image doesn't have it, it causes errors on IE at unpredicted points
					//so let's have a fake appendChild for it!
					if( /msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase()) ) Image.prototype.appendChild = function(el){}
			
					var last_gritter
					$('#avatar').editable({
						type: 'image',
						name: 'avatar',
						value: null,
						image: {
							//specify ace file input plugin's options here
							btn_choose: 'Change Avatar',
							droppable: true,
							/**
							//this will override the default before_change that only accepts image files
							before_change: function(files, dropped) {
								return true;
							},
							*/
			
							//and a few extra ones here
							name: 'avatar',//put the field name here as well, will be used inside the custom plugin
							max_size: 110000,//~100Kb
							on_error : function(code) {//on_error function will be called when the selected file has a problem
								if(last_gritter) $.gritter.remove(last_gritter);
								if(code == 1) {//file format error
									last_gritter = $.gritter.add({
										title: 'File is not an image!',
										text: 'Please choose a jpg|gif|png image!',
										class_name: 'gritter-error gritter-center'
									});
								} else if(code == 2) {//file size rror
									last_gritter = $.gritter.add({
										title: 'File too big!',
										text: 'Image size should not exceed 100Kb!',
										class_name: 'gritter-error gritter-center'
									});
								}
								else {//other error
								}
							},
							on_success : function() {
								$.gritter.removeAll();
							}
						},
					    url: function(params) {
							// ***UPDATE AVATAR HERE*** //
							//You can replace the contents of this function with examples/profile-avatar-update.js for actual upload
			
			
							var deferred = new $.Deferred
			
							//if value is empty, means no valid files were selected
							//but it may still be submitted by the plugin, because "" (empty string) is different from previous non-empty value whatever it was
							//so we return just here to prevent problems
							var value = $('#avatar').next().find('input[type=hidden]:eq(0)').val();
							if(!value || value.length == 0) {
								deferred.resolve();
								return deferred.promise();
							}
			
			
							//dummy upload
							setTimeout(function(){
								if("FileReader" in window) {
									//for browsers that have a thumbnail of selected image
									var thumb = $('#avatar').next().find('img').data('thumb');
									if(thumb) $('#avatar').get(0).src = thumb;
								}
								
								deferred.resolve({'status':'OK'});
			
								if(last_gritter) $.gritter.remove(last_gritter);
								last_gritter = $.gritter.add({
									title: 'Avatar Updated!',
									text: 'Uploading to server can be easily implemented. A working example is included with the template.',
									class_name: 'gritter-info gritter-center'
								});
								
							 } , parseInt(Math.random() * 800 + 800))
			
							return deferred.promise();
						},
						
						success: function(response, newValue) {
						}
					})
				}catch(e) {}
				
				
			
				//another option is using modals
				$('#avatar2').on('click', function(){
					var modal = 
					'<div class="modal hide fade">\
						<div class="modal-header">\
							<button type="button" class="close" data-dismiss="modal">&times;</button>\
							<h4 class="blue">Change Avatar</h4>\
						</div>\
						\
						<form class="no-margin">\
						<div class="modal-body">\
							<div class="space-4"></div>\
							<div style="width:75%;margin-left:12%;"><input type="file" name="file-input" /></div>\
						</div>\
						\
						<div class="modal-footer center">\
							<button type="submit" class="btn btn-small btn-success"><i class="icon-ok"></i> Submit</button>\
							<button type="button" class="btn btn-small" data-dismiss="modal"><i class="icon-remove"></i> Cancel</button>\
						</div>\
						</form>\
					</div>';
					
					
					var modal = $(modal);
					modal.modal("show").on("hidden", function(){
						modal.remove();
					});
			
					var working = false;
			
					var form = modal.find('form:eq(0)');
					var file = form.find('input[type=file]').eq(0);
					file.ace_file_input({
						style:'well',
						btn_choose:'Click to choose new avatar',
						btn_change:null,
						no_icon:'icon-picture',
						thumbnail:'small',
						before_remove: function() {
							//don't remove/reset files while being uploaded
							return !working;
						},
						before_change: function(files, dropped) {
							var file = files[0];
							if(typeof file === "string") {
								//file is just a file name here (in browsers that don't support FileReader API)
								if(! (/\.(jpe?g|png|gif)$/i).test(file) ) return false;
							}
							else {//file is a File object
								var type = $.trim(file.type);
								if( ( type.length > 0 && ! (/^image\/(jpe?g|png|gif)$/i).test(type) )
										|| ( type.length == 0 && ! (/\.(jpe?g|png|gif)$/i).test(file.name) )//for android default browser!
									) return false;
			
								if( file.size > 110000 ) {//~100Kb
									return false;
								}
							}
			
							return true;
						}
					});
			
					form.on('submit', function(){
						if(!file.data('ace_input_files')) return false;
						
						file.ace_file_input('disable');
						form.find('button').attr('disabled', 'disabled');
						form.find('.modal-body').append("<div class='center'><i class='icon-spinner icon-spin bigger-150 orange'></i></div>");
						
						var deferred = new $.Deferred;
						working = true;
						deferred.done(function() {
							form.find('button').removeAttr('disabled');
							form.find('input[type=file]').ace_file_input('enable');
							form.find('.modal-body > :last-child').remove();
							
							modal.modal("hide");
			
							var thumb = file.next().find('img').data('thumb');
							if(thumb) $('#avatar2').get(0).src = thumb;
			
							working = false;
						});
						
						
						setTimeout(function(){
							deferred.resolve();
						} , parseInt(Math.random() * 800 + 800));
			
						return false;
					});
							
				});
			
				
			
				//////////////////////////////
				$('#profile-feed-1').slimScroll({
				height: '250px',
				alwaysVisible : true
				});
			
				$('.profile-social-links > a').tooltip();
			
				$('.easy-pie-chart.percentage').each(function(){
				var barColor = $(this).data('color') || '#555';
				var trackColor = '#E2E2E2';
				var size = parseInt($(this).data('size')) || 72;
				$(this).easyPieChart({
					barColor: barColor,
					trackColor: trackColor,
					scaleColor: false,
					lineCap: 'butt',
					lineWidth: parseInt(size/10),
					animate:false,
					size: size
				}).css('color', barColor);
				});
			  
				///////////////////////////////////////////
			
				//show the user info on right or left depending on its position
				$('#user-profile-2 .memberdiv').on('mouseenter', function(){
					var $this = $(this);
					var $parent = $this.closest('.tab-pane');
			
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $this.offset();
					var w2 = $this.width();
			
					var place = 'left';
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) place = 'right';
					
					$this.find('.popover').removeClass('right left').addClass(place);
				}).on('click', function() {
					return false;
				});
			
			
				///////////////////////////////////////////
				$('#user-profile-3')
				.find('input[type=file]').ace_file_input({
					style:'well',
					btn_choose:'Change avatar',
					btn_change:null,
					no_icon:'icon-picture',
					thumbnail:'large',
					droppable:true,
					before_change: function(files, dropped) {
						var file = files[0];
						if(typeof file === "string") {//files is just a file name here (in browsers that don't support FileReader API)
							if(! (/\.(jpe?g|png|gif)$/i).test(file) ) return false;
						}
						else {//file is a File object
							var type = $.trim(file.type);
							if( ( type.length > 0 && ! (/^image\/(jpe?g|png|gif)$/i).test(type) )
									|| ( type.length == 0 && ! (/\.(jpe?g|png|gif)$/i).test(file.name) )//for android default browser!
								) return false;
			
							if( file.size > 110000 ) {//~100Kb
								return false;
							}
						}
			
						return true;
					}
				})
				.end().find('button[type=reset]').on(ace.click_event, function(){
					$('#user-profile-3 input[type=file]').ace_file_input('reset_input');
				})
				.end().find('.date-picker').datepicker().next().on(ace.click_event, function(){
					$(this).prev().focus();
				})
				$('.input-mask-phone').mask('(999) 999-9999');
			
			
			
				////////////////////
				//change profile
				$('[data-toggle="buttons"] .btn').on('click', function(e){
					var target = $(this).find('input[type=radio]');
					var which = parseInt(target.val());
					$('.user-profile').parent().addClass('hide');
					$('#user-profile-'+which).parent().removeClass('hide');
				});
			});
		</script>
	</body>
</html>
