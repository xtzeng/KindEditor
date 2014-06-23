<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--  java双引号转义为'\"'-->

<!doctype html>
<html>
<head>
	<meta charset="utf-8" />
	<title>KindEditor JSP</title>
	<script type="text/javascript">
		var context = "${pageContext.request.contextPath}";		
</script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/kindeditor/themes/default/default.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/kindeditor/plugins/code/prettify.css" />
	<script charset="utf-8" src="${pageContext.request.contextPath}/kindeditor/kindeditor.js"></script>
	<script charset="utf-8" src="${pageContext.request.contextPath}/kindeditor/lang/zh_CN.js"></script>
	<script charset="utf-8" src="${pageContext.request.contextPath}/kindeditor/plugins/code/prettify.js"></script>
	
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="content"]', {
				cssPath : context +'kindeditor/plugins/code/prettify.css',
				uploadJson : context + 'kindeditor/jsp/upload_json.jsp',
				fileManagerJson : context + 'kindeditor/jsp/file_manager_json.jsp',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
</head>
<body>
	${content}
	<form name="example" method="post" action="/test.hello.action">                                        
		<textarea name="content" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;">${processedContent}</textarea>
		<br />
		<input type="submit" name="button" value="提交内容" /> (提交快捷键: Ctrl + Enter)
	</form>
	
</body>
</html>

<%!
private String htmlspecialchars(String str) {
	str = str.replaceAll("&", "&amp;");
	str = str.replaceAll("<", "&lt;");
	str = str.replaceAll(">", "&gt;");
	str = str.replaceAll("\"", "&quot;");
	return str;
}
%>