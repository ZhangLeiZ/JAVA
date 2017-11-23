

function format(value) {
	if(value==null){
		return "未回复！";
	}else{
		
		return value;
	}
	
	
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



$("#btn_delete").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
	
	if (data.length == 1) {
        $("#from2").fill(data[0]);
        $("#example").text("删除");
        $('#delete').modal();
        return;
    }else{
       // toastr.warning('请选择有效数据');
    	swal("请选中数据！","","error");
    	
        return;
    }
});


	


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



$("#btn_delete").click(function () {
	//取表格的选中行数据
	var data = $("#tb").bootstrapTable('getSelections');
	
	if (data.length == 1) {
        $("#from2").fill(data[0]);
        $("#example").text("删除");
        $('#delete').modal();
        return;
    }else{
       // toastr.warning('请选择有效数据');
    	swal("请选中数据！","","error");
    	
        return;
    }
});






var xiugai = document.getElementById("xiugai").value;

if(xiugai=="回复成功！"){
	swal("回复成功！","","success");
	$('#xiugai').val("");
}

if(xiugai=="删除成功！"){
	swal("删除成功！","","success");
	$('#xiugai').val("");
}

