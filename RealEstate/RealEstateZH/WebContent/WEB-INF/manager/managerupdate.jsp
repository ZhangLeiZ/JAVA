<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
          <%
    String path = request.getContextPath();
    %>
<!DOCTYPE html>
<head>
<title>管理员资料修改</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font.css" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet"> 
	<link rel="stylesheet" href="<%=path%>/Css/sweetalert.css"/>
	<script type="text/javascript" src="<%=path%>/Js/sweetalert-dev.js"></script>
<!-- //font-awesome icons -->
<script src="js/jquery2.0.3.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var msg = "${msg}";
		if(msg == 1){
			swal("修改成功","","success");
		}
	});
</script>
</head>
<body>
<section id="container">
<jsp:include page="/WEB-INF/manager/managertop.jsp" flush="true"></jsp:include>
<jsp:include page="/WEB-INF/manager/nativetop.jsp" flush="true"></jsp:include>
<!--main content start-->
<section id="main-content">
	<section class="wrapper">
		<div class="form-w3layouts">
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                          		管理员资料修改
                        </header>
                        <div class="panel-body">
                        <div class="form">
                      <form id="signupForm" method="post" action="<%=path %>/manager/manupdate" enctype="multipart/form-data">
                            <div class="position-center">
                            <input type="hidden" name="manager.manager_id" value="${sessionScope.manager.manager_id }">
                           	<input type="hidden" name="manager.manager_status" value="${sessionScope.manager.manager_status }">
                           	<input type="hidden" name="manager.manager_password" value="${sessionScope.manager.manager_password }">
                           		 <div class="form-group">
                                    <label for="exampleInputFile">头像</label>
                                    <input type="file" id="exampleInputFile" name="file">
                                    <input type="hidden" name="manager.manager_image" value="${sessionScope.manager.manager_image }">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">姓名</label>
                                    <input type="text" name="manager.manager_name" class="form-control" id="exampleInputEmail1" placeholder="Enter email" value="${sessionScope.manager.manager_name }">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">邮箱</label>
                                    <input type="email" class="form-control" name="manager.manager_account" id="exampleInputEmail1" placeholder="Enter email" value="${sessionScope.manager.manager_account }">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">手机号码</label>
                                    <input type="text" class="form-control" name="manager.manager_phone" value="${sessionScope.manager.manager_phone }">
                                </div>
                                
                                <div class="form-group">
											<label class="control-label no-padding-right">性别</label>
											<c:choose>
											<c:when test="${sessionScope.manager.manager_sex=='男'}">
												&nbsp; &nbsp; &nbsp;
												<label class="inline">
													<input name="manager.manager_sex" type="radio" value="男" checked="checked"/>
													<span> 男</span>
												</label>
												&nbsp; &nbsp; &nbsp;
												<label class="inline">
													<input name="manager.manager_sex" type="radio"  value="女"/>
													<span> 女</span>
												</label>
												</c:when>
												<c:otherwise>
												&nbsp; &nbsp; &nbsp;
												<label class="inline">
													<input name="manager.manager_sex" type="radio"  value="男"/>
													<span> 男</span>
												</label>
												&nbsp; &nbsp; &nbsp;
												<label class="inline">
													<input name="manager.manager_sex" type="radio"  value="女" checked="checked"/>
													<span> 女</span>
												</label>
												</c:otherwise>
											</c:choose>
											</div>
										</div>
                                	<div class="form-group">
                                        <div class="col-lg-offset-3 col-lg-6">
                                            <button id="button" class="btn btn-primary" type="submit">提交</button>
                                        </div>
                                    </div>
                            </form>
                            </div>
                        </div>
                    </section>
</div>
</div>
</div>
</section>
</section>
</section>
<!--main content end-->

<script src="js/bootstrap.js"></script>
<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scripts.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>
</body>
</html>
