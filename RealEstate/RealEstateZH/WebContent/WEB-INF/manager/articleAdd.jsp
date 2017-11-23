<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String htmlData = request.getParameter("article_content") != null ? request.getParameter("article_content") : "";
%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<%!
private String htmlspecialchars(String str) {
	str = str.replaceAll("&", "&amp;");
	str = str.replaceAll("<", "&lt;");
	str = str.replaceAll(">", "&gt;");
	str = str.replaceAll("\"", "&quot;");
	return str;
}
%>
<!DOCTYPE html>
<head>
<title>文章信息</title>
<meta name="viewport"
	content="width=device-width, init】4
3 ewsa ial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- bootstrap-css -->
<link rel="stylesheet" href="<%=path%>/manager/css/bootstrap.min.css">
<!-- Custom CSS -->
<link href="<%=path%>/manager/css/style.css" rel='stylesheet'
	type='text/css' />
<link href="<%=path%>/manager/css/style-responsive.css"
	rel="stylesheet" />
<!-- font CSS -->
<!-- font-awesome icons -->
<link rel="stylesheet"
	href="<%=path%>/assets/css/bootstrapValidator.css" />
<link rel="stylesheet" href="<%=path%>/manager/css/font.css"
	type="text/css" />
<link href="<%=path%>/manager/css/font-awesome.css" rel="stylesheet">
<!-- //font-awesome icons -->
<script src="<%=path%>/manager/js/jquery2.0.3.min.js"></script>

