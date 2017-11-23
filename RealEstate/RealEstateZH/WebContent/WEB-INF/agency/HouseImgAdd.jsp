<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="com.th.bean.Agency"%>
     <%@ taglib uri="/struts-tags" prefix="s" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%
    	String path=request.getContextPath();
		
     	String houseid=(String)request.getAttribute("houseid");
     
    %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8" />
		<title>户型图片添加</title>
		
		

	<!-- 楼栋分页样式 -->
	<link rel="stylesheet" type="text/css" href="<%=path %>/Css/Lcss/bootstrap/bootstrap-table.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/Css/Lcss/bootstrap/bootstrap-table.min.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/Css/Lcss/bootstrap/index.css">
	<link rel="stylesheet" href="<%=path%>/Css/Lcss/bootstrap/dist/css/bootstrapValidator.css"/>
	<link rel="stylesheet" href="<%=path%>/Css/Lcss/bootstrap/vendor/bootstrap/css/bootstrap.css"/>
	
	<link rel="stylesheet" href="<%=path%>/Css/Lcss/bootstrap/vendor/bootstrap/css/bootstrap.min.css"/>
	
	<!-- 图标 -->
  <!-- <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->  



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
		
		
		<script type="text/javascript">
		
			function regsave(){
				var img_des = document.getElementById("img_des").value;
				if(img_des==""){
					alert("请输入图片描述！");
					//window.location.href="http://localhost:8080/RealEstate/tables.jsp"; 
					document.getElementById("img_des").focus();
					return false;
				}
			}	
		</script>
		
		
		
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
								
								
								<div>
								<h2 align="center">户型添加图片</h2>
									
								</div>
								
									<div class="">
										<!-- content goes here... -->
								      
								     	<div class="">
											<div class="">
											  
											  <form id="modify" method="post" class="form-horizontal"   action="<%=path%>/house/houseImgAdd" id="form1" onsubmit="return regsave();" enctype="multipart/form-data">
											  	
											  	
											  	<input type="hidden" name="houseImg.house_id" value="<%=houseid%>">
												
												
												<div>
												  <div class="col-md-12">
								         
												  <p id="addp"></p>
												  
												  <img style="width: 150px;height: 150px"  id="span1"    onclick="F_Open_dialog()" src="<%=path %>/other/images/timg.jpg">
												  
												  <input type="file" id="upload" style="display:none" name="upload" onclick="addElementImg('addp')">
												  
												 
												  
												  </div>
												  <div class="col-sm-4 tips"></div>
												</div>
												
												
								
												<div class="form-group">
												  <label class="col-sm-3 control-label"></label>
												  <div class="col-sm-7">
												  		<button type="button" class="btn btn-default btn-lg" id="span2" style="display:none" onclick="F_Open_dialog1()">
												  		继续添加
												  		</button>
												  		<br/>
														
														<br>
														<div class="form-group">
															
															<div class="col-lg-5">
																
																<br><br>
																<button class="btn btn-primary btn-lg" id="btn_agency"> 开始上传 </button>&nbsp;
															
															</div>
															
															
														</div>
														
														
														
												  </div>
												</div>
												<br/>
											   
											  </form>
											  
											</div><!-- panel-body -->
											
										</div>
										
								</div><!-- contentpanel -->
							 
															
							
							
							
							
							
							
							
							
							
							</div>
						</div>									
					</div>									
				</div>										
															
															
							
							

		<!-- basic scripts -->

		<!--[if !IE]> -->
		
		
		
		<script>
var i=1;
function addElementImg(obj) {
			var ul = document.getElementById(obj);
			var img = document.createElement("img");
			img.setAttribute("id", "newImg");
			img.setAttribute("style", "width:230px;height:150px;margin:10px");
			img.src = "";
			ul.appendChild(img);
			document.getElementById("span1").style.display='none';
			document.getElementById("span2").style.display='block';
			
			var newInput = document.createElement("input");
			newInput.type="file";   
			newInput.name="upload";
			newInput.setAttribute("id", "upload"+i);
			newInput.setAttribute("onclick", "addElementImg1('addp')");
			newInput.setAttribute("style", "display:none");
			ul.appendChild(newInput);
			
			var input = document.getElementById("upload");
			var $img = $('#newImg');
			input.addEventListener('change',readFile,false);
			function readFile(){
				var file=this.files[0];
				var $file = $(this);
				var fileObj = $file[0];
				var windowURL = window.URL || window.webkitURL;
				var dataURL;
				dataURL = windowURL.createObjectURL(fileObj.files[0]);
				$img.attr('src',dataURL);
		}
	}
	
function addElementImg1(obj) {
	var ul = document.getElementById(obj);
	var img = document.createElement("img");
	i=i+1;
	img.setAttribute("id", "newImg"+i);
	img.setAttribute("style", "width:230px;height:150px;margin:10px");
	img.src = "";
	ul.appendChild(img);
	document.getElementById("span1").style.display='none';
	document.getElementById("span2").style.display='block';
	
	var newInput = document.createElement("input");
	newInput.type="file";   
	newInput.name="upload";
	newInput.setAttribute("id", "upload"+i);
	newInput.setAttribute("onclick", "addElementImg1('addp')");
	//alert("i="+i);
	newInput.setAttribute("style", "display:none");
	ul.appendChild(newInput);
	
	var input = document.getElementById("upload"+(i-1));
	var $img = $('#newImg'+i);
	input.addEventListener('change',readFile,false);
	function readFile(){
		var file=this.files[0];
		var $file = $(this);
		var fileObj = $file[0];
		var windowURL = window.URL || window.webkitURL;
		var dataURL;
		dataURL = windowURL.createObjectURL(fileObj.files[0]);
		$img.attr('src',dataURL);
	}
	
	
}
	
	function F_Open_dialog(){ 
		document.getElementById("upload").click(); 
	}
	function F_Open_dialog1(){ 
		document.getElementById("upload"+i).click(); 
	} 
		


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
	<script src="<%=path %>/Js/Ljs/Buildings/buildings.js"></script>
	<script src="<%=path %>/Js/Ljs/Buildings/imagesAdd.js"></script>
	
	
	
<!-- 	<script type="text/javascript" src="<%=path %>/Css/Lcss/bootstrap/dist/js/bootstrapValidator.js"></script>
	 -->
	</body>
</html>
 	

 	
 	
 	