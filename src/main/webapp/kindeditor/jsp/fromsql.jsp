<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ page import="org.apache.commons.lang.*"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
     <title>My JSP 'fromsql.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    
    
    <link rel="stylesheet" href="../themes/default/default.css" />
	<link rel="stylesheet" href="../plugins/code/prettify.css" />
	<script charset="utf-8" src="../kindeditor.js"></script>
	<script charset="utf-8" src="../lang/zh_CN.js"></script>
	<script charset="utf-8" src="../plugins/code/prettify.js"></script>
	<script charset="utf-8" src="../jquery.min.js"></script>
	<script>
	
		$("#messageContent").val("dkd"); 

		KindEditor.ready(function(K) {
			 
	        var options = {
	            cssPath : '../plugins/code/prettify.css',
	            uploadJson : '../jsp/upload_json.jsp',
	            fileManagerJson : '../jsp/file_manager_json.jsp',
	            allowFileManager : true,
	            resizeType : 0,
	            items : [ 'source', '|', 'undo', 'redo', '|', 'preview',
	                    'wordpaste', '|', 'justifyleft', 'justifycenter',
	                    'justifyright', 'justifyfull', 'insertorderedlist',
	                    'insertunorderedlist', 'selectall', '|', 'fullscreen',
	                    'formatblock', 'fontname', 'fontsize', '|', 'forecolor',
	                    'hilitecolor', 'bold', 'italic', 'lineheight',
	                    'removeformat', '|', 'table', 'hr' ],
	            afterCreate : function() {
	                this.sync();
	            },
	            afterBlur : function() {
	                this.sync();
	            }
	        };
	        var editor = K.create('textarea[name="messageContent"]', options);
	                  editor.sync();
	        prettyPrint();
	    });
	  
</script> 
   
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    This is my JSP page. <br>
    <%String text="hello"; %>
    <textarea id="messageContent" name="messageContent" style="width:700px;height:200px;visibility:hidden;"><%=text%></textarea>
  </body>
</html>