<link rel="stylesheet"href="<%=path%>/kindeditor/themes/default/default.css" />
<link rel="stylesheet"href="<%=path%>/kindeditor/plugins/code/prettify.css" />
<script charset="utf-8" src="<%=path%>/kindeditor/kindeditor.js"></script>
<script charset="utf-8" src="<%=path%>/kindeditor/lang/zh_CN.js"></script>
<script charset="utf-8"src="<%=path%>/kindeditor/plugins/code/prettify.js"></script>
<link href="style/style.css" rel="<%=path%>/kindeditor/stylesheet"type="text/css">
<jsp:include page="/WEB-INF/manager/IncludeJS.jsp"></jsp:include>
<script>
		var editor1;
		KindEditor.ready(function(K) {
				editor1 = K.create('textarea[name="article_content"]', {
				cssPath : '${pageContext.request.contextPath}/kindeditor/plugins/code/prettify.css',
				uploadJson : '${pageContext.request.contextPath}/kindeditor/jsp1/upload_json.jsp',
				fileManagerJson : '${pageContext.request.contextPath}/kindeditor/jsp1/file_manager_json.jsp',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['form1'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['form1'].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
</head>
<body >
<%=htmlData%>
	<section id="container">
		<jsp:include page="/WEB-INF/manager/managertop.jsp" flush="true"></jsp:include>
		<jsp:include page="/WEB-INF/manager/nativetop.jsp" flush="true"></jsp:include>

		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<div class="form-w3layouts">
					<!-- page start-->
					<div class="row">
						<div class="col-lg-12">
							<section class="panel">
								<div id="content" class="col-lg-10 col-sm-10">
									<header class="panel-heading"> 文章管理 </header>
									<!-- content starts -->
									<a target="_blank"
										href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=aQ8GG0QdGxwMKRgYRwoGBA"
										style="text-decoration: none;"> <img
										src="http://rescdn.qqmail.com/zh_CN/htmledition/images/function/qm_open/ico_mailme_12.png" />
									</a>
									 <s:if test="#request.article==null">
									<form class="form-horizontal" id="form1"
										action="<%=path%>/manager/article" 
										method="post" enctype="multipart/form-data">
										
										 <div class="form-group">
					                         <label class="col-sm-2 control-label" for="article.type_id">文章类别</label>
								   			 <select name="article.type_id">
												<s:iterator value="#request.types" var="d">
													<option value="${d.type_id}">${d.type_name}</option>
												</s:iterator>
											</select>
					                    </div>
										<div class="form-group">
											<label class="col-sm-2 control-label">文章标题</label>
											<div class="col-md-6 col-sm-6 col-xs-12">
												<input type="text" class="form-control" name="article.article_title"
													placeholder="请填写文章标题" required="required">
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label">文章摘要</label>
											<div class="col-md-6 col-sm-6 col-xs-12">
												<input type="text" class="form-control"
													name="article.article_abstracts" placeholder="请填写文章描述"
													required="required">
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label">文章图片</label>
											<div class="col-md-6 col-sm-6 col-xs-12">
												<input type="file" class="form-control"
													name="logoFile" label="请选择图片"
													required="required" >
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label">文章内容</label>
											<div class="col-md-6 col-sm-6 col-xs-12">
												<textarea name="article_content" id="article_content" cols="100" rows="8" style="width:100%;height:100%;visibility:hidden;"><%=htmlspecialchars(htmlData)%></textarea>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label">创建时间</label>
											<div class="col-md-6 col-sm-6 col-xs-12">
												<input type="date" min="1" class="form-control"
													name="article.created_time" required="required">
											</div>
										</div>
										<div class="form-group">
											<div class="col-lg-8 col-md-6 col-sm-6 col-xs-12 center">
												<input type="submit" class="btn btn-success btn-lg"
													value="提交" />
											</div>
										</div>
									</form>
									</s:if>
									<s:else>
					<form class="form-horizontal" id="form1"
						action="<%=path%>/manager/articleupdate" 
						method="post" enctype="multipart/form-data">
						<input type="hidden" name="article.article_id" value="${article.article_id }">
						<input type="hidden" name="article.article_logo" value="${article.article_logo }">
						<input type="hidden" name="article.contentUrl" value="${article.contentUrl }">
						<input type="hidden" name="article.article_status" value="${article.article_status }">
						 <div class="form-group">
	                         <label class="col-sm-2 control-label" for="article.type_id">文章类别</label>
				   			 <select name="article.type_id">
								<s:iterator value="#request.types" var="d">
									<option value="${d.type_id}">${d.type_name}</option>
								</s:iterator>
							</select>
	                    </div>
						<div class="form-group">
							<label class="col-sm-2 control-label">文章标题</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="text" class="form-control" name="article.article_title"
									placeholder="请填写文章标题" required="required" value="${article.article_title }">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">文章摘要</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="text" class="form-control" value="${article.article_abstracts }"
									name="article.article_abstracts" placeholder="请填写文章描述"
									required="required">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">文章图片</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="file"  value="${article.article_logo }"
									name="logoFile" label="请选择图片"
									 >
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">文章内容</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<textarea name="article_content" id="article_content" cols="100" rows="8" style="width:100%;height:100%;visibility:hidden;"><%=htmlspecialchars(htmlData)%>${article.article_content }</textarea>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">创建时间</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="date" min="1" class="form-control" value="${article.created_time }"
									name="article.created_time">
							</div>
						</div>
						<div class="form-group">
							<div class="col-lg-8 col-md-6 col-sm-6 col-xs-12 center">
								<input type="submit" class="btn btn-success btn-lg"
									value="提交" />
							</div>
						</div>
					</form>
									</s:else>
									</div>
									</section>
									<!--/row-->
								</div>
						</div>
						<!--/.fluid-container-->
					</div>
			</section>
			</div>
			</div>
			<!-- page end-->
			</div>
		</section>

		<!--main content end-->
	</section>
	<script src="<%=path%>/manager/js/bootstrap.js"></script>
	<script src="<%=path%>/manager/js/jquery.dcjqaccordion.2.7.js"></script>
	<script src="<%=path%>/manager/js/scripts.js"></script>
	<script src="<%=path%>/manager/js/jquery.slimscroll.js"></script>
	<script src="<%=path%>/manager/js/jquery.nicescroll.js"></script>
	<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="<%=path%>/manager/js/flot-chart/excanvas.min.js"></script><![endif]-->
	<script src="<%=path%>/manager/js/jquery.scrollTo.js"></script>
	<script type="text/javascript"
		src="<%=path%>/assets/js/bootstrapValidator.js"></script>
	<script type="text/javascript">
		(function() {
			var p = {
				url : location.href,
				to : 'qqmail',
				desc : '', /*默认分享理由(可选)*/
				summary : '',/*摘要(可选)*/
				title : '',/*分享标题(可选)*/
				site : '',/*分享来源 如：腾讯网(可选)*/
				pics : '' /*分享图片的路径(可选)*/
			};
			var s = [];
			for ( var i in p) {
				s.push(i + '=' + encodeURIComponent(p[i] || ''));
			}
			document
					.write([
							"<a target='_blank' ",
							'href="http://mail.qq.com/cgi-bin/qm_share?',
							s.join("&"),
							'"',
							' style="cursor:pointer;text-decoration:none;outline:none"><img src="http://rescdn.qqmail.com/zh_CN/htmledition/images/function/qm_open/ico_share_02.png"/></a>' ]
							.join(""));
		})();
	</script>
</body>
</html>

