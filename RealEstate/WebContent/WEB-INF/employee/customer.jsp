<%@page import="com.th.bean.Employee"%>
<%@page import="com.th.bean.Customer"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="com.th.bean.Activity"%>
<%@page import="com.th.bean.Agency"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
Agency agency = (Agency) session.getAttribute("agency");
Customer customer = (Customer)session.getAttribute("customer");
Employee employee = (Employee)session.getAttribute("employee");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>房屋业主信息</title>


<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&ak=PQkrfSzjE6GXYZReYsHPtKU92Gx3mOfR"></script>


<!-- 楼栋分页样式 -->
<link rel="stylesheet" type="text/css"
	href="<%=path%>/Css/Lcss/bootstrap/bootstrap-table.css">
<link rel="stylesheet" type="text/css"
	href="<%=path%>/Css/Lcss/bootstrap/bootstrap-table.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=path%>/Css/Lcss/bootstrap/index.css">
<link rel="stylesheet"
	href="<%=path%>/Css/Lcss/bootstrap/dist/css/bootstrapValidator.css" />
<link rel="stylesheet"
	href="<%=path%>/Css/Lcss/bootstrap/vendor/bootstrap/css/bootstrap.css" />

<link rel="stylesheet"
	href="<%=path%>/Css/Lcss/bootstrap/vendor/bootstrap/css/bootstrap.min.css" />

<link rel="stylesheet" href="<%=path%>/Css/Lcss/linkage/form.css" />


<script src="<%=path%>/Css/Lcss/linkage/kit.js"></script>
<script src="<%=path%>/Css/Lcss/linkage/dom.js"></script>
<script src="<%=path%>/Css/Lcss/linkage/event.js"></script>
<script src="<%=path%>/Css/Lcss/linkage/TreeDict.js"></script>
<script src="<%=path%>/Css/Lcss/linkage/math.js"></script>
<script src="<%=path%>/Css/Lcss/linkage/form.js"></script>
<script src="<%=path%>/Css/Lcss/linkage/combobox.js"></script>
<script src="<%=path%>/Css/Lcss/linkage/suggestselect.js"></script>
<script src="<%=path%>/Css/Lcss/linkage/list.js"></script>
<script src="<%=path%>/Css/Lcss/linkage/json-data.js"></script>



<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="stylesheet" href="<%=path%>/assets/css/font-awesome.min.css" />

<link rel="stylesheet"
	href="<%=path%>/assets/css/jquery-ui-1.10.3.full.min.css" />
<link rel="stylesheet" href="<%=path%>/assets/css/datepicker.css" />
<link rel="stylesheet" href="<%=path%>/assets/css/ui.jqgrid.css" />
<link rel="stylesheet" href="<%=path%>/Css/sweetalert.css" />
<script type="text/javascript" src="<%=path%>/Js/sweetalert-dev.js"></script>
<link rel="stylesheet" href="<%=path%>/assets/css/ace.min.css" />
<link rel="stylesheet" href="<%=path%>/assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="<%=path%>/assets/css/ace-skins.min.css" />

