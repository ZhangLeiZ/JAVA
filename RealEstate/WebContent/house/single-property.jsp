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

<title>房地产营销平台</title>

<!-- 房产计算器 -->

<link rel="stylesheet" href="<%=path %>/Css/Lcss/Jisuanqi/css/index.css">
<script src="<%=path %>/Css/Lcss/Jisuanqi/js/jquery-2.2.0.min.js"></script>
<script src="<%=path %>/Css/Lcss/Jisuanqi/js/index.min.js"></script>




<link
	href="<%=path%>/house/https://fonts.googleapis.com/css?family=Montserrat:400,700|Poppins:400,600"
	rel="stylesheet">

<link rel="shortcut icon"
	href="<%=path%>/house/assets/images/favicon.png">
<link rel="stylesheet" href="<%=path%>/Css/sweetalert.css" />
<script type="text/javascript" src="<%=path%>/Js/sweetalert-dev.js"></script>
<link
	href="<%=path%>/house/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="<%=path%>/house/plugins/slick/slick.css" rel="stylesheet">
<link href="<%=path%>/house/plugins/slick-nav/slicknav.css"
	rel="stylesheet">
<link href="<%=path%>/house/plugins/wow/animate.css" rel="stylesheet">
<link href="<%=path%>/house/assets/css/bootstrap.css" rel="stylesheet">
<link href="<%=path%>/house/assets/css/theme.css" rel="stylesheet">

<link href="<%=path%>/assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="<%=path%>/assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="<%=path%>/assets/css/ace.min.css" />
<link rel="stylesheet" href="<%=path%>/assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="<%=path%>/assets/css/ace-skins.min.css" />

<style type="text/css">
body, html {
	width: 100%;
	height: 100%;
	margin: 0;
	font-family: "微软雅黑";
}

#allmap {
	width: 100%;
	height: 500px;
}

p {
	margin-left: 5px;
	font-size: 14px;
}
</style>

