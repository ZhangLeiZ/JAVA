<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>

<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>房产营销平台</title>

<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700|Poppins:400,600"
	rel="stylesheet">

<link rel="shortcut icon"
	href="<%=path%>/house/assets/images/favicon.png">

<link
	href="<%=path%>/house/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="<%=path%>/house/plugins/slick/slick.css" rel="stylesheet">
<link href="<%=path%>/house/plugins/slick-nav/slicknav.css"
	rel="stylesheet">
<link href="<%=path%>/house/plugins/wow/animate.css" rel="stylesheet">
<link href="<%=path%>/house/assets/css/bootstrap.css" rel="stylesheet">
<link href="<%=path%>/house/assets/css/theme.css" rel="stylesheet">

</head>
<body class="">
	<div id="page-loader">
		<div class="loaders">
			<img src="<%=path%>/house/assets/images/loader/3.gif"
				alt="First Loader"> <img
				src="<%=path%>/house/assets/images/loader/4.gif" alt="First Loader">
		</div>
	</div>
	<header id="site-header">
		<div id="site-header-top">
			<div class="container">
				<div class="row">
					<div class="col-md-5">
						<div class="clearfix">
							<button
								class="btn btn-warning btn-lg header-btn visible-sm pull-right">免费列出您的房产</button>
							<p class="timing-in-header">营业时间：周一至周六 - 上午8时至下午6时</p>
						</div>
					</div>
					<div class="col-md-7">
						<div class="clearfix">
							<button class="btn btn-warning btn-lg header-btn hidden-sm">免费列出您的房产</button>
							<s:if test="#session.user==null">
								<div class="language-in-header">
									<i class="fa fa-globe"><a href="<%=path%>/user/page">登录</a></i>
								</div>
								<div class="currency-in-header">
									<i class="fa fa-flag"><a href="<%=path%>/user/page">注册</a></i>
								</div>
							</s:if>
							<s:else>
								<div class="language-in-header">
									<i class="fa fa-globe"><a
										href="<%=path%>/user/skipUserInfo">个人中心</a></i>
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
						<a href="<%=path%>/house/index.jsp"><img
							src="<%=path%>/house/assets/images/logo.png" alt="Logo"></a>
					</figure>
				</div>
				<div class="col-md-6 col-sm-8">
					<nav id="site-nav" class="nav navbar-default">
						<ul class="nav navbar-nav">
							<li><a href="<%=path%>/index/index">新房</a></li>
							<li><a href="<%=path%>/index/newindex">最新房源</a></li>
							<li><a href="<%=path%>/house/single-property.jsp">特色服务</a></li>
							<li><a href="<%=path%>/index/newacrity">新闻资讯</a></li>
							<li><a href="<%=path%>/house/contact.jsp">联系我们</a></li>
						</ul>
					</nav>
				</div>
				<div class="col-md-3 col-sm-4">
					<div class="contact-in-header clearfix">
						<i class="fa fa-mobile"></i> <span> 致电我们 <br> <strong>111
								222 333 444</strong>
						</span>
					</div>
				</div>
			</div>
		</div>
	</header>
	<div class="main-slider-wrapper clearfix">
		<div id="main-slider">
			<div class="slide">
				<img src="<%=path%>/house/assets/images/slider/1.jpg" alt="Slide">
			</div>
			<div class="slide">
				<img src="<%=path%>/house/assets/images/slider/2.jpg" alt="Slide">
			</div>
			<div class="slide">
				<img src="<%=path%>/house/assets/images/slider/3.jpg" alt="Slide">
			</div>
			<div class="slide">
				<img src="<%=path%>/house/assets/images/slider/4.jpg" alt="Slide">
			</div>
		</div>
		<div id="slider-contents">
			<div class="container text-center">
				<div class="jumbotron">
					<h1>找到你的梦想家园</h1>
					<div class="contents clearfix">
						<p>如果你想设计一个充分利用你所爱的土地的独特地理和景观的新家园</p>
					</div>
					<a class="btn btn-warning btn-lg btn-3d" data-hover="我们的服务"
						href="#" role="button">我们的服务</a> <a
						class="btn btn-default btn-border btn-lg" href="#" role="button">价格</a>
				</div>
			</div>
		</div>
	</div>
	<div id="advance-search" class="main-page clearfix">
		<div class="container">
			<button class="btn top-btn">找到属于你的房子</button>
			<div></div>
			<input type="text" id="location" name="location"
				title="可根据省份名称，楼盘名称，风格查找"
				style="width: 400px; height: 45px; background-repeat: no-repeat; background-position: 50%; margin-left: 400px;"
				id="property-min-area">
			<button id="search" type="submit" onclick="return searchss();"
				class="btn btn-default btn-lg text-center">搜索 房产</button>
		</div>
	</div>
	<section id="home-property-listing">
		<header class="section-header home-section-header text-center">
			<div class="container">
				<h2 class="wow slideInRight">特色户型</h2>
				<p class="wow slideInLeft">
					合理的服务费用，让您住的安心<br>
				</p>
			</div>
		</header>
		<div class="container">
			<div class="row js-blog-list">
				<s:iterator var="c" value="#request.houselist">
					<div class="col-lg-4 col-sm-6 layout-item-wrap">
						<article class="property layout-item clearfix">
							<figure class="feature-image">
								<a class="clearfix zoom"
									href="<%=path%>/house/single-property.html"><img
									data-action="zoom"
									src="<%=path%>/house/assets/images/property/1.jpg"
									alt="Property Image"></a>
								<span class="btn btn-warning btn-sale">出售</span>
							</figure>
							<div class="property-contents clearfix">
								<header class="property-header clearfix">
									<div class="pull-left">
										<h6 class="entry-title">
											<a
												href="<%=path %>/index/houselist?houseid=${c.house_id }&buildingsid=${buildingsid}">${c.house_name }</a>
										</h6>
										<span class="property-location"><i
											class="fa fa-map-marker"></i> ${c.created_time }</span>
									</div>
									<button class="btn btn-default btn-price pull-right btn-3d">
										<strong>${c.unit_price }</strong>
									</button>
								</header>
								<div class="property-meta clearfix">
									<span><i class="fa fa-arrows-alt"></i> ${c.house_area }</span>

								</div>
								<div class="contents clearfix">
									<p>${c.house_intro }</p>
								</div>
							</div>
						</article>
					</div>
				</s:iterator>

			</div>
		</div>
	</section>
	<section id="announcement-section" class="text-center">
		<div class="container ">
			<h2 class="title wow slideInLeft">下载我们的最新应用</h2>
			<p class="wow slideInRight">
				让您实时掌握您的房屋动态<br>
			</p>
			<a class="btn" href="#"><img
				src="<%=path%>/house/assets/images/iso-btn.png" alt="ISO Button"></a>
			<a class="btn" href="#"><img
				src="<%=path%>/house/assets/images/playstore-btn.png"
				alt="Play Store Button"></a>
		</div>
	</section>
	<section id="home-features-section" class="text-center">
		<header class="section-header home-section-header">
			<div class="container">
				<h2 class="wow slideInRight">服务贴心</h2>
				<p class="wow slideInLeft">
					打造国内一流的房地产服务平台<br> 让您买的放心，住的安心
				</p>
			</div>
		</header>
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-xs-6">
					<div class="feature clearfix">
						<i class="icon"><img
							src="<%=path%>/house/assets/images/features/1.png"
							alt="Feature Icon"></i>
						<h6 class="entry-title">找二手房</h6>
						<p>真实二手房源，承诺真实在售，所见即真</p>
					</div>
				</div>
				<div class="col-md-3 col-xs-6">
					<div class="feature clearfix">
						<i class="icon"><img
							src="<%=path%>/house/assets/images/features/2.png"
							alt="Feature Icon"></i>
						<h6 class="entry-title">找新房</h6>
						<p>全新房屋，全新生活，给您满意的优质楼盘</p>
					</div>
				</div>
				<div class="col-md-3 col-xs-6">
					<div class="feature clearfix">
						<i class="icon"><img
							src="<%=path%>/house/assets/images/features/3.png"
							alt="Feature Icon"></i>
						<h6 class="entry-title">地图找房</h6>
						<p>为您精准定位，让周边房屋一览无余</p>
					</div>
				</div>
				<div class="col-md-3 col-xs-6">
					<div class="feature clearfix">
						<i class="icon"><img
							src="<%=path%>/house/assets/images/features/4.png"
							alt="Feature Icon"></i>
						<h6 class="entry-title">房屋估价</h6>
						<p>基于海量成交数据，帮您合理定价，预估市值</p>
					</div>
				</div>
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
							<a class="footer-logo" href="#"><img
								src="<%=path%>/house/assets/images/footer-logo.png"
								alt="Footer Logo"></a>
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
				<p class="copyright pull-left wow slideInRight">
					Copyright &copy; 2017.房产营销平台.<a target="_blank" href="#">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
				</p>
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
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="<%=path%>/house/assets/js/jquery.min.js"></script>
	<script src="<%=path%>/house/assets/js/jquery.migrate.js"></script>
	<script src="<%=path%>/house/assets/js/bootstrap.min.js"></script>
	<script src="<%=path%>/house/plugins/slick-nav/jquery.slicknav.min.js"></script>
	<script src="<%=path%>/house/plugins/slick/slick.min.js"></script>
	<script src="<%=path%>/house/plugins/jquery-ui/jquery-ui.min.js"></script>
	<script src="<%=path%>/house/plugins/tweetie/tweetie.js"></script>
	<script src="<%=path%>/house/plugins/forms/jquery.form.min.js"></script>
	<script src="<%=path%>/house/plugins/forms/jquery.validate.min.js"></script>
	<script src="<%=path%>/house/plugins/modernizr/modernizr.custom.js"></script>
	<script src="<%=path%>/house/plugins/wow/wow.min.js"></script>
	<script src="<%=path%>/house/plugins/zoom/zoom.js"></script>
	<script src="<%=path%>/house/plugins/mixitup/mixitup.min.js"></script>

	<script
		src="<%=path%>/house/plugins/whats-nearby/source/WhatsNearby.js"></script>
	<script src="<%=path%>/house/assets/js/theme.js"></script>
	<script>
		//var url = 'http://localhost:8080/RealEstate/index/more';
		/*初始化*/
		var counter = 0; /*计数器*/
		var pageStart = 0; /*offset*/
		var pageSize = 6; /*size*/
		/*首次加载*/
		// getData(pageStart, pageSize,url);
		/*监听加载更多*/
		/*  $('#js-load-more').click(function(){
		    counter ++;
		    pageStart = counter * pageSize;
		    getData(pageStart, pageSize,url);
		  }); */

		function searchss() {
			alert("Ss");
			$('.js-blog-list').html("");
			var locations = document.getElementById('location').value;
			var urls = 'http://localhost:8080/RealEstate/index/more?location='
					+ locations;
			getData(pageStart, pageSize, urls);
		}
		function getData(offset, size, url) {
			$
					.ajax({
						type : 'post',
						url : url,
						dataType : 'json',
						success : function(reponse) {
							var data = reponse.listbuildings;
							var sum = data.length;
							var result = '';

							/*如果剩下的记录数不够分页，就让分页数取剩下的记录数
							 * 例如分页数是5，只剩2条，则只取2条
							 */
							if (sum - offset < size) {
								size = sum - offset;
							}

							for (var i = offset; i < (offset + size); i++) {
								result += '<div class="col-lg-4 col-sm-6 layout-item-wrap">'
										+ '<article class="property layout-item clearfix">'
										+ '<figure class="feature-image">'
										+ '<a class="clearfix zoom" href="http://localhost:8080/RealEstate/house/single-property.html"><img data-action="zoom" src="http://localhost:8080/RealEstate/house/assets/images/property/1.jpg" alt="Property Image"></a>'
										+ '<span class="btn btn-warning btn-sale">出售</span>'
										+ '</figure>'
										+ '<div class="property-contents clearfix">'
										+ '<header class="property-header clearfix">'
										+ '<div class="pull-left">'
										+ '<h6 class="entry-title"><a href="http://localhost:8080/RealEstate/index/house?buildingsid='
										+ data[i].buildings_id
										+ '">'
										+ data[i].buildings_name
										+ '</a></h6>'
										+ '<span class="property-location"><i class="fa fa-map-marker"></i>'
										+ data[i].reception_address
										+ '</span>'
										+ '</div>'
										+ '<button class="btn btn-default btn-price pull-right btn-3d"><strong>'
										+ data[i].avg_price
										+ '</strong></button>'
										+ '</header>'
										+ '<div class="property-meta clearfix">'
										+ '<span><i class="fa fa-arrows-alt"></i>'
										+ data[i].building_area
										+ '</span>'
										+ '<span><i class="fa fa-bed"></i>'
										+ data[i].house_type
										+ '</span>'
										+ '<span><i class="fa fa-bathtub"></i>'
										+ data[i].total_rooms
										+ '</span>'
										+ '<span><i class="fa fa-cab"></i>'
										+ data[i].car_station
										+ '</span>'
										+ '</div>'
										+ '<div class="contents clearfix">'
										+ '<p></p>'
										+ '</div>'
										+ '</div>'
										+ '</article>' + '</div>';
							}

							$('.js-blog-list').append(result);

							/*隐藏more按钮*/
							if ((offset + size) >= sum) {
								$(".js-load-more").hide();
							} else {
								$(".js-load-more").show();
							}
						},

						error : function(xhr, type) {
							//alert('Ajax error!');
						}
					});
		}
	</script>
</body>
</html>