<script src="<%=path%>/assets/js/ace-extra.min.js"></script>
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
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->

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
									<a href="<%=path%>/employee/updatePwd">
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
					</ul>
				</div>
			</div>
		</div>
	<jsp:include page="/WEB-INF/employee/empnavigation.jsp" flush="true"></jsp:include>
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

				<li><a href="#">员工</a></li>
				<li class="active">房屋 & 业主</li>
			</ul>

		</div>

		<div class="page-content">
			<div class="row">
				<div class="col-xs-12">
					<hr color="green">
					<div>
						<button type="button"  id="btn_edit" class="btn btn-default btn-sm">
				          <span class="glyphicon glyphicon-pencil"></span>修改
				        </button>
						
						<button type="button" id="active" class="btn btn-default btn-sm">
				          <span class="glyphicon glyphicon-heart-empty"></span> 激活
				        </button>
  						
				     	<button type="button" id="inactive"  class="btn btn-default btn-sm">
				          <span class="glyphicon glyphicon-plane"></span> 冻结
				        </button>
				        
				        <button type="button" id="upfile"  class="btn btn-default btn-sm">
				          <span class="glyphicon glyphicon-plane"></span> 上传电子档案
				        </button>

						<table id="tb" class="table table-bordered table-hover" data-toggle="table" 
							data-url="<%=path %>/customer/page?employee_id=<%=employee.getEmployee_id() %>" data-pagination="true" data-striped="true">
							<thead>
								<tr>
									<th data-hidden="customer_id" data-radio="true"></th>
									<th data-field="customer_name" >姓名</th>
									<th data-field="customer_phone">电话</th>
									<th data-field="customer_address">地址</th>
									<th data-field="identity_id">身份证号</th>
									<th data-field="together">共同购房人</th>
									<th data-field="created_time">创建时间</th>
									<th data-field="customer_type">类型</th>
									<th data-field="customer_status">状态</th>
								</tr>
							</thead>
						</table>

			   
			   <!-- 上传电子档案 -->
			   <div class="modal fade" id="archives" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        		<div class="modal-dialog" role="document">
		            <div class="modal-content">
		                <div class="modal-header">
		                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		                    <h4 class="modal-title" >上传电子档案</h4>
		                </div>
		                <div class="modal-body">
		                   <form  id="form2" method="post" action="<%=path %>/customer/upfile" enctype="multipart/form-data">
		                   <input type="hidden" name="customer.customer_id" value="${customer.customer_id }">
		                    <div class="form-group">
		                        <label>电子档案</label>
		                        <input type="file" name="logoFile"  class="form-control">
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
		                   <form  action="<%=path %>/customer/update" id="form1" method="post">
		                   <input type="hidden" name="customer.customer_id" value="${customer.customer_id }">
		                   <input type="hidden" name="employee.employee_id" value="${employee.employee_id }">
		                   <div class="form-group">
		                        <label for="customer.customer_name">客户名称</label>
		                        <input type="text" name="customer.customer_name"  class="form-control" placeholder="客户名称">
		                    </div>
		                    <div class="form-group">
		                        <label for="customer.customer_gender">性别</label>
		                        <select class="form-control" name="customer.customer_gender">
								  <option value="男">男</option>
								  <option value="女">女</option>
								</select>
		                    </div>
		                    <div class="form-group">     
		                         <label for="customer.identity_id">身份证号</label>
							    <input type="text" name="customer.identity_id" onkeyup="value=value.replace(/[^\d]/g,'')" class="form-control"  placeholder="身份证号" >
		                    </div>
		                     <div class="form-group">
		                        <label for="customer.customer_email">客户邮箱</label>
			   			 		<input type="text" name="customer.customer_email" class="form-control"  placeholder="客户邮箱" >
		                    </div>
		                    <div class="form-group">                  
		                        <label for="customer.customer_phone">手机号码</label>
					 		    <input type="text" name="customer.customer_phone" onkeyup="value=value.replace(/[^\d]/g,'')" class="form-control"  placeholder="手机号码">
		                    </div>
		                     <div class="form-group">                 
		                        <label for="customer.customer_address">联系地址</label>
					    		<input type="text" name="customer.customer_address" class="form-control" placeholder="联系地址">
		                    </div>
		                     <div class="form-group">                   
		                         <label for="customer.together">共同购房人</label>
					   			 <input type="text" name="customer.together" class="form-control"  placeholder="共同购房人" >
		                    </div>
		                    <div class="form-group">
		                         <label for="customer.customer_type">客户类型</label>
								  	<select class="form-control" name="customer.customer_type" >
										  <option value="预约客户">预约客户</option>
										  <option value="预定客户">预定客户</option>
										  <option value="购房客户">购房客户</option>
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
					</div>
				</div>
			</div>
		</div>
		<div class="ace-settings-container" id="ace-settings-container">
			<div class="btn btn-app btn-xs btn-warning ace-settings-btn"
				id="ace-settings-btn">
				<i class="icon-cog bigger-150"></i>
			</div>

		</div>
	</div>

	<a href="#" id="btn-scroll-up"
		class="btn-scroll-up btn btn-sm btn-inverse"> <i
		class="icon-double-angle-up icon-only bigger-110"></i>
	</a>
	</div>

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
	<script src="<%=path%>/Js/Ljs/jquery.min.js"></script>
	<!-- 楼栋分页样式 -->
	<script type="text/javascript"
		src="<%=path%>/Css/Lcss/bootstrap/vendor/jquery/jquery-1.10.2.min.js"></script>
	<script src="<%=path%>/Js/Ljs/bootstrap-table.js"></script>
	<script src="<%=path%>/Js/Ljs/bootstrap-table-zh-CN.js"></script>
	<script src="<%=path%>/Js/Ljs/tableExport.js"></script>
	<script src="<%=path%>/Js/Ljs/bootstrap-table-export.js"></script>
	<script src="<%=path%>/Js/Ljs/bootstrap-table-locale-all.min.js"></script>
	<script src="<%=path%>/Js/Ljs/table_page.js"></script>
	<script src="<%=path%>/assets/js/bootstrap.min.js"></script>
	<script type="text/javascript"src="<%=path%>/Css/Lcss/bootstrap/dist/js/bootstrapValidator.js"></script>
	<script src="<%=path%>/assets/js/customer.js"></script>
	<!-- 修改数据 -->
	<script src="<%=path%>/Js/Ljs/formFill.js"></script>
	<script type="text/javascript">
	function format(value) {
		return "<img style='width:120;height:50px' src='http://localhost:8080/RealEstate/"+value+"'>";
	}
	</script>
</body>
</html>




