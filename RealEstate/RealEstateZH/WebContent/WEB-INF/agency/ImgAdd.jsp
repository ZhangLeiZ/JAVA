<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="com.th.bean.Agency"%>
     <%@ taglib uri="/struts-tags" prefix="s" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%
    	String path=request.getContextPath();
     Agency agency = (Agency)session.getAttribute("agency");
    %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8" />
		<title>楼盘图片添加</title>
		
		

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
								<h2 align="center">楼盘添加图片</h2>
									
								</div>
								
									<div class="">
										<!-- content goes here... -->
								      
								     	<div class="">
											<div class="">
											  
											  <form id="modify" method="post" class="form-horizontal"   action="<%=path%>/img/Imgadd" id="form1" onsubmit="return regsave();" enctype="multipart/form-data">
											  	
											  	<input type="hidden" name="img.created_time" value="<%=new Date().toLocaleString()%>">
												<input type="hidden" name="img.buildings_id" value="${id }"/>
												
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
															<label class="col-lg-3 control-label"><font size="4">图片描述：</font></label>
															<div class="col-lg-5">
																<textarea  rows="5" id="img_des" class="form-control" name="img.img_des"></textarea>
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
 	

 	
 	
 	