class BstpTable{
    constructor(obj) {
        this.obj=obj;
    }
    inint(searchArgs){
         //---先销毁表格 ---
         this.obj.bootstrapTable('destroy');  
         //---初始化表格,动态从服务器加载数据--- 
         this.obj.bootstrapTable({
            //【发出请求的基础信息】
            method: 'post',
            contentType: "application/x-www-form-urlencoded",
            //【查询设置】
            /* queryParamsType的默认值为 'limit' ,在默认情况下 传给服务端的参数为：offset,limit,sort
                              设置为 ''  在这种情况下传给服务器的参数为：pageSize,pageNumber */
            queryParamsType:'', 
            queryParams: function queryParams(params) {  
              var param = {  
                  pageNumber: params.pageNumber,    
                  pageSize: params.pageSize
              }; 
              for(var key in searchArgs){
                  param[key]=searchArgs[key] 
              }  
              return param;                   
            }, 
            
            //【其它设置】
            locale:'zh-CN',//中文支持
            pagination: true,//是否开启分页（*）
            pageNumber:1,//初始化加载第一页，默认第一页
            pageSize: 5,//每页的记录行数（*）
            showToggle:true,//显示试图切换
            toolbar:"#toolbar",
            pageList: [5,10,15,30],//可供选择的每页的行数（*）
            sidePagination: "server", //分页方式：client客户端分页，server服务端分页（*）
            showRefresh:true,//刷新按钮
            showColumns:true,
            showExport: true,//显示导出按钮  
            exportDataType: "basic",//导出类型 
            clickToSelect:true,
            //【样式设置】
            height: 480,//table的高度
            //按需求设置不同的样式：5个取值代表5中颜色['active', 'success', 'info', 'warning', 'danger'];
            rowStyle: function (row, index) {
                var style = "";
                if (row.customer_type=="预约客户"){
                	{style='active';}
                }
                if(row.customer_type=="预定客户"){
                	{style='success';}
                }
                if(row.customer_type=="购房客户"){
                	{style='danger';}
                }
                if(row.sale_status==""){
                	{style='info';}
                }
                if(row.sale_status=="已预定"){
                	{style='warning';}
                }
                return { classes: style }
            }
        })
     }
}

var bstpTable=new BstpTable($("#tb"));
bstpTable.inint({})


var xiugai = document.getElementById("xiugai").value;


if(xiugai=="新增成功！"){
	swal("新增成功！","","success");
	$('#xiugai').val("");
}

if(xiugai=="修改成功！"){
	swal("修改成功！","","success");
	$('#xiugai').val("");
}


if(xiugai=="上传成功！"){
	swal("上传成功！","","success");
	$('#xiugai').val("");
}



$("#btn_edit").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
	
    if (data.length == 1) {
    	
        $("#from1").fill(data[0]);
        $("#exampleModalLabel").text("修改");
        $('#exampleModal').modal();
        return;
    }else{
       // toastr.warning('请选择有效数据');
    	 //$('#myModal').modal();
    	swal("请选中数据！","","error");
    	
        return;
    }
});

$("#btn_edit2").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
	
    if (data.length == 1) {
    	
        $("#from2").fill(data[0]);
        $("#uploads").text("上传");
        $('#upload').modal();
        return;
    }else{
       // toastr.warning('请选择有效数据');
    	 //$('#myModal').modal();
    	swal("请选中数据！","","error");
    	
        return;
    }
});



$("#active").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
	
    if (data.length == 1) {
    	if(data[0].customer_status=="激活"){
    		// $('#status').modal();
    		swal("此数据已激活，无需再激活！","","error");
    	}else{
    		
    		//location.href="http://localhost:8080/RealEstate/buildings/active?id="+data[0].buildings_id;
    		$.ajax({ url: "http://localhost:8080/RealEstate/customer/active?customer_id="+data[0].customer_id, 
    			success: function(){
    				$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/customer/list"});
    		}
    	      });
    		swal("成功激活","","success");
    	
    	}
    	
    }else{
    	// $('#myModal').modal();
    	swal("请选中数据！","","error");
        return;
    }
});


$("#inactive").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
	
    if (data.length == 1) {
    	if(data[0].customer_status=="冻结"){
    		 //$('#instatus').modal();
    		swal("此数据已冻结，无需再冻结！","","error");
    	}else{
    		
    		//location.href="http://localhost:8080/RealEstate/buildings/inactive?id="+data[0].buildings_id;
    		$.ajax({ url: "http://localhost:8080/RealEstate/customer/inactive?customer_id="+data[0].customer_id, 
    			success: function(){
    				$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/customer/list"});
    		}
    	      });
    		swal("成功冻结","","success");
    	}
    	
    }else{
    	// $('#myModal').modal();
    	swal("请选中数据！","","error");
        return;
    }
});


$("#btn_upload").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
	
    if (data.length == 1) {
    	
    		
    	location.href="http://localhost:8080/RealEstate/customer/filefind";
    	
    }else{
    	
    	location.href="http://localhost:8080/RealEstate/customer/filefind";
        return;
    }
});


$("#find").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
	
    if (data.length == 1) {
    	
    	location.href="http://localhost:8080/RealEstate/customer/details?id="+data[0].customer_id+"&employeename="+data[0].employee.employee_name;
        return;
    }else{
       // toastr.warning('请选择有效数据');
    	 //$('#myModal').modal();
    	swal("请选中数据！","","error");
        return;
    }
});





