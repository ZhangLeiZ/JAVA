<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String path = request.getContextPath();
    %>
<!DOCTYPE html>
<head>
<title>文章管理</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" type="text/css" href="<%=path %>/Css/Lcss/bootstrap/bootstrap-table.css">
	<script type="text/javascript" src="<%=path%>/Js/sweetalert-dev.js"></script>	
</head>
<body>
<section id="container">
<jsp:include page="/WEB-INF/manager/managertop.jsp" flush="true"></jsp:include>
<jsp:include page="/WEB-INF/manager/nativetop.jsp" flush="true"></jsp:include>


<!--main content start-->
<section id="main-content">
	<section class="wrapper">
		<div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
     文章管理
    </div>
     <div class="row w3-res-tb"></div>
     
	<button type="button" id="artAdd" class="btn btn-default btn-sm" data-target="#finds">
        <span class="glyphicon glyphicon-search"><a href="<%=path%>/manager/article">添加文章</a></span> 
        		
     </button>
    
     <button type="button" id="btn_update" class="btn btn-default btn-sm" data-target="#exampleModals">
        <span class="glyphicon glyphicon-search"></span> 修改文章
     </button>
     
	<button type="button" id="artactive" class="btn btn-default btn-sm">
        <span class="glyphicon glyphicon-heart-empty"></span> 激活
      </button>

   	<button type="button" id="artinactive"  class="btn btn-default btn-sm">
        <span class="glyphicon glyphicon-plane"></span> 冻结
      </button>
      
      	<button type="button" id="artexcmal"  class="btn btn-default btn-sm">
        <span class="glyphicon glyphicon-plane"></span> 已冻结文章
      </button>

      <table id="tb" class="table table-bordered table-hover" data-toggle="table" 
			data-url="<%=path %>/manager/articlelist?struta=激活" data-pagination="true" data-striped="true">
			<thead>
				<tr>
					<th data-hidden="article_id" data-radio="true"></th>
					<th data-field="article_logo" data-formatter="format">文章图片</th>
					<th data-field="article_title">文章标题</th>
					<th data-field="article_abstracts" >文章摘</th>               
					<th data-field="article_content" >文章内容</th> 
					<th data-field="article_status">状态</th>           
				</tr>
			</thead>
	</table>
		
	   <div class="modal fade" id="exampleModals" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabels">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title" id="exampleModalLabel">修改文章</h4>
		      </div>
		      <div >
		        <form id="updateType" name="updateType" action="<%=path %>/type/update" method="post" class="form-horizontal" >
					
					<div class="modal-footer">
				        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				        <button type="submit" class="btn btn-primary">保  存</button>
				     </div>
			
				</form>
	     </div>						
	
    </div>
  </div>
</section>
</section>
<!--main content end-->
</section>


	<script type="text/javascript" src="<%=path %>/Css/Lcss/bootstrap/vendor/jquery/jquery-1.10.2.min.js"></script>
	<script src="<%=path %>/Js/Ljs/bootstrap-table.js"></script>
	<script src="<%=path %>/Js/Ljs/bootstrap-table-zh-CN.js"></script>
	<script src="<%=path %>/Js/Ljs/tableExport.js"></script>
	<script src="<%=path %>/Js/Ljs/bootstrap-table-export.js"></script>
	<script src="<%=path %>/Js/Ljs/bootstrap-table-locale-all.min.js"></script>
	<script src="<%=path %>/Js/Ljs/table_page.js"></script>
	<script src="<%=path %>/assets/js/bootstrap.min.js"></script>
	<script src="<%=path %>/manager/js/bootstrap.js"></script>
	
	<script src="<%=path %>/Js/Ljs/formFill.js"></script>
	<script src="<%=path %>/Js/Ljs/manager.js"></script>
	<script type="text/javascript" src="<%=path %>/Css/Lcss/bootstrap/dist/js/bootstrapValidator.js"></script>
	
</body>
</html>