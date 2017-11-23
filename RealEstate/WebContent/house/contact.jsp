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
    
    <title>联系我们</title>

    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700|Poppins:400,600" rel="stylesheet">

    <link rel="shortcut icon" href="assets/images/favicon.png" >

    <link href="plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="plugins/slick/slick.css" rel="stylesheet">
    <link href="plugins/slick-nav/slicknav.css" rel="stylesheet">
    <link href="plugins/wow/animate.css" rel="stylesheet">
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/css/theme.css" rel="stylesheet">

</head>
<body class="contact-template">
<div id="page-loader">
    <div class="loaders">
        <img src="assets/images/loader/3.gif" alt="First Loader">
        <img src="assets/images/loader/4.gif" alt="First Loader">
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
                    <a href="<%=path %>/house/index.jsp"><img src="assets/images/logo.png" alt="Logo"></a>
                </figure>
            </div>
            <div class="col-md-6 col-sm-8">
                <nav id="site-nav" class="nav navbar-default">
                    <ul class="nav navbar-nav">
                        <li><a href="<%=path %>/house/index.jsp">新房</a></li>
                        <li><a href="<%=path %>/house/property-listing.jsp">二手房</a></li>
                        <li><a href="<%=path %>/house/single-property.jsp">特色服务</a></li>
                        <li><a href="<%=path %>/house/gallery.jsp">关于我们</a></li>
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
</header><div id="site-banner" class="text-center clearfix">
    <div class="container">
        <h1 class="title wow slideInLeft">请与我们联系</h1>
        <ol class="breadcrumb wow slideInRight">
            <li><a href="index.html">家</a></li>
            <li class="active">联系我们</li>
        </ol>
    </div>
</div>
<div id="contact-page" class="contact-page-var-one">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="contact-form-wrapper">
                    <h3 class="entry-title">联系我们</h3>
                    <div class="contents">
                        <p>将您对我们平台不满意的地方提出来，并告诉我们，我们将全力改正，让您买的放心，住的安心</p>
                    </div>
                    <form action="javascript:void(0);" method="post" class="contact-form">
                        <p class="form-author common">
                            <input id="author" name="name" type="text" placeholder="你的姓名" aria-required="true" required="required">
                        </p>
                        <p class="form-email common">
                            <input id="email" name="email" type="text" placeholder="你的邮箱地址" aria-describedby="email-notes" aria-required="true" required="required">
                        </p>
                        <p class="form-phone common">
                            <input id="phone" name="phone" type="text" placeholder="你的电话号码" aria-required="true" required="required" >
                        </p>
                        <p class="form-subject common">
                            <input id="subject" name="subject" type="text" placeholder="类型">
                        </p>
                        <p class="form-comment">
                            <textarea id="message" name="message" placeholder="意见" cols="45" rows="7" ></textarea>
                        </p>
                        <p class="form-submit">
                            <button type="submit" id="submit-button" class="submit-btn btn btn-default btn-lg btn-3d" data-hover="Post Comment">发表评论</button>
                            <span id="ajax-loader"><i class="fa fa-spinner fa-pulse fa-2x fa-fw"></i><span class="sr-only">Loading...</span></span>
                        </p>
                        <div id="error-container"></div>
                        <div id="message-container"></div>
                    </form>
                </div>
            </div>
            <div class="col-md-6">
                <div class="contact-page-contents clearfix">
                    <div class="row">
                        <div class="col-md-6">
                            <i class="fa fa-map-marker"></i>
                            <div class="contents">
                                <h6 class="title">邮寄地址</h6>
                                <address>
                                    中国赣州市章贡区沙石镇88号
                                </address>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <i class="fa fa-phone"></i>
                            <div class="contents">
                                <h5 class="title">联系方式</h5>
                                <ul>
                                    <li>电话 (123) 45678910</li>
                                    <li>邮箱 company@domain.com</li>
                                    <li>传真 +84 962 216 601</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="map-canvas"></div>
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
                    <a class="footer-logo" href="#"><img src="assets/images/footer-logo.png" alt="Footer Logo"></a>
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
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.migrate.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="plugins/slick-nav/jquery.slicknav.min.js"></script>
<script src="plugins/slick/slick.min.js"></script>
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<script src="plugins/tweetie/tweetie.js"></script>
<script src="plugins/forms/jquery.form.min.js"></script>
<script src="plugins/forms/jquery.validate.min.js"></script>
<script src="plugins/modernizr/modernizr.custom.js"></script>
<script src="plugins/wow/wow.min.js"></script>
<script src="plugins/zoom/zoom.js"></script>
<script src="plugins/mixitup/mixitup.min.js"></script>

<script src="plugins/whats-nearby/source/WhatsNearby.js"></script>
<script src="assets/js/theme.js"></script>
</body>
</html>

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
	  $.ajax({
	    type: "post",
	    url: "http://localhost:8080/RealEstate/index/acritylists",
	    dataType: "json",
	    success: function(reponse){
	    	alert("ssss");
	       var data = reponse.articlelist;
	       alert(data);
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
						'<a class="btn btn-primary" href="#">浏览</a> <a class="btn" href="#">分享</a>'+
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

