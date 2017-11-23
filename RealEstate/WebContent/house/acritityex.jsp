<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String path = request.getContextPath();
    %>
    <%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  
    <title>房地产营销平台</title>

    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700|Poppins:400,600" rel="stylesheet">

    <link rel="shortcut icon" href="<%=path %>/house/assets/images/favicon.png" >

    <link href="<%=path %>/house/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=path %>/house/plugins/slick/slick.css" rel="stylesheet">
    <link href="<%=path %>/house/plugins/slick-nav/slicknav.css" rel="stylesheet">
    <link href="<%=path %>/house/plugins/wow/animate.css" rel="stylesheet">
    <link href="<%=path %>/house/assets/css/bootstrap.css" rel="stylesheet">
    <link href="<%=path %>/house/assets/css/theme.css" rel="stylesheet">

</head>
<body class="">
<div id="page-loader">
    <div class="loaders">
        <img src="<%=path %>/house/assets/images/loader/3.gif" alt="First Loader">
        <img src="<%=path %>/house/assets/images/loader/4.gif" alt="First Loader">
    </div>
</div>
<header id="site-header">
    <div id="site-header-top">
        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <div class="clearfix">
                        <button class="btn btn-warning btn-lg header-btn visible-sm pull-right">免费列出您的房产</button>
                        <p class="timing-in-header">营业时间：周一至周六 - 上午8时至下午6时</p>
                    </div>
                </div>
                <div class="col-md-7">
                    <div class="clearfix">
                        <button class="btn btn-warning btn-lg header-btn hidden-sm">免费列出您的房产</button>
                        <s:if test="#session.user==null">
	                        <div class="language-in-header">
	                            <i class="fa fa-globe"><a href="<%=path %>/user/page">登录</a></i>
	                        </div>
	                        <div class="currency-in-header">
	                            <i class="fa fa-flag"><a href="<%=path %>/user/page">注册</a></i> 
	                        </div>
	                    </s:if>
	                    <s:else>
	                    	<div class="language-in-header">
	                            <i class="fa fa-globe"><a href="<%=path %>/user/skipUserInfo">个人中心</a></i>
	                        </div>
	                    </s:else>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <figure id="site-logo">
                    <a href="<%=path %>/house/index.jsp"><img src="<%=path %>/house/assets/images/logo.png" alt="Logo"></a>
                </figure>
            </div>
            <div class="col-md-6 col-sm-8">
                <nav id="site-nav" class="nav navbar-default">
                    <ul class="nav navbar-nav">
                         <li><a href="<%=path %>/index/index">新房</a></li>
                        <li><a href="<%=path %>/index/newindex">最新房源</a></li>
                        <li><a href="<%=path %>/house/single-property.jsp">特色服务</a></li>
                        <li><a href="<%=path %>/index/newacrity">新闻资讯</a></li>
                        <li><a href="<%=path %>/house/contact.jsp">联系我们</a></li>
                    </ul>
                </nav>
            </div>
             <div class="col-md-3 col-sm-4">
                <div class="contact-in-header clearfix">
                    <i class="fa fa-mobile"></i>
                    <span>
                        致电我们
                        <br>
                    <strong>111 222 333 444</strong>
                    </span>
                </div>
            </div>
        </div>
    </div>
</header>    <div id="site-banner" class="text-center clearfix">
        <div class="container">
            <h1 class="title">优质房源</h1>
            <ol class="breadcrumb">
                <li><a href="index.html">家</a></li>
                <li class="active">温馨</li>
            </ol>
        </div>
    </div>
    <div id="blog-listing" class="grid-style">
        
        <div class="container">
            <div class="row">
               <div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<ul class="nav nav-tabs">
				<li class="active">
					<a href="#">首页</a>
				</li>
				<li>
					<a href="#">资料</a>
				</li>
			</ul>
			<div class="carousel slide" id="carousel-101614">
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#carousel-101614">
					</li>
					<li data-slide-to="1" data-target="#carousel-101614">
					</li>
					<li data-slide-to="2" data-target="#carousel-101614">
					</li>
				</ol>
			</div>
			<ul class="thumbnails blog-list">
			
			</ul>
			<div class="load-more">加载更多......</div>
		</div>
	</div>
</div>
            </div>
        </div>
    </div>
