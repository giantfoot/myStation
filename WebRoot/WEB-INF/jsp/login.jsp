<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">

    <title>天天动漫 登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="天天动漫">
	<meta http-equiv="description" content="This is my page">
	<link href="${pageContext.request.contextPath }/images/favicon.ico" rel="shortcut icon">
	<link rel="Bookmark" href="${pageContext.request.contextPath }/images/favicon.ico" />
	
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
  
  <body style="width: 1366px;margin:0 auto">
 
  	<div style="width:100%;height:200px;background-color: #EC6690;margin: 0px auto;position:relative">
  		<div style="margin:auto;width:100px;position:relative;top:50px;color:#ffffff;text-align:center"><h2>登录中心</h2></div>
  	</div>
  	
  	<div style="width:100%;height:450px;background-color: #ffffff;margin: 0px auto;position: absolute;position:relative">
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
							
              				<!-- <input type="button" id="login-button" value="Login"> -->
							<button type="button" id="login-button" value="Login">Login</button>
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
 	
	<script type="text/javascript">
		$(function(){
		function alertMsg(msg, mode) { //mode为空，即只有一个确认按钮，mode为1时有确认和取消两个按钮
        msg = msg || '';
        mode = mode || 0;
        var top = document.body.scrollTop || document.documentElement.scrollTop;
        var isIe = (document.all) ? true : false;
        var isIE6 = isIe && !window.XMLHttpRequest;
        var sTop = document.documentElement.scrollTop || document.body.scrollTop;
        var sLeft = document.documentElement.scrollLeft || document.body.scrollLeft;
        var winSize = function(){
            var xScroll, yScroll, windowWidth, windowHeight, pageWidth, pageHeight;
            // innerHeight获取的是可视窗口的高度，IE不支持此属性
            if (window.innerHeight && window.scrollMaxY) {
                xScroll = document.body.scrollWidth;
                yScroll = window.innerHeight + window.scrollMaxY;
            } else if (document.body.scrollHeight > document.body.offsetHeight) { // all but Explorer Mac
                xScroll = document.body.scrollWidth;
                yScroll = document.body.scrollHeight;
            } else { // Explorer Mac...would also work in Explorer 6 Strict, Mozilla and Safari
                xScroll = document.body.offsetWidth;
                yScroll = document.body.offsetHeight;
            }

            if (self.innerHeight) {    // all except Explorer
                windowWidth = self.innerWidth;
                windowHeight = self.innerHeight;
            } else if (document.documentElement && document.documentElement.clientHeight) { // Explorer 6 Strict Mode
                windowWidth = document.documentElement.clientWidth;
                windowHeight = document.documentElement.clientHeight;
            } else if (document.body) { // other Explorers
                windowWidth = document.body.clientWidth;
                windowHeight = document.body.clientHeight;
            }

            // for small pages with total height less then height of the viewport
            if (yScroll < windowHeight) {
                pageHeight = windowHeight;
            } else {
                pageHeight = yScroll;
            }

            // for small pages with total width less then width of the viewport
            if (xScroll < windowWidth) {
                pageWidth = windowWidth;
            } else {
                pageWidth = xScroll;
            }

            return{
                'pageWidth':pageWidth,
                'pageHeight':pageHeight,
                'windowWidth':windowWidth,
                'windowHeight':windowHeight
            }
        }();
        //alert(winSize.pageWidth);
        //遮罩层
        var styleStr = 'top:0;left:0;position:absolute;z-index:10000;background:#666;width:' + winSize.pageWidth + 'px;height:' +  (winSize.pageHeight + 30) + 'px;';
        styleStr += (isIe) ? "filter:alpha(opacity=80);" : "opacity:0.8;"; //遮罩层DIV
        var shadowDiv = document.createElement('div'); //添加阴影DIV
        shadowDiv.style.cssText = styleStr; //添加样式
        shadowDiv.id = "shadowDiv";
        //如果是IE6则创建IFRAME遮罩SELECT
        if (isIE6) {
            var maskIframe = document.createElement('iframe');
            maskIframe.style.cssText = 'width:' + winSize.pageWidth + 'px;height:' + (winSize.pageHeight + 30) + 'px;position:absolute;visibility:inherit;z-index:-1;filter:alpha(opacity=0);';
            maskIframe.frameborder = 0;
            maskIframe.src = "about:blank";
            shadowDiv.appendChild(maskIframe);
        }
        document.body.insertBefore(shadowDiv, document.body.firstChild); //遮罩层加入文档
        //弹出框
        var styleStr1 = 'display:block;position:fixed;_position:absolute;left:' + (winSize.windowWidth / 2 - 200) + 'px;top:' + (winSize.windowHeight / 2 - 150) + 'px;_top:' + (winSize.windowHeight / 2 + top - 150)+ 'px;'; //弹出框的位置
        var alertBox = document.createElement('div');
        alertBox.id = 'alertMsg';
        alertBox.style.cssText = styleStr1;
        //创建弹出框里面的内容P标签
        var alertMsg_info = document.createElement('P');
        alertMsg_info.id = 'alertMsg_info';
        alertMsg_info.innerHTML = msg;
        alertBox.appendChild(alertMsg_info);
        //创建按钮
        var btn1 = document.createElement('a');
        btn1.id = 'alertMsg_btn1';
        btn1.href = 'javas' + 'cript:void(0)';
        btn1.innerHTML = '<cite>确定</cite>';
        btn1.onclick = function () {
            document.body.removeChild(alertBox);
            document.body.removeChild(shadowDiv);
            return true;
        };
        alertBox.appendChild(btn1);
        if (mode === 1) {
            var btn2 = document.createElement('a');
            btn2.id = 'alertMsg_btn2';
            btn2.href = 'javas' + 'cript:void(0)';
            btn2.innerHTML = '<cite>取消</cite>';
            btn2.onclick = function () {
                document.body.removeChild(alertBox);
                document.body.removeChild(shadowDiv);
                return false;
            };
            alertBox.appendChild(btn2);
        }
        document.body.appendChild(alertBox);

    }
		
		
		/*----------*/
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
				 							
					 							window.location.href='${pageContext.request.contextPath }/user/loginSuccess.action?username='+$('#username').val();
					 							window.event.returnValue = false;
					 							
				 							}else if(result == 'error1'){
				 								alertMsg("用户名或密码错误!");
				 								$('#login-button').text("Login");
				 							}else if(result == 'error2'){
				 								alertMsg("用户尚未激活,请前往邮箱激活!");
				 								$('#login-button').text("Login");
				 							}
				 						
				 					}
				 				});
		}
		 
		 
		 
		 
		 
		 
		 
		
		 	
		 	$('#login-button').on('click', function(){
		 		
		 		var code = $('#code').val();
		 		var user = {username:$('#username').val(),password:$('#password').val()};
		 		if(code == '' || code == null){
		 			alertMsg("验证码不能为空!");
		 			$('#login-button').text("Login");
		 			
		 		}else{
		 			
		 			
		 			if(user.username == '' || user.username == null || user.password == '' || user.password == null){
		 				
		 				alertMsg("用户名或密码不能为空!");
		 				
		 			}else{
		 				$('#login-button').text("Loading...");
		 				$.ajax({
				 		type:'post',
				 		url:'${pageContext.request.contextPath }/user/checkVerifyCode.action',
				 		data:'code='+code,
				 		success:function(result){
				 			if(result == 'success'){
					 			$('#login-button').text("Loading...");
					 			$().checkUser();
					 			return false;
				 			}else if(result == 'error'){
				 				alertMsg("验证码错误");
				 				$('#login-button').text("Login");
				 				return false;
				 			}
				 		}
				 	});
		 				
		 			}
		 			
		 			
		 			
		 			
		 		}
		 		return false;
		 	});
		 	
		 	
		 	
		 	
		 /* 	$('#username').on('blur', function(){
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
		 		
		 	}); */
	
		
		});
	</script>

  </body>
</html>
