<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="com.th.bean.Agency"%>
     <%@ taglib uri="/struts-tags" prefix="s" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%
    	String path=request.getContextPath();
     String  prompt=(String)request.getAttribute("prompt");
     String employeename=(String)request.getAttribute("employeename");
    %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8" />
		<title>客户详情</title>
		
		

	<!-- 楼栋分页样式 -->
	<link rel="stylesheet" type="text/css" href="<%=path %>/Css/Lcss/bootstrap/bootstrap-table.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/Css/Lcss/bootstrap/bootstrap-table.min.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/Css/Lcss/bootstrap/index.css">
	<link rel="stylesheet" href="<%=path%>/Css/Lcss/bootstrap/dist/css/bootstrapValidator.css"/>
	<!-- <link rel="stylesheet" href="<%=path%>/Css/Lcss/bootstrap/vendor/bootstrap/css/bootstrap.css"/> -->
	
	<link rel="stylesheet" href="<%=path%>/Css/Lcss/bootstrap/vendor/bootstrap/css/bootstrap.min.css"/>
	
	
	<link rel="stylesheet" href="<%=path%>/Css/sweetalert.css"/>
	<script type="text/javascript" src="<%=path%>/Js/sweetalert-dev.js"></script>
	
	
	
		<!-- 联动 -->
		<link rel="stylesheet" href="<%=path %>/Css/Lcss/linkage/form.css" />
		
		<!--[if IE]>
		<script src="<%=path %>/Css/Lcss/linkage/ieFix.js"></script>
		<![endif]-->
		
		
		<script src="<%=path %>/Css/Lcss/linkage/kit.js"></script>
		<script src="<%=path %>/Css/Lcss/linkage/dom.js"></script>
		<script src="<%=path %>/Css/Lcss/linkage/event.js"></script>
		<script src="<%=path %>/Css/Lcss/linkage/TreeDict.js"></script>
		<script src="<%=path %>/Css/Lcss/linkage/math.js"></script>
		<script src="<%=path %>/Css/Lcss/linkage/form.js"></script>
		<script src="<%=path %>/Css/Lcss/linkage/combobox.js"></script>
		<script src="<%=path %>/Css/Lcss/linkage/suggestselect.js"></script>
		<script src="<%=path %>/Css/Lcss/linkage/list.js"></script>
		<script src="<%=path %>/Css/Lcss/linkage/json-data.js"></script>
	
		<script type="text/javascript">
			var _gaq = _gaq || [];
			_gaq.push(['_setAccount', 'UA-30210234-1']);
			_gaq.push(['_trackPageview']);
			(function() {
				var ga = document.createElement('script');
				ga.type = 'text/javascript';
				ga.async = true;
				ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
				var s = document.getElementsByTagName('script')[0];
				s.parentNode.insertBefore(ga, s);
			})();

		</script>
	
		<!-- 用于计算 -->
		<script type="text/javascript">
			 function regsave(){
				 var total_floor = document.getElementById("total_floor").value;
			 	var floor_rooms = document.getElementById("floor_rooms").value;
					if(total_floor!=null && floor_rooms!=null){
						
						var result=total_floor*floor_rooms;
						$('#sum').val(result);
						
						return ;
					}	
			 }
			 
			 function regsaves(){
				 var total_floor = document.getElementById("total_floors").value;
			 	var floor_rooms = document.getElementById("floor_roomss").value;
					if(total_floor!=null && floor_rooms!=null){
						
						var result=total_floor*floor_rooms;
						$('#sums').val(result);
						
						return ;
					}	
			 }
			 
			 
		 </script>
	
	

		<meta name="keywords" content="Bootstrap模版,Bootstrap模版下载,Bootstrap教程,Bootstrap中文" />
		<meta name="description" content="JS代码网提供Bootstrap模版,Bootstrap教程,Bootstrap中文翻译等相关Bootstrap插件下载" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- basic styles -->

		<link rel="stylesheet" href="<%=path %>/assets/css/font-awesome.min.css" />



	    <link rel="stylesheet" href="<%=path %>/assets/css/jquery-ui-1.10.3.full.min.css" />
		<link rel="stylesheet" href="<%=path %>/assets/css/datepicker.css" />
		<link rel="stylesheet" href="<%=path %>/assets/css/ui.jqgrid.css" />



		<link rel="stylesheet" href="<%=path %>/assets/css/ace.min.css" />
		<link rel="stylesheet" href="<%=path %>/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="<%=path %>/assets/css/ace-skins.min.css" />

		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->

		<script src="<%=path %>/assets/js/ace-extra.min.js"></script>

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
</head>
<body>

		<!-- 上传电子合同 -->
		<%@ include file="./contractEmployee.jsp" %>

	
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
								<a href="#">首页</a>
							</li>

							<li>
								<a href="#">楼盘</a>
							</li>
							<li class="active">楼盘   &  管理</li>
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
						
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								
								<input type="hidden" id="xiugai" value="<%=prompt %>">
								
								<h1 align="center">客户详情</h1>
								<hr color="green">
								<div>
									
									
									<form id="modify" method="post" class="form-horizontal" enctype="multipart/form-data" action="http://localhost:8080/RealEstate/buildings/budilgAdd">
												
												
												<div class="form-group">
													<label class="col-lg-3 control-label">客户姓名:</label>
													<div class="col-lg-5">
														<font size="3">${customer.customer_name}</font>
													</div>
												</div>
												
												
												
												<div class="form-group">
													<label class="col-lg-3 control-label">员工姓名:</label>
													<div class="col-lg-5">
														<font size="3"><%=employeename %></font>
													</div>
												</div>
												
												<div class="form-group">
													<label class="col-lg-3 control-label">性别:</label>
													<div class="col-lg-5">
														<font size="3">${customer.customer_gender}</font>
													</div>
												</div>
												<div class="form-group">
													<label class="col-lg-3 control-label">生日:</label>
													<div class="col-lg-5">
														<font size="3">${customer.birthday}</font>
													</div>
												</div>
												
												<div class="form-group">
													<label class="col-lg-3 control-label">身份证号:</label>
													<div class="col-lg-5">
														<font size="3">${customer.identity_id}</font>
													</div>
												</div><div class="form-group">
													<label class="col-lg-3 control-label">邮箱:</label>
													<div class="col-lg-5">
														<font size="3">${customer.customer_email}</font>
													</div>
												</div><div class="form-group">
													<label class="col-lg-3 control-label">手机号:</label>
													<div class="col-lg-5">
														<font size="3">${customer.customer_phone}</font>
													</div>
												</div><div class="form-group">
													<label class="col-lg-3 control-label">联系地址:</label>
													<div class="col-lg-5">
														<font size="3">${customer.customer_address}</font>
													</div>
												</div><div class="form-group">
													<label class="col-lg-3 control-label">客户类型:</label>
													<div class="col-lg-5">
														<font size="3">${customer.customer_type}</font>
													</div>
												</div><div class="form-group">
													<label class="col-lg-3 control-label">共同购房人姓名:</label>
													<div class="col-lg-5">
														<font size="3">${customer.together}</font>
													</div>
												</div><div class="form-group">
													<label class="col-lg-3 control-label">购房合同路径:</label>
													<div class="col-lg-5">
														<font size="3">${customer.customer_contract}</font>
													</div>
												</div><div class="form-group">
													<label class="col-lg-3 control-label">电子档案路径:</label>
													<div class="col-lg-5">
														<font size="3">${customer.archives}</font>
													</div>
												</div>
												<div class="form-group">
													<label class="col-lg-3 control-label">创建时间:</label>
													<div class="col-lg-5">
														<font size="3">${customer.created_time}</font>
													</div>
												</div><div class="form-group">
													<label class="col-lg-3 control-label">状态:</label>
													<div class="col-lg-5">
														<font size="3">${customer.customer_status}</font>
													</div>
												</div>
										
										
									</form>	
						            
		     						
									
							
							
							
							
												<div class="modal fade" id="exampleModals" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabels">
													  <div class="modal-dialog" role="document">
													    <div class="modal-content">
													      <div class="modal-header">
													        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
													        <h4 class="modal-title" id="exampleModalLabel">新增客户</h4>
													      </div>
													      <div >
													        <form id="modify" method="post" class="form-horizontal" enctype="multipart/form-data" action="<%=path %>/customer/customerAdd">
													        
																
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">客户姓名</label>
																	<div class="col-lg-5">
																		<input type="text"  class="form-control" name="customer.customer_name"/>
																	</div>
																</div>
																
																
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">员工姓名</label>
																	<div class="col-lg-5">
																		<select name="customer.employee_id" style="width: 235px">
																			<s:iterator value="#request.employees" var="d">
																				<option value="${d.employee_id}">${d.employee_name}</option>
																			</s:iterator>
																		</select>
																	</div>
																</div>
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">性别</label>
																	<div class="col-lg-5">
																		
																		<label class="inline">
																				<input name="customer.customer_gender" type="radio" checked class="ace" value="男"/>
																				<span class="lbl"> 男</span>
																			</label>
							
																			&nbsp; &nbsp; &nbsp;
																			<label class="inline">
																				<input name="customer.customer_gender" id="employee_gender" type="radio" class="ace" value="女"/>
																				<span class="lbl"> 女</span>
																				
																		</label>
																		
																	</div>
																</div>
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">生日</label>
																	<div class="col-lg-5">
																		<input type="date" id="floor_rooms"  class="form-control"   name="customer.birthday"/>
																	</div>
																</div>
																
																
																
																
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">身份证号</label>
																	<div class="col-lg-5">
																		<input type="text"   class="form-control" name="customer.identity_id"/>
																	</div>
																</div>
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">邮箱</label>
																	<div class="col-lg-5">
																		<input type="text"   class="form-control" name="customer.customer_email"/>
																	</div>
																</div>
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">手机号</label>
																	<div class="col-lg-5">
																		<input type="text"   class="form-control" name="customer.customer_phone"/>
																	</div>
																</div>
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">联系地址</label>
																	<div class="col-lg-5">
																		<input type="text"   class="form-control" name="customer.customer_address"/>
																	</div>
																</div>
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">客户类型</label>
																	<div class="col-lg-5">
																		<select name="customer.customer_type" style="width:205px">
																				<option value="预约客户">预约客户</option>
																				<option value="预定客户">预定客户</option>
																				<option value="购房客户">购房客户</option>
																		</select>	
																	</div>
																</div>
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">状态</label>
																	<div class="col-lg-5">
																		<select name="customer.customer_status" style="width:205px">
																				<option value="激活">激活</option>
																				<option value="冻结">冻结</option>
																		</select>	
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
							
							
							
							
							
	
							<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
									  <div class="modal-dialog" role="document">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="exampleModalLabel">修 改 数 据</h4>
									      </div>
									      <div class="modal-body">
									        
									        	 <form id="from1" method="post" class="form-horizontal" enctype="multipart/form-data" action="<%=path %>/customer/customerUpdate">
																
																 <input type="hidden" name="customer.customer_id">
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">客户名称</label>&nbsp;&nbsp;&nbsp;
																	<div class="col-lg-5">
																		<input type="text"  class="form-control" name="customer.customer_name"/>
																	</div>	
																</div>
																
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">员工姓名</label>
																	<div class="col-lg-5">
																		<select name="customer.employee_id" style="width: 235px">
																			<s:iterator value="#request.employees" var="d">
																				<option value="${d.employee_id}">${d.employee_name}</option>
																			</s:iterator>
																		</select>
																	</div>
																</div>
																
																
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">性别</label>
																	<div class="col-lg-5">
																		<label class="inline">
																				<input name="customer.customer_gender" type="radio"  class="ace" value="男"/>
																				<span class="lbl"> 男</span>
																			</label>
							
																			&nbsp; &nbsp; &nbsp;
																			<label class="inline">
																				<input name="customer.customer_gender" id="employee_gender" type="radio" class="ace" value="女"/>
																				<span class="lbl"> 女</span>
																				
																		</label>
																	</div>
																</div>
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">身份证号</label>
																	<div class="col-lg-5">
																		<input type="text"  class="form-control" name="customer.identity_id"/>
																	</div>
																</div>
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">手机号</label>
																	<div class="col-lg-5">
																		<input type="text"  class="form-control"   name="customer.customer_phone"/>
																	</div>
																</div>
																
																
																
																
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">客户类型</label>
																	<div class="col-lg-5">
																		<select name="customer.customer_type" style="width:205px">
																				<option value="预约客户">预约客户</option>
																				<option value="预定客户">预定客户</option>
																				<option value="购房客户">购房客户</option>
																		</select>	
																	</div>
																</div>
																
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">状态</label>
																	<div class="col-lg-5">
																		<select name="customer.customer_status" style="width:205px">
																				<option value="激活">激活</option>
																				<option value="冻结">冻结</option>
																		</select>	
																	</div>
																</div>
																
																
								
											
													<div class="modal-footer">
												        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
												        <button type="submit" class="btn btn-primary">修 改</button>
												     </div>
						
						
											</form>
									        
									        
									        
									        
									      </div>
									      
									    </div>
									  </div>
									</div>
							
								
								
									
								<div class="modal fade" id="upload" tabindex="-1" role="dialog" aria-labelledby="uploads">
									  <div class="modal-dialog" role="document">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="uploads">上传合同、档案</h4>
									      </div>
									      <div class="modal-body">
									        
									        	 <form id="from2" method="post" class="form-horizontal" enctype="multipart/form-data" action="<%=path %>/customer/uploadFile">
																
																<input type="hidden" name="customer.customer_id">
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">上传购房合同</label>
																	<div class="col-lg-5">
																		<input type="file"   name="upload"/>
																	</div>
																</div>
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">上传电子档案</label>
																	<div class="col-lg-5">
																		<input type="file"   name="logoFile"/>
																	</div>
																</div>
																
								
											
													<div class="modal-footer">
												        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
												        <button type="submit" class="btn btn-primary">上 传</button>
												     </div>
						
						
											</form>
									        
									        
									        
									      </div>
									      
									    </div>
									  </div>
									</div>
								
								
								
								
								
								
								
								
								
								<div id="grid-pager"></div>

								<script type="text/javascript">
									var $path_base = "/";//this will be used in gritter alerts containing images
								</script>

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->

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
							<span>&nbsp; Choose Skin</span>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
							<label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
							<label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
							<label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
							<label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
							<label class="lbl" for="ace-settings-add-container">
								Inside
								<b>.container</b>
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
		
		
		
		<!-- 模态框 -->
		<script>
	//	$('#exampleModal').on('show.bs.modal', function (event) {
		//	  var button = $(event.relatedTarget) // Button that triggered the modal
		//	  var recipient = button.data('whatever') // Extract info from data-* attributes
			  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
			  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
		//	  var modal = $(this)
		//	  modal.find('.modal-title').text('New message to ' + recipient)
		//	  modal.find('.modal-body input').val(recipient)
		//	})	
			
		</script>
		
		
		

		<!-- <![endif]-->

		<!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

		<!--[if !IE]> -->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='http://localhost:8080/RealEstate/assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script> 

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='http://localhost:8080/RealEstate/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
	<!-- 	<script src="<%=path%>/assets/js/bootstrap.min.js"></script>
		<script src="<%=path%>/assets/js/typeahead-bs2.min.js"></script> -->

		<!-- page specific plugin scripts -->

		<script src="<%=path%>/assets/js/date-time/bootstrap-datepicker.min.js"></script>
	 	<script src="<%=path%>/assets/js/jqGrid/jquery.jqGrid.min.js"></script> 
		<script src="<%=path%>/assets/js/jqGrid/i18n/grid.locale-en.js"></script>

		<!-- ace scripts -->

		<script src="<%=path%>/assets/js/ace-elements.min.js"></script>
		<script src="<%=path%>/assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->

		<script type="text/javascript">
			var grid_data = 
			[ 
				{id:"1",name:"Desktop Computer",note:"note",stock:"Yes",ship:"FedEx", sdate:"2007-12-03",lyj:"新格式的"},
				{id:"2",name:"Laptop",note:"Long text ",stock:"Yes",ship:"InTime",sdate:"2007-12-03"},
				{id:"3",name:"LCD Monitor",note:"note3",stock:"Yes",ship:"TNT",sdate:"2007-12-03"},
				{id:"4",name:"Speakers",note:"note",stock:"No",ship:"ARAMEX",sdate:"2007-12-03"},
				{id:"5",name:"Laser Printer",note:"note2",stock:"Yes",ship:"FedEx",sdate:"2007-12-03"},
				{id:"6",name:"Play Station",note:"note3",stock:"No", ship:"FedEx",sdate:"2007-12-03"},
				{id:"7",name:"Mobile Telephone",note:"note",stock:"Yes",ship:"ARAMEX",sdate:"2007-12-03"},
				{id:"8",name:"Server",note:"note2",stock:"Yes",ship:"TNT",sdate:"2007-12-03"},
				{id:"9",name:"Matrix Printer",note:"note3",stock:"No", ship:"FedEx",sdate:"2007-12-03"},
				{id:"10",name:"Desktop Computer",note:"note",stock:"Yes",ship:"FedEx", sdate:"2007-12-03"},
				{id:"11",name:"Laptop",note:"Long text ",stock:"Yes",ship:"InTime",sdate:"2007-12-03"},
				{id:"12",name:"LCD Monitor",note:"note3",stock:"Yes",ship:"TNT",sdate:"2007-12-03"},
				{id:"13",name:"Speakers",note:"note",stock:"No",ship:"ARAMEX",sdate:"2007-12-03"},
				{id:"14",name:"Laser Printer",note:"note2",stock:"Yes",ship:"FedEx",sdate:"2007-12-03"},
				{id:"15",name:"Play Station",note:"note3",stock:"No", ship:"FedEx",sdate:"2007-12-03"},
				{id:"16",name:"Mobile Telephone",note:"note",stock:"Yes",ship:"ARAMEX",sdate:"2007-12-03"},
				{id:"17",name:"Server",note:"note2",stock:"Yes",ship:"TNT",sdate:"2007-12-03"},
				{id:"18",name:"Matrix Printer",note:"note3",stock:"No", ship:"FedEx",sdate:"2007-12-03"},
				{id:"19",name:"Matrix Printer",note:"note3",stock:"No", ship:"FedEx",sdate:"2007-12-03"},
				{id:"20",name:"Desktop Computer",note:"note",stock:"Yes",ship:"FedEx", sdate:"2007-12-03"},
				{id:"21",name:"Laptop",note:"Long text ",stock:"Yes",ship:"InTime",sdate:"2007-12-03"},
				{id:"22",name:"LCD Monitor",note:"note3",stock:"Yes",ship:"TNT",sdate:"2007-12-03"},
				{id:"23",name:"Speakers",note:"note",stock:"No",ship:"ARAMEX",sdate:"2007-12-03"}
			];	
			
			jQuery(function($) {
				var grid_selector = "#grid-table";
				var pager_selector = "#grid-pager";
			
			//	jQuery(grid_selector).jqGrid({
					//direction: "rtl",
					
			//		data: grid_data,
			//		datatype: "local",
			//		height: 250,
			///		colNames:[' ', 'ID','Last Sales','Name', 'Stock', 'Ship via','Notes','laiyongjian'],
			//		colModel:[
			//			{name:'myac',index:'', width:80, fixed:true, sortable:false, resize:false,
			//				formatter:'actions', 
			//				formatoptions:{ 
			//					keys:true,
								
			//					delOptions:{recreateForm: true, beforeShowForm:beforeDeleteCallback},
								//editformbutton:true, editOptions:{recreateForm: true, beforeShowForm:beforeEditCallback}
			//				}
			//			},
			//			{name:'id',index:'id', width:60, sorttype:"int", editable: true},
			//			{name:'sdate',index:'sdate',width:90, editable:true, sorttype:"date",unformat: pickDate},
			//			{name:'name',index:'name', width:150,editable: true,editoptions:{size:"20",maxlength:"30"}},
			//			{name:'stock',index:'stock', width:70, editable: true,edittype:"checkbox",editoptions: {value:"Yes:No"},unformat: aceSwitch},
			//			{name:'ship',index:'ship', width:90, editable: true,edittype:"select",editoptions:{value:"FE:FedEx;IN:InTime;TN:TNT;AR:ARAMEX"}},
			//			{name:'note',index:'note', width:150, sortable:false,editable: true,edittype:"textarea", editoptions:{rows:"2",cols:"10"}}, 
			//			{name:'lyj',index:'lyj', width:150, sortable:false,editable: true,edittype:"textarea", editoptions:{rows:"2",cols:"10"}} 
						
			//		], 
			
			//		viewrecords : true,
			//		rowNum:10,
			//		rowList:[10,20,30],
			//		pager : pager_selector,
			//		altRows: true,
					//toppager: true,
					
			//		multiselect: true,
					//multikey: "ctrlKey",
			//        multiboxonly: true,
			
			//		loadComplete : function() {
			//			var table = this;
			//			setTimeout(function(){
			//				styleCheckbox(table);
							
			//				updateActionIcons(table);
			//				updatePagerIcons(table);
			//				enableTooltips(table);
			//			}, 0);
			//		},
			
			//		editurl: $path_base+"/dummy.html",//nothing is saved
			//		caption: "楼盘的各种操作",
			
			
			//		autowidth: true
			
			//	});
			
				//enable search/filter toolbar
				//jQuery(grid_selector).jqGrid('filterToolbar',{defaultSearch:true,stringResult:true})
			
				//switch element when editing inline
				function aceSwitch( cellvalue, options, cell ) {
					setTimeout(function(){
						$(cell) .find('input[type=checkbox]')
								.wrap('<label class="inline" />')
							.addClass('ace ace-switch ace-switch-5')
							.after('<span class="lbl"></span>');
					}, 0);
				}
				//enable datepicker
				function pickDate( cellvalue, options, cell ) {
					setTimeout(function(){
						$(cell) .find('input[type=text]')
								.datepicker({format:'yyyy-mm-dd' , autoclose:true}); 
					}, 0);
				}
			
			
				//navButtons
			//	jQuery(grid_selector).jqGrid('navGrid',pager_selector,
			//		{ 	//navbar options
			//			edit: true,
			//			editicon : 'icon-pencil blue',
			//			add: true,
			//			addicon : 'icon-plus-sign purple',
			//			del: true,
			//			delicon : 'icon-trash red',
			//			search: true,
			//			searchicon : 'icon-search orange',
			////			refresh: true,
			//			refreshicon : 'icon-refresh green',
			//			view: true,
			//			viewicon : 'icon-zoom-in grey',
						//		},
			//		{
			//			//edit record form
			//			//closeAfterEdit: true,
			//			recreateForm: true,
			//			beforeShowForm : function(e) {
			//				var form = $(e[0]);
			//				form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
			//				style_edit_form(form);
			//			}
			//		},
			//		{
						//new record form
			//			closeAfterAdd: true,
			//			recreateForm: true,
			//			viewPagerButtons: false,
			//			beforeShowForm : function(e) {
			//				var form = $(e[0]);
			//				form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
			//				style_edit_form(form);
			//			}
			//		},
			//		{
						//			//delete record form
				//		recreateForm: true,
				//		beforeShowForm : function(e) {
				//			var form = $(e[0]);
				//			if(form.data('styled')) return false;
				//			
				//			form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
					//		style_delete_form(form);
							//			
					//		form.data('styled', true);
					//	},
				//		onClick : function(e) {
							//			alert(1);
				//		}
				//	},
				//	{
						//search form
				//		recreateForm: true,
				//		afterShowSearch: function(e){
				//			var form = $(e[0]);
				//			form.closest('.ui-jqdialog').find('.ui-jqdialog-title').wrap('<div class="widget-header" />')
				//			style_search_form(form);
				//		},
				//		afterRedraw: function(){
				//			style_search_filters($(this));
				//		}
						//		,
				//		multipleSearch: true,
						/**
				//		multipleGroup:true,
						showQuery: true
						*/
				//	},
				//	{
						//view record form
				//		recreateForm: true,
				//		beforeShowForm: function(e){
				//			var form = $(e[0]);
				//			form.closest('.ui-jqdialog').find('.ui-jqdialog-title').wrap('<div class="widget-header" />')
				//		}
			//		}
		//		)
			
			
				
				function style_edit_form(form) {
					//enable datepicker on "sdate" field and switches for "stock" field
					form.find('input[name=sdate]').datepicker({format:'yyyy-mm-dd' , autoclose:true})
						.end().find('input[name=stock]')
							  .addClass('ace ace-switch ace-switch-5').wrap('<label class="inline" />').after('<span class="lbl"></span>');
			
					//update buttons classes
					var buttons = form.next().find('.EditButton .fm-button');
					buttons.addClass('btn btn-sm').find('[class*="-icon"]').remove();//ui-icon, s-icon
					buttons.eq(0).addClass('btn-primary').prepend('<i class="icon-ok"></i>');
					buttons.eq(1).prepend('<i class="icon-remove"></i>')
					
					buttons = form.next().find('.navButton a');
					buttons.find('.ui-icon').remove();
					buttons.eq(0).append('<i class="icon-chevron-left"></i>');
					buttons.eq(1).append('<i class="icon-chevron-right"></i>');		
				}
			
				function style_delete_form(form) {
					var buttons = form.next().find('.EditButton .fm-button');
					buttons.addClass('btn btn-sm').find('[class*="-icon"]').remove();//ui-icon, s-icon
					buttons.eq(0).addClass('btn-danger').prepend('<i class="icon-trash"></i>');
					buttons.eq(1).prepend('<i class="icon-remove"></i>')
				}
				
				function style_search_filters(form) {
					form.find('.delete-rule').val('X');
					form.find('.add-rule').addClass('btn btn-xs btn-primary');
					form.find('.add-group').addClass('btn btn-xs btn-success');
					form.find('.delete-group').addClass('btn btn-xs btn-danger');
				}
				function style_search_form(form) {
					var dialog = form.closest('.ui-jqdialog');
					var buttons = dialog.find('.EditTable')
					buttons.find('.EditButton a[id*="_reset"]').addClass('btn btn-sm btn-info').find('.ui-icon').attr('class', 'icon-retweet');
					buttons.find('.EditButton a[id*="_query"]').addClass('btn btn-sm btn-inverse').find('.ui-icon').attr('class', 'icon-comment-alt');
					buttons.find('.EditButton a[id*="_search"]').addClass('btn btn-sm btn-purple').find('.ui-icon').attr('class', 'icon-search');
				}
				
				function beforeDeleteCallback(e) {
					var form = $(e[0]);
					if(form.data('styled')) return false;
					
					form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
					style_delete_form(form);
					
					form.data('styled', true);
				}
				
				function beforeEditCallback(e) {
					var form = $(e[0]);
					form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
					style_edit_form(form);
				}
			
			
			
				//it causes some flicker when reloading or navigating grid
				//it may be possible to have some custom formatter to do this as the grid is being created to prevent this
				//or go back to default browser checkbox styles for the grid
				function styleCheckbox(table) {
				/**
					$(table).find('input:checkbox').addClass('ace')
					.wrap('<label />')
					.after('<span class="lbl align-top" />')
			
			
					$('.ui-jqgrid-labels th[id*="_cb"]:first-child')
					.find('input.cbox[type=checkbox]').addClass('ace')
					.wrap('<label />').after('<span class="lbl align-top" />');
				*/
				}
				
			
				//unlike navButtons icons, action icons in rows seem to be hard-coded
				//you can change them like this in here if you want
				function updateActionIcons(table) {
					/**
					var replacement = 
					{
						'ui-icon-pencil' : 'icon-pencil blue',
						'ui-icon-trash' : 'icon-trash red',
						'ui-icon-disk' : 'icon-ok green',
						'ui-icon-cancel' : 'icon-remove red'
					};
					$(table).find('.ui-pg-div span.ui-icon').each(function(){
						var icon = $(this);
						var $class = $.trim(icon.attr('class').replace('ui-icon', ''));
						if($class in replacement) icon.attr('class', 'ui-icon '+replacement[$class]);
					})
					*/
				}
				
				//replace icons with FontAwesome icons like above
				function updatePagerIcons(table) {
					var replacement = 
					{
						'ui-icon-seek-first' : 'icon-double-angle-left bigger-140',
						'ui-icon-seek-prev' : 'icon-angle-left bigger-140',
						'ui-icon-seek-next' : 'icon-angle-right bigger-140',
						'ui-icon-seek-end' : 'icon-double-angle-right bigger-140'
					};
					$('.ui-pg-table:not(.navtable) > tbody > tr > .ui-pg-button > .ui-icon').each(function(){
						var icon = $(this);
						var $class = $.trim(icon.attr('class').replace('ui-icon', ''));
						
						if($class in replacement) icon.attr('class', 'ui-icon '+replacement[$class]);
					})
				}
			
				function enableTooltips(table) {
					$('.navtable .ui-pg-button').tooltip({container:'body'});
					$(table).find('.ui-pg-div').tooltip({container:'body'});
				}
			
				//var selr = jQuery(grid_selector).jqGrid('getGridParam','selrow');
			
			
			});
		</script>
		
	
	
	</body>
	
	
	<script src="<%=path%>/Js/Ljs/jquery.min.js"></script> 
	
		
		
	<!-- 楼栋分页样式 -->	
	<script type="text/javascript" src="<%=path %>/Css/Lcss/bootstrap/vendor/jquery/jquery-1.10.2.min.js"></script>
	<script src="<%=path %>/Js/Ljs/bootstrap-table.js"></script>
	<script src="<%=path %>/Js/Ljs/bootstrap-table-zh-CN.js"></script>
	<script src="<%=path %>/Js/Ljs/tableExport.js"></script>
	<script src="<%=path %>/Js/Ljs/bootstrap-table-export.js"></script>
	<script src="<%=path %>/Js/Ljs/bootstrap-table-locale-all.min.js"></script>
	<script src="<%=path %>/assets/js/bootstrap.min.js"></script>
	
	<!-- 修改数据 -->
	<script src="<%=path %>/Js/Ljs/formFill.js"></script>
	<script src="<%=path %>/Js/Ljs/Customer/customer.js"></script>
	
	<script src="<%=path %>/Js/Ljs/Customer/customerAdd.js"></script>
	<!--<script src="<%=path %>/Js/Ljs/Customer/table_cous.js"></script>-->
	
	<script type="text/javascript" src="<%=path %>/Css/Lcss/bootstrap/dist/js/bootstrapValidator.js"></script>
	
	 <!-- 上传图片 -->
	 <script src="<%=path %>/Css/Lcss/logoUpload/css/default.css"></script>
	 <script src="<%=path %>/Css/Lcss/logoUpload/css/fileinput.css" media="all" rel="stylesheet" type="text/css" ></script>
	 <script src="<%=path %>/Css/Lcss/logoUpload/js/fileinput.js" type="text/javascript"></script>
	 <script src="<%=path %>/Css/Lcss/logoUpload/js/locales/zh.js" type="text/javascript"></script>
	 

</html>
 	

 	
 	
 	