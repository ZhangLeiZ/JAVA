<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   String path = request.getContextPath();
   //文件路径
   String filePath = request.getServletContext().getRealPath("/attached");
%>
<%@ taglib uri="/struts-tags" prefix="s" %>


<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>个人中心</title> 
    
    <link rel="stylesheet" href="<%=path %>/house/files/easyui/themes/default/easyui.css">
	<link rel="stylesheet" href="<%=path %>/house/files/easyui/themes/icon.css">
	<link href="<%=path %>/house/files/css/common.css" rel="stylesheet">
	<link href="<%=path %>/house/files/css/css.css" rel="stylesheet">
	<img src="files/js/countpv" width="0" height="0"><img src="files/js/Prick.do" width="0" height="0"><script type="text/javascript" async="" src="files/js/uv.min.js">SFUV.init({isNorth:_isNorth,bid:_bid,frameType:_sfuv_frameType,location:_sfuv_location,referrer:_sfuv_referrer,urlowner:_urlowner,realip:_realip,pageid:_pageid})</script><script type="text/javascript" async="" src="files/js/ga.js"></script><script type="text/javascript" async="" src="files/js/load.min.js">
	
    </script>
    <!-- 
    <script src="<%=path %>/house/files/js/jquery.min.js"></script>
	 -->
	<script src="<%=path %>/house/files/js/dhjs.js"></script>
	<script src="<%=path %>/house/files/js/Common.js"></script>
	<script src="<%=path %>/house/files/js/validation.js"></script>
	<script src="<%=path %>/house/files/js/tongji.js"></script>


    
    <script type="text/javascript">
        var clickState = true;
    </script> 
</head>
<body style="background: #efefef;"><img id="USERBEHAVIOR_IMG" src="files/js/w" width="0" height="0" style="display: none;">    
    <div class="box"></div> 
    <div class="coverdiv" style="height:100%"></div>
    
    <div style="display: block;" id="grayBg" class=""></div>
  
<link href="<%=path %>/house/files/js/navigation20141112.css" rel="stylesheet" type="text/css">

<script src="<%=path %>/house/files/css/newnav20141111.js"></script>

<link href="<%=path %>/house/files/css/user.css" rel="stylesheet" type="text/css">
<!--公共表头-->
<div class="con_top">
    <div class="us_inf">
        <div class="user_hi ml20">
            <div class="useImg flol">
            	<s:if test='#session.user.headicon!=null'>	
               	 	<img class="roundImage" src="http://localhost:8080/RealEstate/attached/${session.user.headicon}"/>						
				</s:if>
				<s:else>
					<img  src="<%=path %>/user/images/defaultHead.png"/>
				</s:else>
				<div class="imgBd"></div>
            </div>
            <div class="f18 flol ml20">Hi，亲爱的 <a id="pcmysf_B01_01" class="co21a" href="#">${session.user.user_nickname}</a>！</div>
        </div>
                
       <div >
            <div >
                <a  href="javascript:void(0)"></a>
                <br>
                <a  href="#"></a>
            </div>
            <div>
                <a  href="#"></a><br>
                <a></a>
            </div>
            <div>
                <a href="javascript:void(0)"></a><br>
                <a href="#"></a>
            </div>
            <div>
                <a href="javascript:void(0)"></a><br>
                <a href="#"></a>
            </div>
            <div >
                <a  href="javascript:void(0)"></a><br>
                <a href="#"></a>
            </div>
        </div>
    </div>
    <div class="clear"></div>
</div>

    <div class="content">


<style>
    dt:hover {
        cursor: pointer;
    }

    .subNav dt.catalog {
        background: #cccccc;
    }

    .subNav dd span.open {
        background: url(http://img.fang.com/newhousedata/images/My/Resource/Image/co_icon.gif) no-repeat;
    }

    .subNav dd span.close {
        background: url(http://img.fang.com/newhousedata/images/My/Resource/Image/co_icon.gif) no-repeat;
        background-position: 0 -43px;
    }

    /*#btnGoComment {
        cursor: pointer;
    }*/

    #imgClose {
        cursor: pointer;
    }

    #aBlog {
        cursor: pointer;
    }
