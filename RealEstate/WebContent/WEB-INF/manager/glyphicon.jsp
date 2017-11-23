<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String path = request.getContextPath();
    %>
<!DOCTYPE html>
<head>
<title>活动信息</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="<%=path %>/manager/css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="<%=path %>/manager/css/style.css" rel='stylesheet' type='text/css' />
<link href="<%=path %>/manager/css/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="<%=path %>/manager/css/font.css" type="text/css"/>
<link href="<%=path %>/manager/css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<script src="<%=path %>/manager/js/jquery2.0.3.min.js"></script>
</head>
<body>
<section id="container">
<jsp:include page="/WEB-INF/manager/managertop.jsp" flush="true"></jsp:include>
<jsp:include page="/WEB-INF/manager/nativetop.jsp" flush="true"></jsp:include>

<!--main content start-->
<section id="main-content">
	<section class="wrapper">
		<div class="form-w3layouts">
            <!-- page start-->          
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                          	  活动详情
                        </header>
                        <div class="panel-body">
                            <div class=" form">
                                <form class="cmxform form-horizontal " id="commentForm" method="get" action="" novalidate="novalidate">
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-3">活动标题：</label>
                                        <div class="col-lg-6">
                                             <label for="cname" class="control-label">${activity.activity_title }</label>
                                        </div>
                                    </div>
                                        
                                     <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-3">所属楼盘：</label>
                                        <div class="col-lg-6">
                                             <label for="cname" class="control-label">${activity.buildings.buildings_name }</label>
                                        </div>
                                    </div> 
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-3">开始时间：</label>
                                        <div class="col-lg-6">
                                             <label for="cname" class="control-label">${activity.start_time }</label>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-3">结束时间：</label>
                                        <div class="col-lg-6">
                                             <label for="cname" class="control-label">${activity.end_time }</label>
                                        </div>
                                    </div>     
                                                               
                                    <div class="form-group ">
                                        <label for="ccomment" class="control-label col-lg-3">活动地址：</label>
                                        <div class="col-lg-6">
                                            <textarea class="form-control " id="ccomment" name="comment" required="">${activity.activity_address }</textarea>
                                        </div>
                                    </div>   
                                     <div class="form-group ">
                                        <label for="ccomment" class="control-label col-lg-3">活动内容：</label>
                                        <div class="col-lg-6">
                                            <textarea class="form-control " id="ccomment" name="comment" required="">${activity.activity_content }</textarea>
                                        </div>
                                    </div>                                  
                                </form>
                            </div>

                        </div>
                    </section>
                </div>
            </div>           
            <!-- page end-->
        </div>
</section>
</section>

<!--main content end-->
</section>
<script src="<%=path %>/manager/js/bootstrap.js"></script>
<script src="<%=path %>/manager/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="<%=path %>/manager/js/scripts.js"></script>
<script src="<%=path %>/manager/js/jquery.slimscroll.js"></script>
<script src="<%=path %>/manager/js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="<%=path %>/manager/js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="<%=path %>/manager/js/jquery.scrollTo.js"></script>
</body>
</html>
