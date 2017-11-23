<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <%@ taglib uri="/struts-tags" prefix="s" %>
</head>
<body>

<h1 align="center">文件下载</h1>
   	<hr/>
   	<s:iterator value="#request.fileList" var="d">
   	${d}
   		<img src="http://localhost:8080/RealEstate/upload/${d}" width="300">
   		<a href="http://localhost:8080/RealEstate/upload/${d}">直接下载</a>&nbsp;&nbsp;
   		<a href="downloadAction!down.action?filename=${d}">下载</a><br/>
   	</s:iterator>

</body>
</html>