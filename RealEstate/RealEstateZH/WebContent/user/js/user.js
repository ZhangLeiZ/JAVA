
//Register   注册

function checkPsd(){ 
	var passwd = $('#passwd').val();
	var repasswd = $('#repasswd').val();
	if(passwd != repasswd){				
		$.messager.alert('提示','确认密码与密码不一致!','info');
		form1.password.focus();
		return false;
	}
	return true;
}  
function checkYzm(){
	var yzm = $('#yzm').val();
	if(yzm != mobile_code){
		$.messager.alert('提示','你输入的验证码有误，请重新输入！','info');
		return false;   
	}
	return true;
}

//检查是否登录
function checkLogin(){
	
}



							//预约
//取消预约
$('#deleteApp').click(function(){
	var data = $("#tb").bootstrapTable('getSelections');
	if(data.length == 1){		
		$.ajax({ url: "http://localhost:8080/RealEstate/appointment/delete?appointmentId="+data[0].appointment_id, 
			success: function(){
				$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/appointment/listPage"});
			}
	    });
		swal("成功取消预约！","","success");	
	}else{
		swal("请选择你要取消的预约！","","error");
	}
});

						//浏览楼盘历史
//删除
$('#deleteHis').click(function(){
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
	if(data.length == 1){		
		$.ajax({ url: "http://localhost:8080/RealEstate/history/delete?id="+data[0].history_id, 
			success: function(){
				$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/history/listPage"});
			}
	    });
		swal("成功删除历史记录！","","success");	
	}else{
		swal("请选择你要删除的历史记录！","","error");
	}
});
						//点赞
//删除
$('#deleteLik').click(function(){
	var data = $("#tb").bootstrapTable('getSelections');
	if(data.length == 1){		
		$.ajax({ url: "http://localhost:8080/RealEstate/like/delete?id="+data[0].like_id, 
			success: function(){
				$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/like/listPage"});
			}
	    });
		swal("成功取消点赞！","","success");	
	}else{
		swal("请选择你要取消的点赞！","","error");
	}
});

						//评价
//修改
$("#modifyCom").click(function () {	
	var data = $("#tb").bootstrapTable('getSelections');
    if (data.length == 1) {
        $("#form1").fill(data[0]);
        $("#exampleModalLabel").text("修改");
        $('#exampleModal').modal();
        return;
    }else{
    	swal("请选择你要修改的评价！","","error");
        return;
    }
});
//激活
$("#activeCom").click(function () {
	var data = $("#tb").bootstrapTable('getSelections');
    if (data.length == 1) {
    	if(data[0].comment_status=="激活"){
    		swal("已激活，无需再次激活","","error");
    	}else{
    		$.ajax({ url: "http://localhost:8080/RealEstate/comment/active?commentId="+data[0].comment_id, 
    			success: function(){
    				$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/comment/listPage"});
    			}
    	    });
    		swal("成功激活","","success");
    	}
    }else{
    	swal("请选中数据！","","error");
        return;
    }
});
//冻结
$("#inactiveCom").click(function () {
	var data = $("#tb").bootstrapTable('getSelections');
    if (data.length == 1) {
    	if(data[0].comment_status=="冻结"){
    		swal("已冻结，无需再次冻结","","error");
    	}else{
    		$.ajax({ url: "http://localhost:8080/RealEstate/comment/inactive?commentId="+data[0].comment_id, 
    			success: function(){
    				$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/comment/listPage"});
    			}
    	    });
    		swal("成功冻结","","success");   
    	}
    }else{
    	swal("请选中数据！","","error");
        return;
    }
});


								//留言
//修改
$("#modifyMsg").click(function () {	
	var data = $("#tb").bootstrapTable('getSelections');
	if (data.length == 1) {
       $("#form1").fill(data[0]);
       $("#exampleModalLabel").text("修改");
       $('#exampleModal').modal();
       return;
	}else{
	   swal("请选择你要修改的留言！","","error");
	   return;
	}
});
//激活
$("#activeMsg").click(function () {
	var data = $("#tb").bootstrapTable('getSelections');
    if(data.length == 1) {
	  	if(data[0].message_status=="激活"){
	  		swal("已激活，无需再次激活","","error");
	  	}else{
	  		$.ajax({ url: "http://localhost:8080/RealEstate/message/active?messageId="+data[0].message_id, 
	  			success: function(){
	  				$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/message/listPage"});
	  			}
	  	    });
	  		swal("成功激活","","success");
	  	}
    }else{
	  	swal("请选中数据！","","error");
	    return;
    }
});
//冻结
$("#inactiveMsg").click(function () {
	var data = $("#tb").bootstrapTable('getSelections');
    if (data.length == 1) {
	  	if(data[0].message_status=="冻结"){
	  		swal("已冻结，无需再次冻结","","error");
	  	}else{
	  		$.ajax({ url: "http://localhost:8080/RealEstate/message/inactive?messageId="+data[0].message_id, 
	  			success: function(){
	  				$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/message/listPage"});
	  			}
	  	    });
	  		swal("成功冻结","","success");   
	  	}
   }else{
	   swal("请选中数据！","","error");
       return;
  }
});



