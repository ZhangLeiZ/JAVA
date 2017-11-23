<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="com.th.bean.Activity"%>
<%@page import="com.th.bean.Agency"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
Agency agency = (Agency) session.getAttribute("agency");
Activity activity = (Activity)session.getAttribute("activity");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>活动管理</title>

<!-- 楼栋分页样式 -->
	<link rel="stylesheet" type="text/css" href="<%=path %>/Css/Lcss/bootstrap/bootstrap-table.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/Css/Lcss/bootstrap/bootstrap-table.min.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/Css/Lcss/bootstrap/index.css">
	<link rel="stylesheet" href="<%=path%>/Css/Lcss/bootstrap/dist/css/bootstrapValidator.css"/>
	<link rel="stylesheet" href="<%=path%>/Css/Lcss/bootstrap/vendor/bootstrap/css/bootstrap.css"/>
	
	<link rel="stylesheet" href="<%=path%>/Css/Lcss/bootstrap/vendor/bootstrap/css/bootstrap.min.css"/>
	
	
	<link rel="stylesheet" href="<%=path%>/Css/sweetalert.css"/>
	<script type="text/javascript" src="<%=path%>/Js/sweetalert-dev.js"></script>
	
	<script src="<%=path%>/assets/js/ActivityCheck.js"></script>
	
	
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
	<jsp:include page="/WEB-INF/agency/navigation.jsp" flush="true"></jsp:include>
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

				<li><a href="#">活动</a></li>
				<li class="active">活动 & 管理</li>
			</ul>
			

		</div>

		<div class="page-content">

			<div class="row">
				<div class="col-xs-12">
					<hr color="green">
						 <button type="button" id="btn_add" class="btn btn-default btn-sm" data-toggle="modal" data-target="#exampleModals">
				          <span class="glyphicon glyphicon-plus"></span> 添加
				         </button>
				         
						<button type="button"  id="btn_edit" class="btn btn-default btn-sm">
				          <span class="glyphicon glyphicon-pencil"></span>修改
				        </button>
						
						<button type="button" id="active" class="btn btn-default btn-sm">
				          <span class="glyphicon glyphicon-heart-empty"></span> 激活
				        </button>
  	
				     	<button type="button" id="inactive"  class="btn btn-default btn-sm">
				          <span class="glyphicon glyphicon-plane"></span> 冻结
				        </button>
						<table id="tb" class="table table-bordered table-hover" data-toggle="table" 
							data-url="<%=path %>/activity/page" data-pagination="true" data-striped="true">
							<thead>
								<tr>
									<th data-hidden="activity_id" data-radio="true"></th>
									<th data-field="activity_logo" data-events="logoEvents" data-formatter="format">活动图片</th>
									<th data-field="activity_title" >活动标题</th>
									<th data-field="activity_content">活动内容</th>
									<th data-field="activity_address" >活动地址</th>
									<th data-field="start_time">开始时间</th>
									<th data-field="end_time">结束时间</th>
									<th data-field="buildings.buildings_name">楼盘名称</th>
									<th data-field="activity_status">状态</th>
								</tr>
							</thead>
						</table>
			   <!-- 新增 -->
		       <div class="modal fade" id="exampleModals" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabels">
					<div class="modal-dialog" role="document">
		            <div class="modal-content">
		                <div class="modal-header">
		                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		                    <h4 class="modal-title" id="exampleModalLabel">新增</h4>
		                </div>
		                <div class="modal-body">
		                   <form  id="form2" action="<%=path %>/activity/go"  method="post" enctype="multipart/form-data">
		                   	 <div class="form-group">
		                        <label>活动图片</label>
		                        <input type="file" name="file"  class="form-control" >
		                    </div>
		                    <div class="form-group">
		                        <label for="activity.activity_title">活动标题</label>
		                        <input type="text" name="activity.activity_title"  class="form-control"  placeholder="活动标题">
		                    </div>
		                   
		                    <div class="form-group">
		                        <label for="activity.activity_content">活动内容</label>
		                        <input type="text" name="activity.activity_content"  class="form-control"  placeholder="活动内容">
		                    </div>
		                     <div class="form-group">
		                        <label for="activity.activity_address">活动地址</label>
		                        <input type="text" name="activity.activity_address"  class="form-control"  placeholder="活动地址">
		                    </div>
		                    <div class="form-group">
		                         <label for="activity.end_time">结束时间</label>
					   			 <input type="date" name="activity.end_time" class="form-control" >
		                    </div>
		                    
		                     <div class="form-group">
		                         <label for="activity.buildings_id">楼盘编号</label>
					   			 <select id="selecters" name="buildings_id">
									
								</select>
		                    </div>
		                    <div class="modal-footer">
			                     <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
								 <button type="submit" class="btn btn-primary">保  存</button>
		                   </div>
		                  </form>
		                </div>
		            </div>
		        </div>
		        </div>
				
				<!-- 修改 -->
		       <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
				  <div class="modal-dialog" role="document">
		            <div class="modal-content">
		                <div class="modal-header">
		                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		                    <h4 class="modal-title" id="exampleModalLabel">编辑</h4>
		                </div>
		                <div class="modal-body">
		                   <form  action="<%=path %>/activity/update" id="form1" method="post" enctype="multipart/form-data">
		                   <input type="hidden" name="activity.activity_id" value="${activity.activity_id }">
		                   <input type="hidden" name="activity.start_time" value="${activity.start_time }">
		                   <input type="hidden" name="activity.activity_logo" value="${activity.activity_logo }">
		                   <input type="hidden" name="activity.activity_status" value="${activity.activity_status }">
		                   <div class="form-group">
		                        <label>活动图片</label>
		                        <input type="file" name="file"  class="form-control" >
		                    </div>
		                    <div class="form-group">
		                        <label for="activity.activity_title">活动标题</label>
		                        <input type="text" name="activity.activity_title"  class="form-control"  placeholder="活动标题">
		                    </div>
		                    <div class="form-group">
		                        <label for="activity.activity_content">活动内容</label>
		                        <input type="text" name="activity.activity_content"  class="form-control"  placeholder="活动内容">
		                    </div>
		                     <div class="form-group">
		                        <label for="activity.activity_address">活动地址</label>
		                        <input type="text" name="activity.activity_address"  class="form-control"  placeholder="活动地址">
		                    </div>
		                    <div class="form-group">
		                         <label for="activity.end_time">结束时间</label>
					   			 <input type="text" name="activity.end_time" class="form-control" >
		                    </div>
		                     <div class="form-group">
		                         <label for="activity.buildings_id">楼盘编号</label>
					   			 <select id="selecter" name="activity.buildings_id">
									
								</select>
		                    </div>
		                    <div class="modal-footer">
			                     <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
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
					<input type="checkbox" class="ace ace-checkbox-2"
						id="ace-settings-navbar" /> <label class="lbl"
						for="ace-settings-navbar"> 固定导航条</label>
				</div>

				<div>
					<input type="checkbox" class="ace ace-checkbox-2"
						id="ace-settings-sidebar" /> <label class="lbl"
						for="ace-settings-sidebar"> 固定滑动条</label>
				</div>

				<div>
					<input type="checkbox" class="ace ace-checkbox-2"
						id="ace-settings-breadcrumbs" /> <label class="lbl"
						for="ace-settings-breadcrumbs"> 固定面包屑</label>
				</div>

				<div>
					<input type="checkbox" class="ace ace-checkbox-2"
						id="ace-settings-rtl" /> <label class="lbl"
						for="ace-settings-rtl"> 切换到左边</label>
				</div>

				<div>
					<input type="checkbox" class="ace ace-checkbox-2"
						id="ace-settings-add-container" /> <label class="lbl"
						for="ace-settings-add-container"> 切换 <b>窄屏</b>
					</label>
				</div>
			</div>
		</div>
	
	<a href="#" id="btn-scroll-up"
		class="btn-scroll-up btn btn-sm btn-inverse"> <i
		class="icon-double-angle-up icon-only bigger-110"></i>
	</a>
	
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

	