<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&ak=PQkrfSzjE6GXYZReYsHPtKU92Gx3mOfR"></script>
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
							<li><a href="<%=path%>/house/single-property.jsp">新闻咨询</a></li>
							<li><a href="<%=path%>/index/newacrity">新闻咨询</a></li>
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
	<div id="property-single">
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
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-7">
					<section class="property-meta-wrapper common">
						<h3 class="entry-title">${buildings.buildings_name }</h3>
						<div class="property-single-meta">
							<ul class="clearfix">
								<li><span>物业面积 :</span> ${buildings.building_area }</li>
								<li><span>所属区域 :</span> ${buildings.buildings_area }</li>
								<li><span>房源类型 :</span> ${buildings.house_type }</li>
								<li><span>物业费 :</span>${buildings.property_fee }/月</li>
								<li><span>车库 :</span> ${buildings.car_station }</li>
								<li><span>建成年份 :</span> ${buildings.created_time }</li>
								<li><span>价格 :</span> ${buildings.avg_price }</li>
								<li><span>地址 :</span> ${buildings.buildings_address }</li>
							</ul>
						</div>
					</section>
					<section class="property-contents common">
						<div class="entry-title clearfix">
							<h4 class="pull-left">描述</h4>
							<a class="pull-right print-btn"
								href="<%=path%>/house/javascript:window.print()">打印此属性 <i
								class="fa fa-print"></i></a>
						</div>
						<p>${buildings.buildings_intro }</p>
					</section>
					<section class="property-single-features common clearfix">
						<h4 class="entry-title">物业特点</h4>
						<ul class="property-single-features-list clearfix">
							<li>空调</li>
							<li>无线电视</li>
							<li>私人游泳池</li>
							<li>停车场</li>
							<li>婴儿床</li>
							<li>电梯</li>
							<li>有线电视</li>
							<li>停车场</li>
							<li>独立浴室</li>
							<li>办公室/书房</li>
							<li>空调</li>
							<li>无线网络</li>
						</ul>
					</section>
					<section class="property-video common">
						<h4 class="entry-title">地图浏览</h4>
						<div id="allmap"></div>
					</section>

					<section class="property-agent common">
						<h4 class="entry-title">联系代理</h4>
						<div class="row">
							<div class="col-lg-7" id="emp"></div>

							<div class="col-lg-5">
								<div id="claee" class="btn btn-warning">更换代理</div>
								<div class="agent-contact-form">
									<form id="agent-form"
										action="<%=path%>/appointment/addAppointment"
										class="agent-form" method="post">
										<input type="hidden" name="employee.employee_id"
											value="${employeemap.employee_id }"> <input
											type="hidden" name="user.user_id"
											value="${session.user.user_id }"> <input
											type="hidden" name="house.house_id" value="${house.house_id}">
										<input type="hidden" name="appointment.appointment_id">
										<input type="text" name="user.user_name" placeholder="姓名"
											class="required" required="required"> <input
											type="text" name="user.user_phone" placeholder="手机号码"
											onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this)"
											onblur="this.v();" maxlength="11" class="required"
											required="required"> 预约看房时间：<input
											name="appointment.app_arrive_time" class="easyui-datetimebox"
											required="required" /><br />
										<br />
										<br />
										<s:if test="#session.user==null">
											<button class="btn btn-default btn-lg btn-3d"
												disabled="disabled" type="submit" data-hover="提交预约">登录后才能预约哦</button>
										</s:if>
										<s:else>
											<button class="btn btn-default btn-lg btn-3d" type="submit"
												data-hover="提交预约">预约</button>
										</s:else>
										<div class="error-container"></div>
										<div class="message-container"></div>
									</form>
								</div>
							</div>

						</div>
					</section>

					<section class="property-video common">
						<h4 class="entry-title">评论</h4>
						<div class="widget-body">
							<div class="widget-main no-padding">
								<div class="dialogs" id="activity"></div>
							</div>
						</div>

						<div class="form-actions">
							<div class="input-group">

								<textarea name="comment.comment_content" id="comment"
									class="form-control" rows="6" required="required"
									placeholder="请发表评论..."></textarea>
								<span class="input-group-btn"> <s:if
										test="#session.user==null">
										<button class="btn btn-sm btn-info no-radius" type="submit"
											disabled="disabled">
											<i class="icon-share-alt"></i>登入后评论
										</button>
									</s:if> <s:else>
										<button class="btn btn-sm btn-info no-radius" id="send"
											type="submit">
											<i class="icon-share-alt"></i>发送
										</button>
									</s:else>
								</span>
							</div>
						</div>

					</section>
				</div>

				<div class="col-lg-4 col-md-5">
					<div id="property-sidebar">
						<section class="widget adv-search-widget clearfix">
							<h5 class="title hide">搜索你的房子</h5>
							<div id="advance-search-widget" class="clearfix">
							
								  <div >
								       
								        
								        <h2 align="center">贷款计算器</h2>
								        
								        <div >
								            <div id="contact" >
								                <form id="myform" action="#" style="display: block">
								                    <div >
								                        <div >
								                            <h5>请您填写1:</h5>
								                            贷款类别:
								                            <label><input type="radio" name="dktype" checked value="0"/>商业贷款</label>
								                            <label><input type="radio" name="dktype" value="1"/>公积金贷款</label>
								                            <label><input type="radio" name="dktype" value="2"/>组合型贷款</label>
								                        </div>
								                        <div id="jsfs">
								                            <h6>计算方式:</h6>
								                            <dl id="way">
								                                <dt><label class="count"><input type="radio" name="jsfs" value="0"
								                                                                checked/>根据面积、单价计算</label></dt>
								                                <dd style="display: block">
								                                    <label>单价:</label><input type="text" name="price">元/平米<br>
								                                    <label>面积:</label><input type="text" name="area">平方米<br>
								                                    <label>按揭成数</label>
								                                    <select class="form-control" name="ajcs">
								                                        <option value="70" selected>7成</option>
								                                        <option value="80">8成</option>
								                                        <option value="90">9成</option>
								                                    </select>
								                                </dd>
								                                <dt><label><input type="radio" value="1" name="jsfs"/>根据贷款总额计算</label></dt>
								                                <dd>
								                                    <label>贷款总额：<input type="text" name="dkze">元</label>
								                                </dd>
								                            </dl>
								                            <label>按揭年数</label>
								                            <select class="form-control" name="ajns">
								                                <option value="120" selected>10年（120期）</option>
								                                <option value="240">20年（240期）</option>
								                                <option value="360">30年（360期）</option>
								                            </select><br>
								                        </div>
								                        <div id="dkll">
								                            <label>贷款利率</label>
								                            <select name="dkll">
								                                <option value="0">12年6月8日基准利率</option>
								                                <option value="1">12年7月6日基准利率</option>
								                                <option value="2">14年11月22日基准利率</option>
								                                <option value="3" selected>15年03月01日基准利率</option>
								                            </select><br>
								                            <input class="percent" name="dkll" type="text" value="6.80"/>%
								                        </div>
								                        <div id="method">
								                         		   还款方式:
								                            <label><input type="radio" name="bb" checked/>等额本息</label>
								                            <label><input type="radio" name="bb"/>等额本金<br></label>
								                        </div>
								                        <input type="button" name="startCalc" class="start" value="开始计算"/>
								                        <input type="reset" class="again" value="重新填写"/>
								                    </div>
								                    <div >
								                        <h5>查看结果:</h5>
								                        <label>房款总额:</label><input type="text" name="fousex" readonly/>元<br>
								                        <label>贷款总额:</label><input type="text" name="loan" readonly/>元<br>
								                        <label>还款总额:</label><input type="text" name="refund" readonly/>元<br>
								                        <label>支付利息款:</label><input type="text" name="pay" readonly/>元<br>
								                        <label>首期付款:</label><input type="text" name="first" readonly/>元<br>
								                        <label>贷款月数:</label><input type="text" name="month" readonly/><br>
								                        <label>月均还款:</label><input type="text" name="average" readonly/>元<br>
								                        <p>*以上结果仅供参考</p>
								                        
								                    </div>
								                </form>
								            </div>
								           
								        </div>
								    </div>
								 
							
							
							</div>
						</section>
						<section class="widget recent-properties clearfix">
							<h5 class="title">最近的房产</h5>
							<div class="property clearfix">
								<a href="#" class="feature-image zoom"><img
									data-action="zoom"
									src="<%=path%>/house/assets/images/property/1.jpg"
									alt="Property Image"></a>
								<div class="property-contents">
									<h6 class="entry-title">
										<a href="<%=path%>/house/single-property.html">豪华家庭住宅</a>
									</h6>
									<span class="btn-price">￥3890000</span>
									<div class="property-meta clearfix">
										<span><i class="fa fa-arrows-alt"></i> 3060 平方米</span> <span><i
											class="fa fa-bed"></i> 3 床</span> <span><i
											class="fa fa-bathtub"></i> 3 卧室</span> <span><i
											class="fa fa-cab"></i> 是</span>
									</div>
								</div>
							</div>
							<div class="property clearfix">
								<a href="#" class="feature-image zoom"><img
									data-action="zoom"
									src="<%=path%>/house/assets/images/property/2.jpg"
									alt="Property Image"></a>
								<div class="property-contents">
									<h6 class="entry-title">
										<a href="<%=path%>/house/single-property.html">豪华家庭住宅</a>
									</h6>
									<span class="btn-price">￥3890000</span>
									<div class="property-meta clearfix">
										<span><i class="fa fa-arrows-alt"></i> 3060 平方米</span> <span><i
											class="fa fa-bed"></i> 3 床</span> <span><i
											class="fa fa-bathtub"></i> 3 卧室</span> <span><i
											class="fa fa-cab"></i> 是</span>
									</div>
								</div>
							</div>
							<div class="property clearfix">
								<a href="#" class="feature-image zoom"><img
									data-action="zoom"
									src="<%=path%>/house/assets/images/property/3.jpg"
									alt="Property Image"></a>
								<div class="property-contents">
									<h6 class="entry-title">
										<a href="<%=path%>/house/single-property.html">豪华家庭住宅</a>
									</h6>
									<span class="btn-price">￥3890000</span>
									<div class="property-meta clearfix">
										<span><i class="fa fa-arrows-alt"></i> 3060 平方米</span> <span><i
											class="fa fa-bed"></i> 3 床</span> <span><i
											class="fa fa-bathtub"></i> 3 卧室</span> <span><i
											class="fa fa-cab"></i> 是</span>
									</div>
								</div>
							</div>
						</section>
						
						


						<section class="widget property-taxonomies clearfix">
							<h4 class="title">我要留言</h4>
							<div class="agent-contact-form">
								<form id="agent-form" action="<%=path%>/message/addMessage"
									onsubmit="return checkContent()" class="agent-form"
									method="post">
									<input type="hidden" name="buildings.buildings_id"
										value="${buildings.buildings_id }"> <input
										type="hidden" name="user.user_id"
										value="${session.user.user_id }"> <input type="hidden"
										name="message.message_id">
									<textarea name="message.message_content" id="message_content"
										cols="30" rows="8" class="required" placeholder="请输入留言内容"
										required="required"></textarea>
									<s:if test="#session.user==null">
										<button type="submit" disabled="disabled"
											class="btn btn-default btn-lg btn-3d" data-hover="提交留言">登录后才能留言哦</button>
									</s:if>
									<s:else>
										<button type="submit" class="btn btn-default btn-lg btn-3d"
											data-hover="提交留言">留言</button>
									</s:else>
									<div class="error-container"></div>
									<div class="message-container"></div>
								</form>
							</div>
						</section>
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
							<a class="footer-logo" href="#"><img
								src="<%=path%>/house/assets/images/footer-logo.png"
								alt="Footer Logo"></a>
							<p>一流的房屋销售平台，全新的楼盘户型，合理的价位，让您买的放心，住的安心</p>
							<ul class="social-icons clearfix">
								<li><a href="#" o><i class="fa fa-twitter"></i></a></li>
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
					Copyright &copy; 2017.房产营销平台.<a target="_blank"
						href="<%=path%>/house/http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
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
	<script src="<%=path%>/house/files/js/index.js"></script>
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

	<!-- EasyUI日期框 -->
	<script src="<%=path%>/house/files/easyui/jquery.easyui.min.js"></script>
	<script src="<%=path%>/user/easyui/locale/easyui-lang-zh_CN.js"></script>
	<link rel="stylesheet"
		href="<%=path%>/house/files/easyui/themes/default/easyui.css">
	<link rel="stylesheet"
		href="<%=path%>/house/files/easyui/themes/icon.css">

	<script src="<%=path%>/user/js/user.js"></script>

	<script>
		$(document)
				.ready(
						function() {
							var urls = 'http://localhost:8080/RealEstate/index/moress';
							getcomment(urls);

							var buildingsid = "${buildings.buildings_id}";
							getacrite(buildingsid);

							$('#send')
									.click(
											function() {

												var commtie = $('#comment')
														.val();
												var url = "http://localhost:8080/RealEstate/index/comment?commtie="
														+ commtie;
												getcomment(url);
											});

							$('#claee').click(function() {
								var buildingsid = "${buildings.buildings_id}";
								getacrite(buildingsid);
							});
						});

		function getcomment(url) {
			$
					.ajax({
						url : url,
						type : "post",
						dataType : "json",
						success : function(response) {
							var data = response.commentList;
							var restry = "";
							for (var i = 0; i < data.length; i++) {
								restry += '<div class="itemdiv dialogdiv">'
										+ '<div class="user">'
										+ '<img alt="头像" src="http://localhost:8080/RealEstate/attached/'+data[i].user.headicon+'"/>'
										+ '</div>'
										+ '<div class="body">'
										+ '<div class="time">'
										+ '<i class="icon-time"></i>'
										+ '<span class="green">'
										+ data[i].comment_time
										+ '</span>'
										+ '</div>'
										+ '<div class="name">'
										+ '<a href="#">'
										+ data[i].user.user_name
										+ '</a>'
										+ '</div>'
										+ '<div class="text">'
										+ data[i].comment_content
										+ '</div>'
										+ '<div class="tools">'
										+ '<a href="#" class="btn btn-minier btn-info">'
										+ '<i class="icon-only icon-share-alt"></i>'
										+ '</a>' + '</div>' + '</div>'
										+ '</div>';
							}
							$('#activity').html(restry);
						},
						error : function() {
							//alert("error");
						}
					});
		};

		function getacrite(buildingsid) {
			$
					.ajax({
						url : "http://localhost:8080/RealEstate/index/renewal?buildingsid="
								+ buildingsid,
						type : "post",
						dataType : "json",
						success : function(response) {
							var data = response.employeemap;
							var resty = '<div class="agent-box clearfix">'
									+ '<div class="row">'
									+ '<div class="col-sm-5 col-xs-5">'
									+ '<a class="agent-image"><img src="http://localhost:8080/RealEstate/'+data.headicon+'" alt="头像"></a>'
									+ '</div>'
									+ '<div class="col-sm-7 col-xs-7">'
									+ '<cite class="agent-name">'
									+ data.employee_name
									+ '</cite>'
									+ '<small class="designation"> 房产营销平台 </small>'
									+ '<ul class="agent-social-handlers clearfix">'
									+ ' <li><i class="fa fa-facebook-square"></i>'
									+ data.employee_qq
									+ '</a></li>'
									+ '<li><i class="fa fa-facebook-square"></i>'
									+ data.employee_wechat
									+ '</a></li>'
									+ '<li><i class="fa fa-pinterest-square"></i>'
									+ data.employee_email
									+ '</a></li>'
									+ '</ul>'
									+

									'</div>'
									+ '</div>'
									+ '<p>'
									+ data.employee_intro
									+ '</p>'
									+ '</div>'
									+ '<div class="widget address-widget clearfix">'
									+ '<ul>'
									+ '<li><i class="fa fa-map-marker"></i>'
									+ data.agency.agency_address
									+ '</li>'
									+ '<li><i class="fa fa-phone"></i>'
									+ data.agency.agency_tel
									+ '</li>'
									+ '<li><i class="fa fa-envelope"></i>'
									+ data.agency.agency_email
									+ '</li>'
									+ '<li><i class="fa fa-fax"></i> '
									+ data.agency.agency_tel
									+ '</li>'
									+ '<li><i class="fa fa-clock-o"></i>'
									+ data.agency.created_time
									+ '</li>'
									+ '</ul>' + '</div>';
							$('#emp').html(resty);
						},
						error : function() {
							//alert("error");
						}
					});
		}
	</script>
</body>
</html>
