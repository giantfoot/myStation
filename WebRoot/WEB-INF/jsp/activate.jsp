<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
  
    <base href="<%=basePath%>">
    
    <title>天天动漫activate</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="天天动漫">
	<meta http-equiv="description" content="天天动漫">
	<link href="${pageContext.request.contextPath }/images/favicon.ico" rel="shortcut icon">
	<link rel="Bookmark" href="${pageContext.request.contextPath }/images/favicon.ico" />
	<link type="text/css" href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet"/>
	<link rel="stylesheet" type="text/css" href="css/myDefault.css"/>
	<style type="text/css">
		.login{
			background-color: #ffffff;
			margin:0 auto;
			border-radius:10px;
			-webkit-border-radius: 10px;
			-moz-border-radius: 10px;
			width:900px;
			height:500px;
			box-shadow:1px 1px 1px #aaaaaa;
			position: relative;
			top:-100px;
			
			
		}
	</style>
	

  </head>
  
  <body style="width:1366px;margin:0 auto">

  	<div style="width:1366px;height:200px;background-color: #EC6690;margin:0px auto;margin-top:-50px">
  		<div style="margin:auto;width:100px;position:relative;top:50px;color:#ffffff;text-align:center"><h2>MSG中心</h2></div>
  	</div>
  	
  	<div style="width:1366px;height:450px;background-color: #ffffff;margin: 0px auto;position: absolute;position:relative">
  		<div class="login">
 			<div style="display: inline-block;width:400px;height:5px;position: absolute;top:30px;left:20px;">
 				<hr style="border:1px solid #E2E2E2">
 			</div>
 			<div style="margin:auto;width:100px;position:relative;top:15px;color:#000000;text-align:center"><h2>MSG</h2></div>
 			<div style="display: inline-block;width:400px;height:5px;position: absolute;top:30px;right:20px;">
 				<hr style="border:1px solid #E2E2E2">
 			</div><br>
 			<div style="display: inline-block;width:437px;height:360px;position: absolute;top:60px;left:0px;">
 				<img src="images/login.png"/>
 			</div>
 			<div style="background-color:#fff;display: inline-block;width:400px;height:420px;position: absolute;top:60px;left:480px;">
 				<div style="position: absolute;display: block;margin:100px auto;width:300px;height:100px">
	 				<c:choose>
	 					<c:when test="${activateMsg == 'success' }">
	 						<h2><a href="${pageContext.request.contextPath }/user/login.action">激活成功!请点击前往登录界面</a></h2>
	 					</c:when>
	 					<c:when test="${activateMsg == 'error' }">
	 						<h2><a href="${pageContext.request.contextPath }/user/toRegister.action">激活失败!请点击重新注册${errorMsg }</a></h2>
	 					</c:when>
	 					<c:otherwise><h2>注册成功!请前往邮箱激活..............</h2></c:otherwise>
	 				</c:choose>
 				</div>
 				
 			</div>
 		</div>
  	</div>
  	<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
 	</body>
 
 	</html>