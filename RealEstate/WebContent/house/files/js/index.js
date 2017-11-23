
	
	// 百度地图API功能
	var sContent =
	"<h4 style='margin:0 0 5px 0;padding:0.2em 0'>"+name+"</h4>" + 
	"<img style='float:right;margin:4px' id='imgDemo' src='"+image+"' width='139' height='104' title='天安门'/>" + 
	"<p style='margin:0;line-height:1.5;font-size:13px;text-indent:2em'>"+intro+"</p>" + 
	"</div>";
	
	var log = '${buildings.longitude}';
	var tal = '${buildings.latitude}';
	var name='${buildings.buildings_name}';
	var intro='${buildings.buildings_intro}';
	var image="<%=path %>/${buildings.buildings_logo}";
	
	var map = new BMap.Map("allmap");
	var point = new BMap.Point(log,tal);
	var marker = new BMap.Marker(point);
	var infoWindow = new BMap.InfoWindow(sContent);  // 创建信息窗口对象
	map.enableScrollWheelZoom(true);
	map.centerAndZoom(point, 15);
	map.addOverlay(marker);
	marker.addEventListener("click", function(){          
	   this.openInfoWindow(infoWindow);
	   //图片加载完毕重绘infowindow
	   document.getElementById('imgDemo').onload = function (){
		   infoWindow.redraw();   //防止在网速较慢，图片未加载时，生成的信息框高度比图片的总高度小，导致图片部分被隐藏
	   }
	});
	
/*$('#cmmon').click(function (){
	alert("ddd");
	location.href="http://localhost:8080/RealEstate/index/excute?buildingsid="+${buildings.buildings_id};
});*/