<footer id="footer">
<div class="site-footer">
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-sm-6">
                <section class="widget about-widget clearfix">
                    <h4 class="title hide">关于我们</h4>
                    <a class="footer-logo" href="#"><img src="<%=path %>/house/assets/images/footer-logo.png" alt="Footer Logo"></a>
                    <p>一流的房屋销售平台，全新的楼盘户型，合理的价位，让您买的放心，住的安心</p>
                    <ul class="social-icons clearfix">
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                        <li><a href="#"><i class="fa fa-youtube-play"></i></a></li>
                    </ul>
                </section>
            </div>
            <div class="col-md-4 col-sm-6">
                <section class="widget twitter-widget clearfix">
                    <h4 class="title">最新活动</h4>
                    <div id="twitter-feeds" class="clearfix"></div>
                </section>
            </div>
            <div class="col-md-4 col-sm-6">
                <section class="widget address-widget clearfix">
                    <h4 class="title">我们的办公室</h4>
                    <ul>
                        <li><i class="fa fa-map-marker"></i> 4号 宝安区, 深圳, 中国.</li>
                        <li><i class="fa fa-phone"></i> (123) 45678910</li>
                        <li><i class="fa fa-envelope"></i> huycoi.art@gmail.com</li>
                        <li><i class="fa fa-fax"></i> +84 962 216 601</li>
                        <li><i class="fa fa-clock-o"></i> 周一 - 周六 9:00 - 18:00</li>
                    </ul>
                </section>
            </div>
        </div>
    </div>
</div>
    <div class="site-footer-bottom">
        <div class="container">
          <p class="copyright pull-left wow slideInRight">Copyright &copy; 2017.房产营销平台.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
            <nav class="footer-nav pull-right wow slideInLeft">
                <ul>
                    <li><a href="#">条款和条件</a></li>
                    <li><a href="#">价格</a></li>
                    <li><a href="#">联系我们</a></li>
                </ul>
            </nav>
        </div>
    </div>
</footer>
<a href="#top" id="scroll-top"><i class="fa fa-angle-up"></i></a>
<script src="<%=path %>/house/assets/js/jquery.min.js"></script>
<script src="<%=path %>/house/assets/js/bootstrap.min.js"></script>
<script src="<%=path %>/house/plugins/slick/slick.min.js"></script>
<script src="<%=path %>/house/plugins/tweetie/tweetie.js"></script>
<script src="<%=path %>/house/plugins/modernizr/modernizr.custom.js"></script>
<script src="<%=path %>/house/plugins/wow/wow.min.js"></script>
<script src="<%=path %>/house/plugins/zoom/zoom.js"></script>
<script src="<%=path %>/house/plugins/mixitup/mixitup.min.js"></script>
<script src="<%=path %>/house/plugins/whats-nearby/source/WhatsNearby.js"></script>
<script src="<%=path %>/house/assets/js/theme.js"></script>
<script>
$(document).ready(function(){
	  /*初始化*/
	  var counter = 0; /*计数器*/
	  var pageStart = 0; /*offset*/
	  var pageSize = 6; /*size*/
	  /*首次加载*/
	  getData(pageStart, pageSize);
});
function getData(offset,size){
	var url = 'http://localhost:8080/RealEstate/index/acritylists';
	  $.ajax({
	    type: "post",
	    url: url,
	    dataType: "json",
	    success: function(reponse){
	       var data = reponse.articlelist;
	       var sum = data.length;
	       var result = '';
	      
	       
	      /*如果剩下的记录数不够分页，就让分页数取剩下的记录数
	      * 例如分页数是5，只剩2条，则只取2条
	      */
	      if(sum - offset < size ){
	        size = sum - offset;
	      }
	       
	      for(var i=offset; i< (offset+size); i++){
	    	  result +=  '<li class="span4">'+
				'<div class="thumbnail">'+
				'<div class="caption">'+
					'<h3>'+data[i].article_title+'</h3>'+
					'<p>'+data[i].article_abstracts+'</p>'+
					'<p>'+
						'<a class="btn btn-primary" href="http://localhost:8080/RealEstate/index/acricleexce?acricleid="'+data[i].article_id+'>浏览</a> <a class="btn" href="#">分享</a>'+
					'</p>'+
				'</div>'+
			'</div>'+
		'</li>';
	      }
	   
	      $('.blog-list').append(result);
	      
	      /*隐藏more按钮*/
	      if ( (offset + size) >= sum){
	        $(".load-more").hide();
	      }else{
	        $(".load-more").show();
	      }
	    },
	    
	    error: function(xhr, type){
	      //alert('Ajax error!');
	    }
	  });
	}
</script>
</body>

</html>
