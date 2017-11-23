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
    
    <title>房产营销平台</title>  

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
</header><div class="main-slider-wrapper clearfix">
    <div id="main-slider">
        <div class="slide"><img src="<%=path %>/house/assets/images/slider/1.jpg" alt="Slide"></div>
        <div class="slide"><img src="<%=path %>/house/assets/images/slider/2.jpg" alt="Slide"></div>
        <div class="slide"><img src="<%=path %>/house/assets/images/slider/3.jpg" alt="Slide"></div>
        <div class="slide"><img src="<%=path %>/house/assets/images/slider/4.jpg" alt="Slide"></div>
    </div>
    <div id="slider-contents">
        <div class="container text-center">
            <div class="jumbotron">
                <h1>找到你的梦想家园</h1>
                <div class="contents clearfix">
                    <p>如果你想设计一个充分利用你所爱的土地的独特地理和景观的新家园</p>
                </div>
              
            </div>
        </div>
    </div>
</div>
<div id="advance-search" class="main-page clearfix">
    
</div><section id="home-property-listing">
<header class="section-header home-section-header text-center">
    <div class="container">
        <h2 class="wow slideInRight">${article.article_title }</h2>
        <p class="wow slideInLeft">${article.article_abstracts}<br></p>
    </div>
</header>
    <div class="container">
        <div class="row js-blog-list" id="js-blog-list">
  </div>
 
    </div>
</section>
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
          <p class="copyright pull-left wow slideInRight">Copyright &copy; 2017.房产营销平台.<a target="_blank" href="#">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
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
<script src="<%=path %>/house/assets/js/jquery.min.js"></script>
<script src="<%=path %>/assets/js/bootstrap.min.js"></script>
<script src="<%=path %>/house/plugins/slick/slick.min.js"></script>
<script src="<%=path %>/house/plugins/tweetie/tweetie.js"></script>
<script src="<%=path %>/house/plugins/modernizr/modernizr.custom.js"></script>
<script src="<%=path %>/house/plugins/wow/wow.min.js"></script>
<script src="<%=path %>/house/plugins/zoom/zoom.js"></script>
<script src="<%=path %>/house/plugins/mixitup/mixitup.min.js"></script>

<script src="<%=path %>/house/plugins/whats-nearby/source/WhatsNearby.js"></script>
<script src="<%=path %>/house/assets/js/theme.js"></script>
<script src="<%=path %>/house/files/js/index.js"></script>


</body>
</html>