<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String path = request.getContextPath();
    %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
	 <link href="bootstrapValidator/vendor/bootstrap/css/bootstrap.css" rel="stylesheet" />
     <link href="bootstrapValidator/dist/css/bootstrapValidator.css" rel="stylesheet" />
     
     <link href="easyui/themes/default/easyui.css" rel="stylesheet" >
	 <link href="easyui/themes/icon.css" rel="stylesheet" >
</head>
<body>
	<div class="container">
         <div class="row" style="width: 900px">
              <section>
                  <div class="col-lg-8 col-lg-offset-2">
                     <div class="page-header">
                        <h3 style="color: red">修改密码</h3>
                     </div>
 
                     <form id="mPsdForm" action="<%=path %>/user/modifyPsd" method="post" 
                     	 class="form-horizontal" onsubmit="return checkYzm()" >  
                     	                       
                          <div class="form-group">
                             <label class="col-lg-3 control-label">手机号码：</label>
                             <div class="col-lg-5">
                                 <input type="text" name="user.user_phone" id="user_phone" readonly="true" 
                                 	value="${user.user_phone }" class="form-control"/>                                 
                             </div>
                             &nbsp;&nbsp;<input type="button" id="ycode" value="获取验证码" onclick="return getPhoneCode();" />
                         </div>
                         
                         <div class="form-group">
                             <label class="col-lg-3 control-label">手机验证码：</label>
                             <div class="col-lg-5">
                                 <input type="text" name="yzm" id="yzm" required="required" class="form-control" />
                             </div>
                         </div>
                         
                         <div class="form-group">
                              <label class="col-lg-3 control-label">输入新密码：</label>
                              <div class="col-lg-5">
                                 <input type="password" name="user.user_pwd" id="passwd" required="required" class="form-control"/>
                            </div>
                         </div>
                         <div class="form-group">
                              <label class="col-lg-3 control-label">新密码确认：</label>
                              <div class="col-lg-5">
                                 <input type="password" name="password" id="repasswd" required="required" class="form-control"/>
                            </div>
                         </div>
                         
                         <div class="form-group">
                             <div class="col-lg-9 col-lg-offset-3">
                                 <button type="submit" value="完成" class="btn btn-primary" 
                                 	style="width: 100px">完  成</button> &nbsp;&nbsp;&nbsp;                                                             
                                 <button type="button" id="resetBtn" class="btn btn-info" 
                                 	style="width: 60px">重置</button>
                             </div>
                         </div>
 					</form>
                 </div>
             </section>
         </div>
     </div>
</body>    
     <script src="bootstrapValidator/vendor/jquery/jquery-1.10.2.min.js"></script>
     <script src="bootstrapValidator/vendor/bootstrap/js/bootstrap.min.js"></script>
     <script src="bootstrapValidator/dist/js/bootstrapValidator.js"></script>
     <script src="bootstrapValidator/language/zh_CN.js"></script>  	 
	 <script src="easyui/jquery.easyui.min.js"></script>
	 <script src="easyui/locale/easyui-lang-zh_CN.js"></script>
	 <script src="js/user.js"></script>
	 <script>
		var mobile_code;               //手机验证码
		var InterValObj;     
		var count=60;
		var curcount;
		function getPhoneCode(){
			curcount=count;
			var phone = $("#user_phone").val();
			var myreg = /^(((13[0-9]{1})|(14[0-9]{1})|(17[0]{1})|(15[0-3]{1})|(15[5-9]{1})|(18[0-9]{1}))+\d{8})$/; 
			if(phone != ""){
				$('#ycode').attr("disabled",true);
				$('#ycode').val(curcount+"秒后重发验证码");
				InterValObj = window.setInterval(SetRemainTime, 1000);
				checkPhoneIsExist();
			}else if(phone.length != 11){
				$.messager.confirm('提示', '请输入11位的手机号码', function(r){
					if (r){
						// exit action;
					}
				});
			}else if(!myreg.test(phone)){
				alert("请输入有效的验证号码！");
			}else if(checkPhoneIsExist()){
				alert("该号码已被注册！");
			}else{
				alert("手机号码并不能为空！");
			}
		}		
		 function checkPhoneIsExist(){
            var phone = $("#user_phone").val();
            var url = "${pageContext.request.contextPath}/user/psdCode";
   			$.ajax({
   	            type: "POST",
   	            url: url,
   	            data: {
   	            	"phone":phone        
   	            },
   	            dataType: "text",
   	            success: function(data) {  
   	            	if(data!=0){
   	            		mobile_code=data;
   	            		//alert(mobile_code);
   	            	}
   	            },
   	            error: function() {
   	                alert("错误");             
   	            }
   	        }); 
	     }		 
		 function SetRemainTime() {  
		    if (curcount == 0) {                  
		        window.clearInterval(InterValObj);//停止计时器  
		        $("#ycode").removeAttr("disabled");//启用按钮  
		        $("#ycode").val("重新发送验证码");  
		        code = ""; //清除验证码。如果不清除，过时间后，输入收到的验证码依然有效      
		    }  
		    else {  
		    	curcount--;  
		        $("#ycode").val(curcount + "秒后可重发验证码");  
		    }  
		 }			
	</script>
	                               
	<script type="text/javascript">
	  $(document).ready(function() {           //合法性验证
	     $('#mPsdForm').bootstrapValidator({
	 //        live: 'disabled',
			message: 'This value is not valid',
			feedbackIcons: {
			    valid: 'glyphicon glyphicon-ok',
			    invalid: 'glyphicon glyphicon-remove',
			    validating: 'glyphicon glyphicon-refresh'
			},
	        fields: {     
	        	'yzm': {	                
	                validators: {
	                   notEmpty: {
	                   	   message: '手机验证码不能为空'
	                   },
	                   stringLength: {
	                       min: 6,
	                       max: 6,
	                       message: '验证码长度为6位'
	                   },
	                   regexp: {  //匹配规则
	                       regexp: /^[0-9]+$/,
	                       message: '验证码由数字组成'
	                   },	                   
	                }
	            }, 
	        	'user.user_pwd': {	                 
	                 validators: {
	                    notEmpty: {
	                    	message: '密码不能为空'
	                    },
	                    stringLength: {
	                        min: 6,
	                        max: 16,
	                        message: '密码长度必须在6到16位之间'
	                    },
	                    regexp: {  //匹配规则
	                        regexp: /^[a-zA-Z0-9_\.@!#$%^&*.~]+$/,
	                        message: '密码由6-16位半角字符(字母、数字、符号)组成，区分大小写'
	                    },            
	                 }
	            },   
				'password': {
					validators: {
						notEmpty: {
	                    	message: '确认密码不能为空'
	                    },
						identical: {  //相同
		                   field: 'user.user_pwd', //需要进行比较的input name值
		                   message: '两次密码不一致'
	                    },
	                }
	       		}   
	         }
	     });
	 
	     $('#resetBtn').click(function() {
	         $('#mPsdForm').data('bootstrapValidator').resetForm(true);
	     });
	 });
  </script>
  <script>
  /*
  	function checkYzm(){
		var yzm = $('#yzm').val();
		if(yzm != mobile_code){
			$.messager.alert('提示','你输入的验证码有误，请重新输入！','info');
			return false;
		}
		return true;
	} 
  */
  </script>

</html>