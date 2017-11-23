$("#active").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
	var id = $('#agencyid').val();
    if (data.length == 1) {
    	if(data[0].employee_status=="激活"){
    		 $('#status').modal();
    	}else{
    		$.ajax({ url: "http://localhost:8080/RealEstate/employee/updatestatus?employeeid="+data[0].employee_id, 
    			success: function(){
    				$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/employee/list?agencyid="+id});
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
	var id = $('#agencyid').val();
    if (data.length == 1) {
    	if(data[0].employee_status=="冻结"){
    		 $('#instatus').modal();
    	}else{
    		$.ajax({ url: "http://localhost:8080/RealEstate/employee/downstatus?employeeid="+data[0].employee_id, 
    			success: function(){
    				$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/employee/list?agencyid="+id});
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
