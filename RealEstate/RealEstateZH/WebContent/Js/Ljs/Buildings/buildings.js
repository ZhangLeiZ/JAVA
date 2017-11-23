

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
    	 //$('#myModal').modal();
    	swal("请选中数据！","","error");
    	
        return;
    }
});

$("#active").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
	
    if (data.length == 1) {
    	if(data[0].buildings_status=="激活"){
    		// $('#status').modal();
    		swal("此数据已激活，无需再激活！","","error");
    	}else{
    		
    		//location.href="http://localhost:8080/RealEstate/buildings/active?id="+data[0].buildings_id;
    		$.ajax({ url: "http://localhost:8080/RealEstate/buildings/active?id="+data[0].buildings_id, 
    			success: function(){
    				$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/buildings/list?id="+data[0].agency_id});
    		}
    	      });
    		swal("成功激活","","success");
    	
    	}
    	
    }else{-
    	// $('#myModal').modal();
    	swal("请选中数据！","","error");
        return;
    }
});


$("#inactive").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
	
    if (data.length == 1) {
    	if(data[0].buildings_status=="冻结"){
    		 //$('#instatus').modal();
    		swal("此数据已冻结，无需再冻结！","","error");
    	}else{
    		
    		//location.href="http://localhost:8080/RealEstate/buildings/inactive?id="+data[0].buildings_id;
    		$.ajax({ url: "http://localhost:8080/RealEstate/buildings/inactive?id="+data[0].buildings_id, 
    			success: function(){
    				$("#tb").bootstrapTable("refresh",{url:"http://localhost:8080/RealEstate/buildings/list?id="+data[0].agency_id});
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
    	
    	location.href="http://localhost:8080/RealEstate/buildings/details?id="+data[0].buildings_id;
//        $("#from2").fill(data[0]);
//        $("#finds").text("修改");
//        $('#findModel').modal();
        return;
    }else{
       // toastr.warning('请选择有效数据');
    	 //$('#myModal').modal();
    	swal("请选中数据！","","error");
        return;
    }
});


$("#img").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
	
    if (data.length == 1) {
    	
    	location.href="http://localhost:8080/RealEstate/img/imageList?id="+data[0].buildings_id;
//        $("#from2").fill(data[0]);
//        $("#finds").text("修改");
//        $('#findModel').modal();
        return;
    }else{
       // toastr.warning('请选择有效数据');
    	// $('#myModal').modal();
    	swal("请选中数据！","","error");
        return;
    }
});

$('#Toltual').click(function(){
	$('#Talitude').modal();
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