</body>


<script src="<%=path%>/assets/js/jquery.min.js"></script>
<!-- 楼栋分页样式 -->
<script type="text/javascript" src="<%=path%>/assets/js/jquery-1.10.2.min.js"></script>
<script src="<%=path%>/assets/js/bootstrap-table.js"></script>
<script src="<%=path%>/assets/js/bootstrap-table-zh-CN.js"></script>
<script src="<%=path%>/assets/js/tableExport.js"></script>
<script src="<%=path%>/assets/js/bootstrap-table-export.js"></script>
<script src="<%=path%>/assets/js/bootstrap-table-locale-all.min.js"></script>
<script src="<%=path%>/assets/js/table_page.js"></script>
<script src="<%=path%>/assets/js/bootstrap.min.js"></script>
<script src="<%=path %>/assets/js/toastr.min.js"></script>
<script src="<%=path %>/assets/js/toastrOption.js"></script>

<!-- 修改数据 -->
<script src="<%=path%>/assets/js/formFill.js"></script>
<script type="text/javascript"src="<%=path%>/assets/js/bootstrapValidator.js"></script>
<script src="<%=path%>/assets/js/update.js"></script>
<script src="<%=path%>/assets/js/ActivityCheck.js"></script>


<script>
	$('#btn_edit').click(function (){
		getselectup();
	});
	$('#btn_add').click(function (){
		getselectupss();
	});
	function getselectup(){
		$.ajax({
			url:"http://localhost:8080/RealEstate/activity/list",
			type:"post",
			dataType:"json",
			success: function(response){
				var data = response.buildings;
				var resty = "";
				for(var i=0;i<data.length;i++){
					resty+='<option value="'+data[i].buildings_id+'">'+data[i].buildings_name+'</option>';
				}
				$('#selecter').html(resty);
			},
			error: function(){
				alert("error");
			}
		});
	}
	function getselectupss(){
		$.ajax({
			url:"http://localhost:8080/RealEstate/activity/list",
			type:"post",
			dataType:"json",
			success: function(response){
				var data = response.buildings;
				var resty = "";
				for(var i=0;i<data.length;i++){
					resty+='<option value="'+data[i].buildings_id+'">'+data[i].buildings_name+'</option>';
				}
				$('#selecters').html(resty);
			},
			error: function(){
				alert("error");
			}
		});
	}
</script>
<script type="text/javascript">
function format(value) {
	return "<img style='width:120;height:50px' src='http://localhost:8080/RealEstate/"+value+"'>";
}
</script>
</html>




