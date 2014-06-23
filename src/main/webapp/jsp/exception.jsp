<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>404</title>
<style type="text/css">
*{ margin:0; padding:0;}
body{ background:#e1e1da; font-size:12px; padding-top:40px; }
.link{ text-decoration:underline; color:#ffff00; margin:0 2px;}
</style>
</head>

<body>

<table width="100%" border="0" cellspacing="0" cellpadding="0" style=" min-width:600px;" >
  <tr>
    <td width="250" valign="bottom"><img src="images/404_bg.gif" width="250" height="197" /></td>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-left:27px;">
  <tr>
    <td colspan="2" style="font-size:16px; font-weight:bold; color:#333436;" height="50">对不起！您访问的页面发生了异常！</td>
    </tr>
  <tr>
    <td width="69" style="font-weight:bold; color:#333436;" valign="top">异常信息：</td>
    <td style="color:#58595b;padding-right:80px;padding-bottom:20px;"><s:property value="exception"/>
    </td>
  </tr>
</table>
</td>
  </tr>
  <tr>
    <td><img src="images/404_bg2.gif" width="250" height="39" /></td>
    <td style="background:#131415; color:white; font-weight:bold; padding-left:27px;">您可以返回<a class="link" href="javascript:history.go(-1);">上一页</a>，或者返回<a class="link" href="login.login.action">首页</a>，继续操作！</td>
  </tr>
</table>

</body>
</html>

