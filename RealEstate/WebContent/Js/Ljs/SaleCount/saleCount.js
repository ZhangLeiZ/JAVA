var contextPath = "/RealEstate";
$(function () {  //程序启动就会加载
	$.get(contextPath + "/sale/saleCount", function(data) {
		var chart = new Highcharts.Chart('container', {
		    title: {
		        text: '月销售统计情况',
		        x: -20
		    },
		    subtitle: {
		        text: '',
		        x: -20
		    },
		    xAxis: {
		        categories: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月']
		    },
		    yAxis: {
		        title: {
		            text: '数量(/套)'
		        },
		        plotLines: [{
		            value: 0,
		            width: 1,
		            color: '#808080'
		        }]
		    },
		    tooltip: {
		        valueSuffix: '/套'
		    },
		    legend: {
		        layout: 'vertical',
		        align: 'right',
		        verticalAlign: 'middle',
		        borderWidth: 0
		    },
		    series: data
		});
	}, "json");
	
	
	$.get(contextPath+"/temp?action=temp",function(data){
		$('#column').highcharts({
	        chart: {
	            type: 'column'
	        },
	        title: {
	            text: '月平均降雨量'
	        },
	        subtitle: {
	            text: '数据来源: WorldClimate.com'
	        },
	        xAxis: {
	            categories: [
	                '一月',
	                '二月',
	                '三月',
	                '四月',
	                '五月',
	                '六月',
	                '七月',
	                '八月',
	                '九月',
	                '十月',
	                '十一月',
	                '十二月'
	            ],
	            crosshair: true
	        },
	        yAxis: {
	            min: 0,
	            title: {
	                text: '降雨量 (mm)'
	            }
	        },
	        tooltip: {
	            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
	            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
	            '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
	            footerFormat: '</table>',
	            shared: true,
	            useHTML: true
	        },
	        plotOptions: {
	            column: {
	                pointPadding: 0.2,
	                borderWidth: 0
	            }
	        },
	        series:data
		});
	},"json");
	
	$.get(contextPath + "/pie?action=bro", function(data) {
		$('#pie').highcharts({
	        chart: {
	            plotBackgroundColor: null,
	            plotBorderWidth: null,
	            plotShadow: false
	        },
	        title: {
	            text: '2014 某网站各浏览器浏览量占比'
	        },
	        tooltip: {
	            headerFormat: '{series.name}<br>',
	            pointFormat: '{point.name}: <b>{point.percentage:.1f}%</b>'
	        },
	        plotOptions: {
	            pie: {
	                allowPointSelect: true,
	                cursor: 'pointer',
	                dataLabels: {
	                    enabled: true,
	                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
	                    style: {
	                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
	                    }
	                }
	            }
	        },
	        series: data
	    });
	}, "json");
	
	
	
});
