$("#active").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
    if (data.length == 1) {
    	if(data[0].agency_status=="激活"){
    		swal("已激活无需再次激活请重新选择","","error");
    	}else{
    		$.ajax({ url: "http://localhost:8080/RealEstate/manager/upstatus?agencyid="+data[0].agency_id, 
    			success: function(){
    				$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/manager/agency?struta=激活"});
    		}
    	      });
    		swal("成功激活","","success");
    	}
    }else{
    	swal("请选中数据","","error");
        return;
    }
});

$("#inactive").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
    if (data.length == 1) {
    	if(data[0].agency_status=="冻结"){
    		swal("已冻结无需再次冻结请重新选择","","error");
    	}else{
    		$.ajax({ url: "http://localhost:8080/RealEstate/manager/downstatus?agencyid="+data[0].agency_id, 
    			success: function(){
    				$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/manager/agency?struta=冻结"});
    		}
    	      });
    		swal("成功冻结","","success");
    	}
    }else{
    	swal("请选中数据","","error");
        return;
    }
});
$("#find").click(function(){
	var data = $('#tb').bootstrapTable('getSelections');
	if(data.length==1){
		location.href="http://localhost:8080/RealEstate/manager/agencyExamine?agencyid="+data[0].agency_id;
	}else{
		swal("请选中数据","","error");
	}
});
$('#excmal').click(function(){
	$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/manager/agency?struta=冻结"});
	
});

//员工管理

$("#empactive").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
    if (data.length == 1) {
    	if(data[0].employee_status=="激活"){
    		swal("已激活无需再次激活请重新选择","","error");
    	}else{
    		$.ajax({ url: "http://localhost:8080/RealEstate/manager/empupstatus?employeeid="+data[0].employee_id, 
    			success: function(){
    				$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/manager/employee?struta=激活"});
    		}
    	      });
    		swal("成功激活","","success");
    	}
    }else{
    	swal("请选中数据","","error");
        return;
    }
});

$("#empinactive").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
    if (data.length == 1) {
    	if(data[0].employee_status=="冻结"){
    		swal("已冻结无需再次冻结请重新选择","","error");
    	}else{
    		$.ajax({ url: "http://localhost:8080/RealEstate/manager/empdownstatus?employeeid="+data[0].employee_id, 
    			success: function(){
    				$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/manager/employee?struta=冻结"});
    		}
    	      });
    		swal("成功冻结","","success");
    	}
    }else{
    	swal("请选中数据","","error");
        return;
    }
});
$("#empfind").click(function(){
	var data = $('#tb').bootstrapTable('getSelections');
	if(data.length==1){
		location.href="http://localhost:8080/RealEstate/manager/empExamine?employeeid="+data[0].employee_id;
	}else{
		swal("请选中数据","","error");
	}
});
$('#empexcmal').click(function(){
	$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/manager/employee?struta=冻结"});
	
});



//活动管理

$("#actactive").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
    if (data.length == 1) {
    	if(data[0].activity_status=="激活"){
    		swal("已激活无需再次激活请重新选择","","error");
    	}else{
    		$.ajax({ url: "http://localhost:8080/RealEstate/manager/actupstatus?activityid="+data[0].activity_id, 
    			success: function(){
    				$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/manager/activity?struta=激活"});
    		}
    	      });
    		swal("成功激活","","success");
    	}
    }else{
    	swal("请选中数据","","error");
        return;
    }
});

$("#actinactive").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
    if (data.length == 1) {
    	if(data[0].activity_status=="冻结"){
    		swal("已冻结无需再次冻结请重新选择","","error");
    	}else{
    		$.ajax({ url: "http://localhost:8080/RealEstate/manager/actdownstatus?activityid="+data[0].activity_id, 
    			success: function(){
    				$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/manager/activity?struta=冻结"});
    		}
    	      });
    		swal("成功冻结","","success");
    	}
    }else{
    	swal("请选中数据","","error");
        return;
    }
});

