<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="com.th.bean.Agency"%>
     <%@ taglib uri="/struts-tags" prefix="s" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%
    	String path=request.getContextPath();
		String houseFind=(String)request.getAttribute("houseFind");
		String prompt=(String)request.getAttribute("prompt"); 
     %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8" />
		<title>户型页面</title>
		
	
	<link rel="stylesheet" href="<%=path%>/Css/sweetalert.css"/>
	<script type="text/javascript" src="<%=path%>/Js/sweetalert-dev.js"></script>
	
	

	<!-- 楼栋分页样式 -->
	<link rel="stylesheet" type="text/css" href="<%=path %>/Css/Lcss/bootstrap/bootstrap-table.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/Css/Lcss/bootstrap/bootstrap-table.min.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/Css/Lcss/bootstrap/index.css">
	<link rel="stylesheet" href="<%=path%>/Css/Lcss/bootstrap/dist/css/bootstrapValidator.css"/>
	<link rel="stylesheet" href="<%=path%>/Css/Lcss/bootstrap/vendor/bootstrap/css/bootstrap.css"/>
	
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
	
<jsp:include page="/WEB-INF/agency/navigation.jsp" flush="true"></jsp:include>					<div class="sidebar-collapse" id="sidebar-collapse">
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
								
								<input type="hidden" id="xiugai" value="<%=prompt%>">
								
								<h1 align="center">户型管理</h1>
								<hr color="green">
								<div>
									
									<!-- Modal -->
									<div class="modal fade" id="myModal" data-target="#myModal">
									  <div class="modal-dialog" role="document">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
									      </div>
									      <div class="modal-body">
											        请选中数据！
									      </div>
									      <div class="modal-footer">
									        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									      </div>
									    </div>
									  </div>
									</div>
										
									
									<div class="modal fade" id="status" data-target="#myModal">
									  <div class="modal-dialog" role="document">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
									      </div>
									      <div class="modal-body">
											        此行数据已激活，无需再次激活！
									      </div>
									      <div class="modal-footer">
									        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									      </div>
									    </div>
									  </div>
									</div>
									
			
									<div class="modal fade" id="instatus" data-target="#myModal">
									  <div class="modal-dialog" role="document">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
									      </div>
									      <div class="modal-body">
											        此行数据已冻结，无需再次冻结！
									      </div>
									      <div class="modal-footer">
									        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
									      </div>
									    </div>
									  </div>
									</div>
										
									<button type="button" id="find" class="btn btn-default btn-sm" data-target="#finds">
							          <span class="glyphicon glyphicon-search"></span>查看该楼盘下户型
							        </button>
									
									 <button type="button" id="xiangqing" class="btn btn-default btn-sm">
							          <span class="glyphicon glyphicon-eye-open"></span> 查看详情
							        </button>
									
									 <button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#exampleModals">
							          <span class="glyphicon glyphicon-plus"></span> 添加
							         </button>
									
									<button type="button"  id="btn_edit" class="btn btn-default btn-sm"   data-target="#exampleModal">
							          <span class="glyphicon glyphicon-pencil"></span>修改
							        </button>
									
									<button type="button" id="active" class="btn btn-default btn-sm">
							          <span class="glyphicon glyphicon-heart-empty"></span> 激活
							        </button>
     	
							     	<button type="button" id="inactive"  class="btn btn-default btn-sm">
							          <span class="glyphicon glyphicon-plane"></span> 冻结
							        </button>
		     						
		     						 <button type="button" id="img" class="btn btn-default btn-sm">
							          <span class="glyphicon glyphicon-picture"></span> 浏览图片
							        </button>
									 
									 
									<form action="http://localhost:8080/RealEstate/house/houseFind" method="post">
									 <div class="input-group col-md-3" style="float:right;">  
									 	
										   <input type="text" name="houseFind" class="form-control" style="height:42px" placeholder="通过户型名称，单价，状态" />  
								            <span class="input-group-btn">  
								               <button type="submit"  class="btn btn-info btn-search">查找</button>  
								              
								            </span>   
								         
									 </div>   
									 </form>   
									 
									 <br><br><br>								 
									     
					
							<table id="tb" class="table table-bordered table-hover" data-toggle="table" 
											data-url="<%=path %>/house/houseFindList?houseFind=<%=houseFind %>" data-pagination="true" data-striped="true">
								<thead>
									<tr>
										<th data-radio="true" data-hidden="house_id"></th>
										<th data-field="buildings.buildings_name">所属楼盘</th>
										<th data-field="house_name" >户型名称</th>
										<th data-field="house_logo" data-formatter="format">户型图片</th>
										<th data-field="house_area" >面积</th>
										<th data-field="unit_price" >参考单价</th>
										<th data-field="house_status">状态</th>
									</tr>
								</thead>
							</table>
							
							
							
												<div class="modal fade" id="exampleModals" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabels">
													  <div class="modal-dialog" role="document">
													    <div class="modal-content">
													      <div class="modal-header">
													        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
													        <h4 class="modal-title" id="exampleModalLabel">新增户型</h4>
													      </div>
													      <div >
													        <form id="modify" method="post" class="form-horizontal" enctype="multipart/form-data"  action="http://localhost:8080/RealEstate/house/houseAdd">
																<div class="form-group">
																	<label class="col-lg-3 control-label">楼盘名称</label>&nbsp;&nbsp;&nbsp;
																	<select name="house.buildings_id" style="width:235px">
																		<s:iterator value="#request.buildingAdd" var="d">
																			<option value="${d.buildings_id}">${d.buildings_name}</option>
																		</s:iterator>
																	</select>	
																</div>
																
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">户型名称</label>
																	<div class="col-lg-5">
																		<input type="text"  class="form-control" name="house.house_name"/>
																	</div>
																</div>
																
																
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">户型图片</label>
																	<div class="col-lg-5">
																		<input type="file" id="tupian"  name="logoFile"/>
																	</div>
																</div>
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">面积</label>
																	<div class="col-lg-5">
																		<input type="text"  class="form-control"  name="house.house_area"/>
																	</div>
																</div>
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">参考单价</label>
																	<div class="col-lg-5">
																		<input type="text" id="floor_rooms"  class="form-control"   name="house.unit_price"/>
																	</div>
																</div>
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">简介</label>
																	<div class="col-lg-5">
																		<textarea  rows="5" class="form-control" name="house.house_intro"></textarea>
																	</div>
																</div>
																
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">状态</label>
																	<div class="col-lg-5">
																		<select name="house.house_status" style="width:205px">
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
									        <h4 class="modal-title" id="exampleModalLabel">修 改 户 型</h4>
									      </div>
									      <div class="modal-body">
									        
									        	 <form id="from1" method="post" class="form-horizontal" enctype="multipart/form-data" action="http://localhost:8080/RealEstate/house/houseUpdate">
																 
																<input type="hidden" name="house.house_id">
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">楼盘名称</label>&nbsp;&nbsp;&nbsp;
																	<select name="house.buildings_id" style="width:235px">
																		<s:iterator value="#request.buildingAdd" var="d">
																			<option value="${d.buildings_id}">${d.buildings_name}</option>
																		</s:iterator>
																	</select>	
																</div>
																
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">户型名称</label>
																	<div class="col-lg-5">
																		<input type="text"  class="form-control" name="house.house_name"/>
																	</div>
																</div>
																
																
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">户型图片</label>
																	<div class="col-lg-5">
																		<input type="file"   name="logoFile"/>
																	</div>
																</div>
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">面积</label>
																	<div class="col-lg-5">
																		<input type="text"  class="form-control" name="house.house_area"/>
																	</div>
																</div>
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">参考单价</label>
																	<div class="col-lg-5">
																		<input type="text" id="floor_rooms"  class="form-control"   name="house.unit_price"/>
																	</div>
																</div>
																
																
																
																
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">简介</label>
																	<div class="col-lg-5">
																		<input type="text"  class="form-control" name="house.house_intro"/>
																	</div>
																</div>
																
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">状态</label>
																	<div class="col-lg-5">
																		<select name="house.house_status" style="width:205px">
																				<option value="激活">激活</option>
																				<option value="冻结">冻结</option>
																		</select>	
																	</div>
																</div>
											
													<div class="modal-footer">
												        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
												        <button type="submit" class="btn btn-primary">修  改</button>
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
		
	<script>
			var a = $kit.els8cls($kit.ui.Form.ComboBox.Select.defaultConfig.transformCls), a1 = [];
			for(var i = 0; i < a.length; i++) {
				a1.push(a[i])
			}
			a = a1;
			var b1 = new $kit.ui.Form.ComboBox.Select({
				el : a[0],
				data : (function() {
					var provTreeDict = new TreeDict();
					for(var prov in chinaJSON) {
						provTreeDict.ad(prov, prov);
					}
					return provTreeDict;
				})()
			});
			b1.transform();
			b1.ev({
				ev : 'change',
				fn : function() {
					var prov = chinaJSON[b1.inputEl.value];
					if(prov == null) {
						return;
					}
					var cityTree = new TreeDict();
					for(var city in prov) {
						cityTree.ad(city, city);
					}
					b2.inputEl.value = '';
					b2.formEl.value = '';
					b2.config.data = cityTree;
					b2.list.buildList(cityTree.search(''));
				}
			});
			var b2 = new $kit.ui.Form.ComboBox.Select({
				el : a[1],
				data : undefined
			});
			b2.transform();
			b2.ev({
				ev : 'change',
				fn : function() {
					var city = chinaJSON[b1.inputEl.value][b2.inputEl.value];
					if(city == null) {
						return;
					}
					var districtTree = new TreeDict();
					for(var district in city) {
						districtTree.ad(district, city[district]);
					}
					b3.inputEl.value = '';
					b3.formEl.value = '';
					b3.config.data = districtTree;
					b3.list.buildList(districtTree.search(''));
				}
			});
			var b3 = new $kit.ui.Form.ComboBox.Select({
				el : a[2],
				data : undefined
			});
			b3.transform();

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
	<script src="<%=path %>/Js/Ljs/table_page.js"></script>
	<script src="<%=path %>/assets/js/bootstrap.min.js"></script>
	
	<!-- 修改数据 -->
	<script src="<%=path %>/Js/Ljs/formFill.js"></script>
	<script src="<%=path %>/Js/Ljs/House/house.js"></script>
	
	<script type="text/javascript" src="<%=path %>/Css/Lcss/bootstrap/dist/js/bootstrapValidator.js"></script>
	
	<script src="<%=path %>/Js/Ljs/House/houseAdd.js"></script>
	<script src="<%=path %>/Js/Ljs/Building/buildingDonUpdate.js"></script>
		
</html>
 	

 	
 	
 	