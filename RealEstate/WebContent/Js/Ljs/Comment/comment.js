
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


if(xiugai=="删除成功！"){
	swal("删除成功！","","success");
	$('#xiugai').val("");
}
