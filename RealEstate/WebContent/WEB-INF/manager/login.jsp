<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String path = request.getContextPath(); %>
<!DOCTYPE html>
<head>
<title>管理员登录</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- bootstrap-css -->
<link rel="stylesheet" href="<%=path %>/manager/css/bootstrap.min.css" >
<link href="<%=path %>/manager/css/style.css" rel='stylesheet' type='text/css' />
<script src="<%=path%>/manager/js/jquery2.0.3.min.js"></script>
<link rel="stylesheet" href="<%=path%>/Css/sweetalert.css"/>
<script type="text/javascript" src="<%=path%>/Js/sweetalert-dev.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var msg = "${msg}";
		if(msg == 3){
			swal("邮箱或密码错误，请重新输入","","error");
		}
	});
</script>
</head>
<body>
<div class="log-w3">
<div class="w3layouts-main">
	<h2>管理员登录</h2>
		<form action="<%=path %>/manager/login" method="post">
			<input type="email" class="ggg" name="account" placeholder="邮箱">
			<input type="password" class="ggg" name="pwd" placeholder="密码">
			<input type="submit" value="登  录" name="login">
		</form>
</div>
</div>

<script src="<%=path%>/manager/js/bootstrap.js"></script>
</body>
</html>