$("#actfind").click(function(){
	var data = $('#tb').bootstrapTable('getSelections');
	if(data.length==1){
		location.href="http://localhost:8080/RealEstate/manager/actExamine?activityid="+data[0].activity_id;
	}else{
		swal("请选中数据","","error");
	}
});
$('#actexcmal').click(function(){
	$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/manager/activity?struta=冻结"});
	
});






								// 文章
$("#artactive").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
    if (data.length == 1) {
    	if(data[0].article_status=="激活"){
    		swal("已激活无需再次激活请重新选择","","error");
    	}else{
    		$.ajax({ url: "http://localhost:8080/RealEstate/manager/artupstatus?articleId="+data[0].article_id, 
    			success: function(){
    				$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/manager/articlelist?struta=激活"});
    		}
    	      });
    		swal("成功激活","","success");
    	}
    }else{
    	swal("请选中数据","","error");
        return;
    }
});
$("#artinactive").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
    if (data.length == 1) {
    	if(data[0].article_status=="冻结"){
    		swal("已冻结无需再次冻结请重新选择","","error");
    	}else{
    		$.ajax({ url: "http://localhost:8080/RealEstate/manager/artdownstatus?articleId="+data[0].article_id, 
    			success: function(){
    				$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/manager/articlelist?struta=冻结"});
    		}
    	      });
    		swal("成功冻结","","success");
    	}
    }else{
    	swal("请选中数据","","error");
        return;
    }
});
$('#artexcmal').click(function(){
	$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/manager/articlelist?struta=冻结"});
});
$("#artfind").click(function(){
	var data = $('#tb').bootstrapTable('getSelections');
	if(data.length==1){
		location.href="http://localhost:8080/RealEstate/manager/actExamine?activityid="+data[0].activity_id;
	}else{
		swal("请选中数据","","error");
	}
});
//$('artAdd').click(function(){
//	$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/manager/article"});
//});


								//文章类型
$("#btn_typeAdd").click(function () {
    $("#exampleModalLabels").text("添加");          
    $('#exampleModals').modal();      
});

$(document).ready(function() {
    $('#addType').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	'type.type_name': {
                validators: {
                    notEmpty: {
                        message: '类型名称不能为空！'
                    },
                }
            },
            'type.type_des': {
                validators: {
                    notEmpty: {
                        message: '类型描述不能为空'
                    },
                }
            },
            
            ages: {
                validators: {
                    lessThan: {
                        value: 100,
                        inclusive: true,
                        message: 'The ages has to be less than 100'
                    },
                    greaterThan: {
                        value: 10,
                        inclusive: false,
                        message: 'The ages has to be greater than or equals to 10'
                    }
                }
            }
        }
    });
});
$("#btn_typeUpdate").click(function () {
	var data = $("#tb").bootstrapTable('getSelections');
    if (data.length == 1) {
        $("#updateType").fill(data[0]);               
        $("#exampleModalLabel").text("修改");                           
        $('#example').modal();
        return;
    }else{                               
    	 $('#myModal').modal();
    	swal("请选中数据","","error");              
        return;
    }
});

$("#typeActive").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
    if (data.length == 1) {
    	if(data[0].type_status=="激活"){
    		swal("已冻结无需再次冻结请重新选择","","error");
    	}else{
    		$.ajax({ url: "http://localhost:8080/RealEstate/type/active?id="+data[0].type_id, 
    			success: function(){
    				
    				$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/type/listPage"});
    		}
    	      });
    		swal("成功激活","","success");
    	}
    }else{
    	swal("请选中数据","","error");
        return;
    }
});
//文章修改
$("#btn_update").click(function () {
	var data = $("#tb").bootstrapTable('getSelections');
    if (data.length == 1) {
    	location.href="http://localhost:8080/RealEstate/manager/articleup?articleId="+data[0].article_id;
    }else{                               
    	 $('#myModal').modal();
    	swal("请选中数据","","error");              
        return;
    }
});


$("#artdelete").click(function () {
	var data = $("#tb").bootstrapTable('getSelections');
    if (data.length == 1) {
    	location.href="http://localhost:8080/RealEstate/manager/articledelete?articleId="+data[0].article_id;
    }else{                               
    	 $('#myModal').modal();
    	swal("请选中数据","","error");              
        return;
    }
});