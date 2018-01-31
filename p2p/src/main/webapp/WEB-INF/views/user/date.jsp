<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String path = request.getContextPath();
%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>关于我们-普金资本-为用户提供详尽安全可靠的投资理财信息，网络贷款、融资服务</title>
    <meta name="keywords" content="拉拉财富，互联网理财，P2P理财，网络理财，网络贷款">
    <meta name="description" content="普金资本是目前国内拥有国资系背景的P2P理财平台，为P2P网贷和理财用户提供安全、高效的互联网金融理财服务。普金资本，以“国资系、可信赖”的企业理念，为理财用户提供安全稳定的网上理财通道，快速实现资金周转，实现财富稳定增长。">
    <link rel="stylesheet" href="<%=path%>/static/resources/front/v01/src/css/public.css"/>
    <link rel="stylesheet" href="<%=path%>/static/resources/front/v01/src/css/about.css"/>

    <link rel="icon" href="<%=path%>/static/resources/front/v01/src/images/logo_title.jpg" type="image/x-icon" />
<body onhashchange="hashChange()">
<%@include file="../master/top.jsp" %>
<%@include file="../master/head.jsp" %>
<div class="about cl">
    <div class="about-left">
        <div class="about-left-nav">
            <div id="animateDiv" class="animateDiv" style="height: 175px;">
                <ul id="animateUl" class="sub-nav"><li class="xxpl"><a href="javaScript:void(0);" onclick="animate1()" class="icon-about about-xxpl">信息披露</a></li><li class="cyjg"><a href="#cyjg" class="icon-about about-cyjg">从业机构信息</a></li><li class="ptyy active"><a href="#ptyy" class="icon-about about-ptyy">平台运营信息</a></li><li class="jkxm"><a href="#jkxm" class="icon-about about-jkxm">借款项目信息</a></li></ul>
            </div>
            <ul class="sub-nav">
                <li><div class="hr"></div></li>
                <li id="gd"><a href="#gdbj" class="icon-about about-gudong">股东背景</a></li>
                <li><a href="#gsjj" class="icon-about about-jianjie">公司简介</a></li>
                <li><a href="#ptzz" class="icon-about about-zizhi">平台资质</a></li>
                <!-- <li><a href="#gltd" class="icon-about about-guanli">管理团队</a></li> -->
                <li><a href="#gwtd" class="icon-about about-guwen">顾问团队</a></li>
                <li><a href="#gsdt" class="icon-about about-dongtai">公司动态</a></li>
                <li><a href="#ptgg" class="icon-about about-gonggao">平台公告</a></li>
                <li><a href="#zxns" class="icon-about about-zhaopin">招贤纳士</a></li>
                <li><a href="#lxwm" class="icon-about about-lianxi">联系我们</a></li>
            </ul>
        </div>
    </div>
    <!-- begin -->
    <div class="about-right">
        <div class="about-right-nav">
            <div class="sub-a-nav">
                <a href="javascript:void(0);" class="" id="sssj">实时数据</a>
                <a href="javascript:void(0);" id="yybg" class="active">运营报告</a>
            </div>
            <em class="em-line" style="left: 120px;"></em>
        </div>
        <div class="about-content" id="sssjDiv" style="display: none;">
            <div class="btnDiv">
                撮合交易总额（元）
            </div>
            <div class="moneyDiv"><div class="item_Div">3</div><div class="marginLeft"></div><div class="item_Div">4</div><div class="marginLeft">,</div><div class="item_Div">2</div><div class="marginLeft"></div><div class="item_Div">4</div><div class="marginLeft"></div><div class="item_Div">8</div><div class="marginLeft">,</div><div class="item_Div">3</div><div class="marginLeft"></div><div class="item_Div">4</div><div class="marginLeft"></div><div class="item_Div">9</div><div class="marginLeft">.</div><div class="item_Div">0</div><div class="marginLeft"></div><div class="item_Div">0</div><div class="marginLeft"></div></div>
            <div class="btnDiv">平台数据总览</div>
            <div class="sjList sjList-1">
                <div class="item">
                    <div class="item-icon icon-dealNumber"></div>
                    <div class="itemText">交易笔数（笔）</div>
                    <div class="itemSJ" id="dealNumber">2,041</div>
                </div>
                <div class="item">
                    <div class="item-icon icon-repayAmount"></div>
                    <div class="itemText">已还本金（元）</div>
                    <div class="itemSJ" id="repayAmount">24,401,677.26</div>
                </div>
                <div class="item">
                    <div class="item-icon icon-unRepayAmount"></div>
                    <div class="itemText">待还本金（元）</div>
                    <div class="itemSJ" id="unRepayAmount">10,702,886.00</div>
                </div>
                <div class="item">
                    <div class="item-icon icon-unRepayNumber"></div>
                    <div class="itemText">待还笔数（笔）</div>
                    <div class="itemSJ" id="unRepayNumber">27</div>
                </div>
                <div class="item">
                    <div class="item-icon icon-hasInteres"></div>
                    <div class="itemText">为用户创造的收益（元）</div>
                    <div class="itemSJ" id="hasInterest">657,602.00</div>
                </div>
                <div class="item">
                    <div class="item-icon icon-compensatoryMoney"></div>
                    <div class="itemText">累计代偿金额（元）</div>
                    <div class="itemSJ" id="compensatoryMoney">0.00</div>
                </div>
                <div class="item">
                    <div class="item-icon icon-compensatoryNumber"></div>
                    <div class="itemText">累计代偿笔数（笔）</div>
                    <div class="itemSJ" id="compensatoryNumber">0</div>
                </div>
                <div class="item">
                    <div class="item-icon icon-overdueMoney"></div>
                    <div class="itemText">逾期金额（元）</div>
                    <div class="itemSJ" id="overdueMoney">12.26</div>
                </div>
                <div class="item">
                    <div class="item-icon icon-overdueNumber"></div>
                    <div class="itemText">逾期笔数（笔）</div>
                    <div class="itemSJ" id="overdueNumber">3</div>
                </div>
                <div class="item">
                    <div class="item-icon icon-overtimeNumber"></div>
                    <div class="itemText">逾期90天以上笔数（笔）</div>
                    <div class="itemSJ" id="overtimeNumber">0</div>
                </div>
                <div class="item">
                    <div class="item-icon icon-overtimeMoney"></div>
                    <div class="itemText">逾期90天以上金额（元）</div>
                    <div class="itemSJ" id="overtimeMoney">0.00</div>
                </div>
            </div>
            <div class="btnDiv btnDiv-P">平台用户数据</div>
            <div class="sjList sjList-2">
                <div class="item-yh">
                    <i class="icon-userTotal"></i>
                    <div class="itemText">注册用户数（人）</div>
                    <div class="itemSJ color-b" id="userTotal">11,241</div>
                </div>
                <div class="item-yh">
                    <i class="icon-investorCount"></i>
                    <div class="itemText">累计出借人数量（人）</div>
                    <div class="itemSJ color-g" id="investorCount">448</div>
                </div>
                <div class="item-yh">
                    <i class="icon-borrowerCount"></i>
                    <div class="itemText">累计借款人数量（人）</div>
                    <div class="itemSJ color-y" id="borrowerCount">35</div>
                </div>
                <div class="item-yh">
                    <i class="icon-avgUserInvest"></i>
                    <div class="itemText">人均累计投资金额（元）</div>
                    <div class="itemSJ color-b" id="avgUserInvest">76,447.21</div>
                </div>
                <div class="item-yh">
                    <i class="icon-avgInvest"></i>
                    <div class="itemText">笔均投资额（元）</div>
                    <div class="itemSJ color-g" id="avgInvest">16,780.18</div>
                </div>
                <div class="item-yh">
                    <i class="icon-investorNew"></i>
                    <div class="itemText">当期出借人数量（人）</div>
                    <div class="itemSJ color-y" id="investorNew">145</div>
                </div>
                <div class="item-yh">
                    <i class="icon-borrowerNew"></i>
                    <div class="itemText">当期借款人数量（人）</div>
                    <div class="itemSJ color-b" id="borrowerNew">19</div>
                </div>
                <div class="item-yh">
                    <i class="icon-AssociationNumber"></i>
                    <div class="itemText">关联关系借款笔数（笔）</div>
                    <div class="itemSJ color-g" id="AssociationNumber">0</div>
                </div>
                <div class="item-yh">
                    <i class="icon-AssociationSum"></i>
                    <div class="itemText">关联关系借款余额（元）</div>
                    <div class="itemSJ color-y" id="AssociationSum">0.00</div>
                </div>
                <div class="item-yh">
                    <i class="icon-borrowerPer"></i>
                    <div class="itemText">前十大借款代还金额占比（%）</div>
                    <div class="itemSJ color-b" id="borrowerPer">43.08</div>
                </div>
                <div class="item-yh">
                    <i class="icon-bigBorrowerPer"></i>
                    <div class="itemText">最大借款代还金额占比（%）</div>
                    <div class="itemSJ color-g" id="bigBorrowerPer">10.57</div>
                </div>
            </div>
        </div>
        <div class="about-content" id="yybgDiv" style="display: block;">
            <div class="tableDiv"><a href="http://pujinziben.com/upload/operatereport/front/2018/1/20180103141623751.pdf" download="">
                <img class="yybgImg" alt="" src="../upload/operatereport/front/2018/1/20180103141607653.jpg"></a><a href="https://www.pujinziben.com:443/upload/operatereport/front/2017/12/20171206145349608.pdf" download=""><img class="yybgImg" alt="" src="../upload/operatereport/front/2017/12/20171206145342235.jpg"></a><a href="http://pujinziben.com/upload/operatereport/front/2017/11/20171103084426675.pdf" download=""><img class="yybgImg" alt="" src="http://www.pujinziben.com/upload/operatereport/front/2017/11/20171103084409964.jpg"></a><a href="http://www.pujinziben.com/upload/operatereport/front/2017/10/20171010103911597.pdf" download=""><img class="yybgImg" alt="" src="http://www.pujinziben.com/upload/operatereport/front/2017/10/20171010103706853.jpg"></a><a href="http://www.pujinziben.com/upload/operatereport/front/2017/9/20170902163654022.pdf" download=""><img class="yybgImg" alt="" src="http://www.pujinziben.com/upload/operatereport/front/2017/9/20170902163618853.jpg"></a><a href="../upload/operatereport/front/2017/8/20170802115615736.pdf" download=""><img class="yybgImg" alt="" src="http://www.pujinziben.com/upload/operatereport/front/2017/8/20170802115538445.jpg"></a><a href="https://pujinziben.com/upload/yybg/201707041659007394.pdf" download=""><img class="yybgImg" alt="" src="https://pujinziben.com/upload/yybg/201707041658181221.png"></a><a href="https://www.pujinziben.com/upload/yybg/201706021854322124.pdf" download=""><img class="yybgImg" alt="" src="https://pujinziben.com:8443/upload/yybg/201706021848519136.jpg"></a><a href="https://www.pujinziben.com:8443/upload/yybg/201705050916342143.pdf" download=""><img class="yybgImg" alt="" src="https://www.pujinziben.com:8443/upload/yybg/201705050915048087.jpg"></a><a href="https://www.pujinziben.com/upload/yybg/201704101141308789.pdf" download=""><img class="yybgImg" alt="" src="https://www.pujinziben.com/upload/yybg/201704101141172039.png"></a><a href="http://www.pujinziben.com/upload/yybg/201704061519519851.pdf" download=""><img class="yybgImg" alt="" src="http://www.pujinziben.com/upload/yybg/20170406151936564.jpg"></a><a href="http://www.pujinziben.com/upload/yybg/201704101103162901.pdf" download=""><img class="yybgImg" alt="" src="http://pujinziben.com/upload/yybg/201702201718479704.jpg"></a></div>
        </div></div>
    <!-- end -->
</div>
<%@include file="../master/foot.jsp" %>
<!--[if lt IE 9]>
<script src="<%=path %>/static/resources/front/v01/src/libs/json2.js"></script>
<![endif]-->
<script src="//hm.baidu.com/hm.js?3c8ecbfa472e76b0340d7a701a04197e"></script>
<script type="text/javascript" src="<%=path %>/static/resources/front/v01/src/libs/jquery.js"></script>
<script type="text/javascript" src="<%=path %>/static/resources/front/v01/src/libs/public.js"></script>
<!-- 客服QQ -->
<script charset="utf-8" type="text/javascript" src="http://wpa.b.qq.com/cgi/wpa.php"></script>
<script type="text/javascript" src="<%=path %>/static/resources/front/v01/src/libs/countUp.min.js"></script>
<script type="text/javascript" src="<%=path %>/static/resources/front/v01/scripts/about.js"></script>

</body>
</html>

