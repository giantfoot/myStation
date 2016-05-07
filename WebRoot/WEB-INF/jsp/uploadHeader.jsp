<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>天天动漫</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="天天动漫">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="${pageContext.request.contextPath }/images/favicon.ico" rel="shortcut icon">
	<link rel="Bookmark" href="${pageContext.request.contextPath }/images/favicon.ico" />
	<style type="text/css">
		.container{
		    width: 300px;
		}
		.resizer{
		    overflow: hidden;
		}
		.resizer.have-img button.ok{
		    display: inline-block;
		}
		.resizer.have-img .inner {
		    display: block;
		}
		.inner{
		    width: 100%;
		    position: relative;
		    font-size: 0;
		    overflow: hidden;
		    display: none;
		}
		img{
		    width: 100%;
		}
		
		.frames{
		    position: absolute;
		    top: 0;
		    left: 0;
		    border: 1px solid black;
		    cursor: move;
		    outline: rgba(0, 0, 0, 0.6) solid 10000px;
		}
		button.ok{
		    float:right;
		    margin-left: 5px;
		    display: none;
		}
		canvas{
		    max-width: 100%;
		    margin:auto;
		    display: block;
		}
	</style>
  </head>
  
  <body >
	 <form enctype="multipart/form-data" method="post" action="${pageContext.request.contextPath }/user/upload.action">
	    <input type="file" name="header" />
		<input class="url" type="url" placeholder="url"/>
		<div class="container"></div>
		<button class="submit" type="submit">上传</button>
	 </form>
		<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
		<script src="js/uploadHeader.js"></script>
  </body>
</html>
