<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String path = request.getContextPath();
    %>
<!DOCTYPE html>
<head>
<title>经销商信息</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="<%=path %>/manager/css/bootstrap.min.css" >
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
                          	  经销商详情管理
                        </header>
                        <div class="panel-body">
                            <div class=" form">
                                <form class="cmxform form-horizontal " id="commentForm" method="get" action="" novalidate="novalidate">
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-3">经销商名称：</label>
                                        <div class="col-lg-6">
                                             <label for="cname" class="control-label">${agency.agency_name }</label>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-3">电子邮箱：</label>
                                        <div class="col-lg-6">
                                             <label for="cname" class="control-label">${agency.agency_email }</label>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-3">手机号码：</label>
                                        <div class="col-lg-6">
                                             <label for="cname" class="control-label">${agency.agency_phone }</label>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-3">固定电话：</label>
                                        <div class="col-lg-6">
                                             <label for="cname" class="control-label">${agency.agency_tel }</label>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-3">创建时间：</label>
                                        <div class="col-lg-6">
                                             <label for="cname" class="control-label">${agency.created_time }</label>
                                        </div>
                                    </div>
                                     <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-3">负责人姓名：</label>
                                        <div class="col-lg-6">
                                             <label for="cname" class="control-label">${agency.agency_leader }</label>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="ccomment" class="control-label col-lg-3">地址：</label>
                                        <div class="col-lg-6">
                                             <label for="cname" class="control-label">${agency.agency_address }</label>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="ccomment" class="control-label col-lg-3">简介：</label>
                                        <div class="col-lg-6">
                                            <textarea class="form-control " id="ccomment" name="comment" required="">${agency.agency_intro }</textarea>
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
