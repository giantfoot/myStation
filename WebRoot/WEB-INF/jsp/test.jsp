<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/myDefault.css"/>
	<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
	<script type="text/javascript">
		
		 $(function(){
		 
		 	 function errorTrigger(){
		 	 	
			 	$('.errorTop').slideDown('fast');
			 	
			 }
			 $('#login-button').on('click', function(){
			 	errorTrigger();
			 });
			 
			 })
	</script>
	<!-- <style type="text/css">
		.errorTop{
	z-index:10;
	width:100%;
	height:100px;
	background-color:#E1715B;
	box-shadow:0 5px 1px rgba(92,92,92,0.2);
	position:absolute;
	
	display:none;
}
	</style> -->
  </head>
  
  <body>
   <div class="errorTop">
  		
  	</div>
  	<button  id="login-button">Login</button>
  </body>
</html>