</style>
<link href="<%=path %>/house/files/js/blognotice.css" rel="stylesheet">
<!--
<script src="<%=path %>/house/files/js/jquery.min(1).js"></script>
-->
<div class="subNav">
    <dl>
        
        <dt id="dt_00" class="catalog" >
            <a id="" style="text-decoration: none; color: #333" href="<%=path %>/index/index">首页
            </a>
        </dt>
        <dt id="dt_01" class="catalog" style="cursor: default">
             <a href="<%=path %>/history/list" style="text-decoration: none; color: #333">看房清单
            </a>
        </dt>
        <dt id="dt_01" class="catalog" style="cursor: default">
             <a href="<%=path %>/appointment/listApp" style="text-decoration: none; color: #333">预约历史
            </a>
        </dt>
        <dt id="dt_01" class="catalog" style="cursor: default">
             <a href="<%=path %>/like/list" style="text-decoration: none; color: #333">点赞详情
            </a>
        </dt>
        <dt id="dt_01" class="catalog" style="cursor: default">
             <a href="<%=path %>/comment/listCom" style="text-decoration: none; color: #333">评价记录
            </a>
        </dt> 
         <dt id="dt_01" class="catalog" style="cursor: default">
             <a href="<%=path %>/message/listMes" style="text-decoration: none; color: #333">我的留言
            </a>
        </dt> 
        <dt id="dt_01" class="catalog" style="cursor: default">
             <a href="<%=path %>/user/skipUserInfo" style="text-decoration: none; color: #333">个人资料
            </a>
        </dt>
        <dt id="dt_01" class="catalog" style="cursor: default">
             <a href="<%=path %>/user/skipModifyPsd" style="text-decoration: none; color: #333">修改密码
            </a>
        </dt>
        <dt id="dt_01" class="catalog" style="cursor: default">
             <a  href="<%=path %>/user/safeExit" style="text-decoration: none; color: #333">安全退出
            </a>
        </dt>
        
        
    </dl>
    
    <div class="telBox">
        <div class="tit">客服电话</div>
        <ul class="telList">
            <li>
                <p>
                    <span>1</span>
                    个人用户客服电话：
                    <br>
                    <span style="background: none"></span>
                    <strong>123-456-6888</strong>
                    
                    <br>
                    <span style="background: none"></span>
                    （9:00-18:00）
                </p>
            </li>
            <li>
                <p>
                    <span>2</span>
                    经纪人客服电话：
                    <br>
                    <span style="background: none"></span>
                    <strong>123-456-6888</strong>
                    <br>
                    <span style="background: none"></span>
                    （9:00-18:00）
                </p>
            </li>
        </ul>
    </div>
</div>

<script src="<%=path %>files/js/WebPerformance.js"></script>
<script>
    SFPerformance.init({ bID: '10' });
</script>
        <div id="defaultright">   
<script>
    //left样式空值
    SetLeftStyle("个人资料", 'dt');
</script>
<!-- 
<script src="<%=path %>/house/files/js/jquery.min(1).js"></script>
<script src="<%=path %>/house/files/js/jquery.uploadify.js"></script>
 -->
<link href="<%=path %>/house/files/js/uploadify.css" rel="stylesheet">
<script src="<%=path %>/house/files/js/validation(1).js"></script>
<script src="<%=path %>/house/files/js/jquery.cookie.js"></script>

<style>
    .file {
        position: absolute;
        filter: alpha(opacity:0);
        opacity: 0;
    }
   
   .formList .tip {
        float: left;
        padding: 5px 15px;
        line-height: 24px;
        border: 1px solid #ffffff;
        background: #ffffff;
        color: #cccccc;
        margin-left: 15px;
        font-size: 12px;
    }
   
</style>

<script src="<%=path %>/house/files/js/city.js"></script>
<script src="<%=path %>/house/files/js/Fun.js"></script>


<div class="rightCon">
    
    <jsp:include page="/WEB-INF/user/like.jsp" flush="true"></jsp:include>
</div>


<script id="__vb" src="<%=path %>/house/files/js/_vb.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=path %>/house/files/js/_ub.js"></script>


        </div>
        	<div style="clear: both"></div>
   	    </div>
    <script src="<%=path %>/house/files/js/support.dialogbox.js"></script>
    <script type="text/javascript" src="<%=path %>/house/files/js/clickm.js"></script>
    <script type="text/javascript">
        if (clickState)
        Clickstat.eventAdd(window, 'load', function (e) {
            Clickstat.batchEvent('pcmysf_', '');
    });

</script>


</body></html>