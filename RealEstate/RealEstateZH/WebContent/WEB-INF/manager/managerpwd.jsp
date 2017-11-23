<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
      <%
    String path = request.getContextPath();
    %>
<!DOCTYPE html>
<head>
<title>Form_validation</title>
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
<!-- //font-awesome icons -->
<script src="js/jquery2.0.3.min.js"></script>
<link rel="stylesheet" href="<%=path%>/Css/sweetalert.css"/>
	<script type="text/javascript" src="<%=path%>/Js/sweetalert-dev.js"></script>
<script>
	$(document).ready(function(){
		var msg = "${msg}";
		if(msg == 2){
			swal("密码修改成功","","success");
		}
		if(msg == 5){
			swal("旧密码输入错误，请核对后重新输入！","","error");
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
                          		  修改密码
                        </header>
                        <div class="panel-body">
                            <div class="form">
                                <form class="cmxform form-horizontal " id="signupForm" method="get" action="<%=path %>/manager/maneupdatepwd" novalidate="novalidate">
                                    <div class="form-group ">
                                        <label for="password" class="control-label col-lg-3">原密码</label>
                                        <div class="col-lg-6">
                                            <input class="form-control " id="password" name="oldpassword" type="password">
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="password" class="control-label col-lg-3">新密码</label>
                                        <div class="col-lg-6">
                                            <input class="form-control " id="newword" name="newpassword" type="password">
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="confirm_password" class="control-label col-lg-3">确认密码</label>
                                        <div class="col-lg-6">
                                            <input class="form-control " id="confirm_password" name="confirm_password" type="password">
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
            <!-- page end-->
        </div>
</section>
</section>

<!--main content end-->
</section>
<script>
$('#button').click(function(){
	var pass = $('#newword').val();
	var cont = $('#confirm_password').val();
	alert(pass+','+cont);
	if(pass != cont){
		swal("确认密码与新密码不相同，请重新输入！","","error");
		return false;
	}
	return true;
});
</script>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scripts.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>
</body>
</html>
