


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
    	// $('#myModal').modal();
    	swal("请选中数据！","","error");
    	
        return;
    }
});

$("#active").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
	
    if (data.length == 1) {
    	if(data[0].building_status=="激活"){
    		// $('#status').modal();
    		swal("此数据已激活，无需激活！","","error");
    	}else{
    		
    		$.ajax({ url: "http://localhost:8080/RealEstate/building/active?id="+data[0].building_id, 
    			success: function(){
    				$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/building/list"});
    		}
    	      });
    		swal("成功激活","","success");
    		
    		
    		
    		//location.href="http://localhost:8080/RealEstate/building/active?id="+data[0].building_id;
    		
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
    	if(data[0].building_status=="冻结"){
    		// $('#instatus').modal();
    		swal("此数据已冻结，无需冻结！","","error");
    	}else{
    		
    		//location.href="http://localhost:8080/RealEstate/building/inactive?id="+data[0].building_id;
    		
    		$.ajax({ url: "http://localhost:8080/RealEstate/building/inactive?id="+data[0].building_id, 
    			success: function(){
    				$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/building/list"});
    		}
    	      });
    		swal("成功冻结","","success");
    		
    		
    	}
    	
    }else{
    	 //$('#myModal').modal();
    	swal("请选中数据！","","error");
        return;
    }
});


$("#findroom").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
	
    if (data.length == 1) {
    		
    	location.href="http://localhost:8080/RealEstate/room/findroom?buildid="+data[0].building_id;
    	
    }else{
    	
    	swal("请选中数据！","","error");
    	
        return;
    }
});


$("#newroom").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
	
    if (data.length == 1) {
    		
    	location.href="http://localhost:8080/RealEstate/room/roomfind2?building.total_floor="+data[0].total_floor+"&building.floor_rooms="+data[0].floor_rooms+"&building.building_id="+data[0].building_id;
    	
    }else{
    	
    	swal("请选中数据！","","error");
    	
        return;
    }
});

var xiugai = document.getElementById("xiugai").value;

if(xiugai=="修改成功！"){
	swal("修改成功！","","success");
	$('#xiugai').val("");
}

if(xiugai=="新增成功！"){
	swal("新增成功！","","success");
	$('#xiugai').val("");
}



