
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


var xiugai = document.getElementById("xiugai").value;

if(xiugai=="修改成功！"){
	swal("修改成功！","","success");
	$('#xiugai').val("");
}

if(xiugai=="新增成功！"){
	swal("新增成功！","","success");
	$('#xiugai').val("");
}