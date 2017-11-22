
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path = request.getContextPath();
%>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <div style="width:800px; height: 600px;">
    <script id="container" name="content" type="text/plain">
        初始内容
</script>
  </div>
  </body>
  <!-- 配置文件 -->
  <script type="text/javascript" src="<%=path %>/ueditor/ueditor.config.js"></script>
  <!-- 编辑器源码文件 -->
  <script type="text/javascript" src="<%=path %>/ueditor/ueditor.all.js"></script>
  <script type="text/javascript">
      var ue = UE.getEditor('container');

      function getContent() {
          alert(ue.getContent());
      }

     /* UE.Editor.prototype._bkGetActionUrl = UE.Editor.prototype.getActionUrl;
      UE.Editor.prototype.getActionUrl = function(action) {
          if (action == 'uploadimage' || action == 'uploadscrawl' || action == 'uploadvideo') {
              return 'http://localhost:8080/ueditor/uploadImage';
          } else {
              return this._bkGetActionUrl.call(this, action);
          }
      }*/
  </script>
</html>
