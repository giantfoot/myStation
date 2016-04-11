<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="Shortcut Icon" href="images/tv.ico" />
	<link rel="stylesheet" type="text/css" href="css/loginStyles.css">
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
#alertMsg {
    display: none;
    width: 400px;
    border: 1px solid #ddd;
    border-radius: 5px;
    box-shadow: 1px 1px 10px black;
    padding: 10px;
    font-size: 12px;
    position: absolute;
    text-align: center;
    background: #fff;
    z-index: 100000;
    color: #000000;
}

#alertMsg_info {
    padding: 2px 15px;
    line-height: 1.6em;
    text-align: left;
}

#alertMsg_btn1, #alertMsg_btn2 {
    display: inline-block;
    background: url(images/gray_btn.png) no-repeat left top;
    padding-left: 3px;
    color: #000000;
    font-size: 12px;
    text-decoration: none;
    margin-right: 10px;
    cursor: pointer;
}

#alertMsg_btn1 cite, #alertMsg_btn2 cite {
    line-height: 24px;
    display: inline-block;
    padding: 0 13px 0 10px;
    background: url(images/gray_btn.png) no-repeat right top;
    font-style: normal;
}

		
	</style>
	

  </head>
  
  <body>
  
 
  	<div style="width:1366px;height:200px;background-color: #EC6690;margin: 0px auto;position:relative">
  		<div style="margin:auto;width:100px;position:relative;top:50px;color:#ffffff;text-align:center"><h2>登录中心</h2></div>
  	</div>
  	
  	<div style="width:1366px;height:450px;background-color: #ffffff;margin: 0px auto;position: absolute;position:relative">
  		<div class="login">
 			<div style="display: inline-block;width:400px;height:5px;position: absolute;top:30px;left:20px;">
 				<hr style="border:1px solid #E2E2E2">
 			</div>
 			<div style="margin:auto;width:100px;position:relative;top:15px;color:#000000;text-align:center"><h2>登录</h2></div>
 			<div style="display: inline-block;width:400px;height:5px;position: absolute;top:30px;right:20px;">
 				<hr style="border:1px solid #E2E2E2">
 			</div><br>
 			<div style="display: inline-block;width:437px;height:360px;position: absolute;top:60px;left:0px;">
 				<img src="images/login.png"/>
 			</div>
 			<div style="background-color:#aaa;display: inline-block;width:400px;height:420px;position: absolute;top:60px;left:480px;">
 				<div class="wrapper">

					<div class="container">
						<h1>Welcome</h1>
						<form class="form">
					
							<input type="text" placeholder="Username" id="username">
							<input type="password" placeholder="Password" id="password">
							<div style="position:relative;">
								<input type="text" placeholder="验证码" style="width:150px;margin-left:-100px;display:inline-block;" id="code">
								<img id="code_img" style="width:90px;height:40px;margin-left:10px;position: absolute;"/>
							</div>
							
              				<input type="button" id="login-button" value="Login">
							
						</form>
						
					</div>
				
					<ul class="bg-bubbles">
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
					</ul>
					
				</div>
				 				
 				
 			</div>
 		</div>
  	</div>
 	
 	
 	
 	
 	
 	



 	
 	<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
 	<script src="js/myDefault.js"></script>
	<script type="text/javascript">
		$(function(){
			var CODE={
			    //初始化化验证码
			    //如果需要点击图片改变图片的内容，则必须添加时间搓
			    initCode:function(){
			     $("#code_img").attr("src","user/verifyCode.action?rmd="+new Date().getTime())
			     .click(function(){
			      $(this).attr("src","user/verifyCode.action?rmd="+new Date().getTime());
			     }); 
			     }
			     
			     }
			 CODE.initCode();
			 
			 
		     
		$.fn.checkUser=function(){
			var user = {username:$('#username').val(),password:$('#password').val()};
			$.ajax({
				 					type:'post',
				 					async: false,
				 					url:'${pageContext.request.contextPath }/user/checkUser.action',
				 					contentType:'application/json;charset=utf-8',
				 					data:JSON.stringify(user),
				 					success:function(result){
				 						if(result == 'success'){
				 							 window.location.href='${pageContext.request.contextPath }/user/loginSuccess.action';
				 							 
				 						}else{
				 							
				 						}
				 					}
				 				});
		}
		 
		 
		 
		 
		 
		 
		 
		
		 	
		 	$('#login-button').on('click', function(){
		 		
		 		var code = $('#code').val();
		 		var user = {username:$('#username').val(),password:$('#password').val()};
		 		if(code == '' || code == null){
		 			alertMsg("验证码不能为空!");
		 	
		 			
		 		}else{
		 			
		 			
		 			if(user.username == '' || user.username == null || user.password == '' || user.password == null){
		 				
		 				alertMsg("用户名或密码不能为空!");
		 			}else{
		 			
		 				$.ajax({
				 		type:'post',
				 		url:'${pageContext.request.contextPath }/user/checkVerifyCode.action',
				 		data:'code='+code,
				 		success:function(result){
				 			if(result == 'success'){
					 	
					 			$().checkUser();
					 		
				 			}else if(result == 'error'){
				 				alertMsg("验证码错误");
				 				
				 			}
				 		}
				 	});
		 				
		 			}
		 			
		 			
		 			
		 			
		 		}
		 	});
		 	
		 	
		 	
		 	
		 	$('#username').on('blur', function(){
		 		var username = $(this).val();
		 		if(username == null || username == ''){
		 			alertMsg("用户名不能为空");
		 		}
		 		
		 	});
		 	
		 	
		 	$('#password').on('blur', function(){
		 		var password = $(this).val();
		 		if(password == null || password == ''){
		 			alertMsg("密码不能为空");
		 		}else if(password.length <6){
		 			alertMsg("密码不能少于6位");
		 		}
		 		
		 	});
	
		
		});
	</script>

  </body>
</html>
