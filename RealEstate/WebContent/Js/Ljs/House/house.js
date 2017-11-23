


function format(value) {
	return "<img style='width:120;height:50px' src='http://localhost:8080/RealEstate/"+value+"'>";
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
    	// $('#myModal').modal();
    	swal("请选中数据！","","error");
    	
        return;
    }
});


$("#active").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
	
    if (data.length == 1) {
    	if(data[0].house_status=="激活"){
//    		 $('#status').modal();
    		swal("此数据已激活，无需激活！","","error");
    	}else{
    		$.ajax({ url: "http://localhost:8080/RealEstate/house/active?id="+data[0].house_id, 
    			success: function(){
    				$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/house/list"});
    		}
    	      });
    		swal("成功激活","","success");
    	}
    	
    }else{
    	 //$('#myModal').modal();
    	swal("请选中数据！","","error");
    	
        return;
    }
});


$("#active2").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
	
    if (data.length == 1) {
    	if(data[0].house_status=="激活"){
    		// $('#status').modal();
    		swal("此数据已激活，无需激活！","","error");
    	}else{
    		
    		$.ajax({ url: "http://localhost:8080/RealEstate/house/active2?id="+data[0].house_id, 
    			success: function(){
    				$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/house/houselist?id="+data[0].buildings_id});
    		}
    	      });
    		swal("成功激活","","success");
    	}
    	
    }else{
    	 //$('#myModal').modal();
    	swal("请选中数据！","","error");
        return;
    }
});


$("#inactive").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
	
    if (data.length == 1) {
    	if(data[0].house_status=="冻结"){
    		 //$('#instatus').modal();
    		swal("此数据已冻结，无需冻结！","","error");
    	}else{
    		$.ajax({ url: "http://localhost:8080/RealEstate/house/inactive?id="+data[0].house_id, 
    			success: function(){
    				$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/house/list"});
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

$("#inactive2").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
	
    if (data.length == 1) {
    	if(data[0].house_status=="冻结"){
    		// $('#instatus').modal();
    		swal("此数据已冻结，无需冻结！","","error");
    	}else{
    		
    		$.ajax({ url: "http://localhost:8080/RealEstate/house/inactive2?id="+data[0].house_id, 
    			success: function(){
    				$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/house/houselist?id="+data[0].buildings_id});
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


$("#find").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
	
    if (data.length == 1) {
    	
    		
    		location.href="http://localhost:8080/RealEstate/house/House?id="+data[0].buildings_id;
    	
    	
    }else{
    	// $('#myModal').modal();
    	swal("请选中数据！","","error");
        return;
    }
});


$("#xiangqing").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
	
    if (data.length == 1) {
    	
    	 //alert(data[0].buildings.buildings_name);
    	location.href="http://localhost:8080/RealEstate/house/houseDetailed?id="+data[0].house_id+"&buildingsName="+data[0].buildings.buildings_name;
    	
    }else{
    	
    	// $('#myModal').modal();
    	swal("请选中数据！","","error");
        return;
    }
});

$("#img").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
	
    if (data.length == 1) {
    	
    	location.href="http://localhost:8080/RealEstate/house/HouseImg?id="+data[0].house_id;

    }else{
       // toastr.warning('请选择有效数据');
    	// $('#myModal').modal();
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





