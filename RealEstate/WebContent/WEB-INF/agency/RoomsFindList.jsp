<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="com.th.bean.Agency"%>
     <%@ taglib uri="/struts-tags" prefix="s" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%
    	String path=request.getContextPath();
     String buildid=(String)request.getAttribute("buildid");
     String find=(String)request.getAttribute("find");
 	String prompt=(String)request.getAttribute("prompt"); 
     
    %>
   
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8" />
		<title>楼栋</title>
		
	
	
	<link rel="stylesheet" href="<%=path%>/Css/sweetalert.css"/>
	<script type="text/javascript" src="<%=path%>/Js/sweetalert-dev.js"></script>
	
	
	

	<!-- 楼栋分页样式 -->
	<link rel="stylesheet" type="text/css" href="<%=path %>/Css/Lcss/bootstrap/bootstrap-table.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/Css/Lcss/bootstrap/bootstrap-table.min.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/Css/Lcss/bootstrap/index.css">
	<link rel="stylesheet" href="<%=path%>/Css/Lcss/bootstrap/dist/css/bootstrapValidator.css"/>
	<link rel="stylesheet" href="<%=path%>/Css/Lcss/bootstrap/vendor/bootstrap/css/bootstrap.css"/>
	
	<link rel="stylesheet" href="<%=path%>/Css/Lcss/bootstrap/vendor/bootstrap/css/bootstrap.min.css"/>
	
	
	
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
								
								<h1 align="center">房号管理</h1>
								<hr color="green">
								<div>
									
									
									
									
									<button type="button"  id="btn_edit" class="btn btn-default btn-sm"   data-target="#exampleModal">
							          <span class="glyphicon glyphicon-pencil"></span>修改
							        </button>
									
									<button type="button" id="update2" class="btn btn-default btn-sm">
							          <span class="glyphicon glyphicon-heart-empty"></span> 修改状态
							        </button>
     	
							     	
							     	<button type="button" id="find" class="btn btn-default btn-sm" data-target="#finds">
							          <span class="glyphicon glyphicon-search"></span> 查看客户信息
							        </button>
							     	
		     						
									<form action="http://localhost:8080/RealEstate/room/find" method="post">
									 <div class="input-group col-md-3" style="float:right;">  
									 		
									 		<input type="hidden" name="buildid"  value="<%=buildid%>">
									 	
										   <input type="text" name="find" class="form-control" style="height:42px" placeholder="可通过房号名称，状态查找" />  
								            <span class="input-group-btn">  
								               <button type="submit"  class="btn btn-info btn-search">查找</button>  
								              
								            </span>   
								         
									 </div>   
									 </form>   
									 
									 <br><br><br>  
									   
					
							<table id="tb" class="table table-bordered table-hover" data-toggle="table" 
											data-url="<%=path %>/room/findLists?buildid=<%=buildid %>&find=<%=find %>" data-pagination="true" data-striped="true">
								<thead>
									<tr id="text">
										<th  data-radio="true" data-hidden="room_id"></th>
										<th data-field="house.house_name">户型名称</th>
										<th data-field="building.building_name" >楼栋名称</th>
										<th data-field="room_name" >房号名称</th>
										<th data-field="sale_status">状态</th>
										
									</tr>
								</thead>
							</table>
							
							
	
							<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
									  <div class="modal-dialog" role="document">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="exampleModalLabel">修 改 数 据</h4>
									      </div>
									      <div class="modal-body">
									        
									        	 <form id="from1" method="post" class="form-horizontal" enctype="multipart/form-data" action="http://localhost:8080/RealEstate/room/roomUpdate">
																 
																<input type="hidden" name="room.room_id">
																
																
																<input type="hidden" name="room.building_id" value="<%=buildid%>">
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">户型名称</label>
																	<div class="col-lg-5">
																			<select name="room.house_id" style="width:235px">
																					<s:iterator value="#request.houseList" var="d">
																						<option value="${d.house_id}">${d.house_name}</option>
																					</s:iterator>
																			</select>
																	</div>
																</div>
																
																
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">房号名称</label>
																	<div class="col-lg-5">
																		<input type="text"  class="form-control" name="room.room_name"/>
																	</div>
																</div>
																
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">状态</label>
																	<div class="col-lg-5">
																		<select name="room.sale_status" style="width:205px">
																				<option value="待售">待售</option>
																				<option value="销售中">销售中</option>
																				<option value="已预定">已预定</option>
																				<option value="保留">保留</option>
																				<option value="已售">已售</option>
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
							
									
									
									
									<div class="modal fade" id="exampleModals" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabels">
									  <div class="modal-dialog" role="document">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="exampleModalLabel">修 改 数 据</h4>
									      </div>
									      <div class="modal-body">
									        
									        	 <form id="from2" method="post" class="form-horizontal" enctype="multipart/form-data" action="http://localhost:8080/RealEstate/room/updateStatus">
																 
																<input type="hidden" name="room.room_id">
																
																
																<input type="hidden" name="room.building_id" value="<%=buildid%>">
																
																
																
																<div class="form-group">
																	<label class="col-lg-3 control-label">状态</label>
																	<div class="col-lg-5">
																		<select name="room.sale_status" style="width:205px">
																				<option value="待售">待售</option>
																				<option value="销售中">销售中</option>
																				<option value="已预定">已预定</option>
																				<option value="保留">保留</option>
																				<option value="已售">已售</option>
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

	
	</body>
	
	
	<script src="<%=path%>/Js/Ljs/jquery.min.js"></script> 
	
		
		
	<!-- 楼栋分页样式 -->	
	<script type="text/javascript" src="<%=path %>/Css/Lcss/bootstrap/vendor/jquery/jquery-1.10.2.min.js"></script>
	<script src="<%=path %>/Js/Ljs/bootstrap-table.js"></script>
	<script src="<%=path %>/Js/Ljs/bootstrap-table-zh-CN.js"></script>
	<script src="<%=path %>/Js/Ljs/tableExport.js"></script>
	<script src="<%=path %>/Js/Ljs/bootstrap-table-export.js"></script>
	<script src="<%=path %>/Js/Ljs/bootstrap-table-locale-all.min.js"></script>
<!-- 	<script src="<%=path %>/Js/Ljs/table_page.js"></script> -->
	<script src="<%=path %>/assets/js/bootstrap.min.js"></script>
	
	<!-- 修改数据 -->
	<script src="<%=path %>/Js/Ljs/formFill.js"></script>
	
	
	<script type="text/javascript" src="<%=path %>/Css/Lcss/bootstrap/dist/js/bootstrapValidator.js"></script>
	

	<script src="<%=path %>/Js/Ljs/Room/room.js"></script>
	
	<script src="<%=path %>/Js/Ljs/Room/roomUpdate.js"></script>
		
</html>
 	

 	
 	
 	