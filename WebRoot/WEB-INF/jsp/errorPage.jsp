<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>天天动漫errorMSG</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="天天动漫">
	<meta http-equiv="description" content="天天动漫">
	<link href="${pageContext.request.contextPath }/images/favicon.ico" rel="shortcut icon">
	<link rel="Bookmark" href="${pageContext.request.contextPath }/images/favicon.ico" />
	
	
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
  
  <body style="margin:0 auto;width:1366px;padding:0">
  
 
  	<div style="width:1366px;height:200px;background-color: #EC6690;margin: 0px auto;position:relative">
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
	 				<h2>${message }</h2>
 				</div>
 				
 			</div>
 		</div>
  	</div>
