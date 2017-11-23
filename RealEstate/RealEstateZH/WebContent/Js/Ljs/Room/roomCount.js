var contextPath = "/RealEstate";

$(function () {  //程序启动就会加载
	$.get(contextPath + "/room/roomCount", function(data) {
		 var chart = new Highcharts.Chart({
		        chart: {
		            renderTo: 'container',
		            type: 'column',
		            options3d: {
		                enabled: true,
		                alpha: 15,
		                beta: 15,
		                depth: 50,
		                viewDistance: 25
		            }
		        },
		        title: {
		            text: ''
		        },
		        xAxis: {
		            categories: ['待售', '销售中', '已预定','已售','保留']
		        },
		        subtitle: {
		            text: ''
		        },
		        plotOptions: {
		            column: {
		                depth: 25
		            }
		        },
		        series: data
		    });
		    function showValues() {
		        $('#alpha-value').html(chart.options.chart.options3d.alpha);
		        $('#beta-value').html(chart.options.chart.options3d.beta);
		        $('#depth-value').html(chart.options.chart.options3d.depth);
		    }
		    // Activate the sliders
		    $('#sliders input').on('input change', function () {
		        chart.options.chart.options3d[this.id] = this.value;
		        showValues();
		        chart.redraw(false);
		    });
		    showValues();
		

	
	}, "json");

});

