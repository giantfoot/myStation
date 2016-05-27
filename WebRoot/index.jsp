<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
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
	<meta http-equiv="keywords" content="动漫">
	<meta http-equiv="description" content="动漫下载">
  
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<base target="_blank">
	<meta name="baidu-site-verification" content="1brhXA7ncw" />
	<link type="text/css" href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet"/>
	
	<link rel="stylesheet" type="text/css" href="css/myDefault.css"/>
	
	<link rel="Shortcut Icon" href="tvblog.ico" />
	<link rel="Bookmark" href="tvblog.ico" />
	
	
	
<!-- 	<link rel="stylesheet" type="text/css" href="css/normalize.css" /> -->
	<!-- <link rel="stylesheet" type="text/css" href="css/defaultSlider.css" /> -->
	<!-- <link rel="stylesheet" href="css/jquery.hiSlider.min.css" /> -->
	
	<link rel="stylesheet" type="text/css" href="css/normalizePicShadow.css" />
	<link rel="stylesheet" type="text/css" href="css/componentPicShadow.css" />
	
	
	
	 
	
	<link rel="stylesheet" type="text/css" href="css/multiPicCoursel.css" />
	
	
	<link id="scrollUpTheme" rel="stylesheet" href="css/image.css">


    
    
	
	<style type="text/css">
	
		*{
		    margin: 0;
		    padding: 0;
		    
		}
		body{
		    font: 14px/2 'Microsoft YaHei', 'Arial';
		    
		}
		a:link {
			 text-decoration: none;
			 color:#000000;
			}
		a:visited {
		 text-decoration: none;
		 color:#000000;
		}
		a:hover {
		 text-decoration: none;
		 color:F16985;
		}
		a:active {
		 text-decoration: none;
		 color:F16985;
		}
		a:focus,input{outline:none;}
	    area, a, a img,input{blr:expression_r(this.onFocus=this.blur());}
	    
	    
		li{
		    list-style: none;
		}
		li img{
		    display: inline-block;
		    margin: 0 auto;
		    border-radius: 8px;
			-webkit-border-radius: 8px;
			-moz-border-radius: 8px;
			cursor: pointer;
		}
		
		.hiSlider{
		    overflow: hidden;
		    height: 280px;
		    width: 500px;
		    background: #fff;
		}
		.hiSlider-item{
		    float: left;
		     
		}
		.footerMsg{
			width:100px;
			height:270px;
			text-align:center;
			display:inline-block;
		}
		.footerMsg a{
			color:#aaa;
		}
		.footerMsg a:hover{
			color:#fff;
		}
		
		
		.smallImgItem{
		
			padding:0px;
			width:220px;
			padding:0px;
			height:144px;
			margin-bottom:10px;
			border-radius:5px;
		}
		.smallImgItem:hover{
			border:1px solid #aaa;
			box-shadow:0 0 20px rgba(92,92,92,0.4);
			-webkit-box-shadow:0 0 20px rgba(92,92,92,0.4);
			-moz-box-shadow:0 0 20px rgba(92,92,92,0.4);
		}
	</style>
	<style type="text/css">
		.hiSlider-pages,.hiSlider-title{position:absolute;z-index:3}
		.hiSlider-btn-prev,.hiSlider-btn-next{position:absolute;z-index:5;top:50%;height:30px;width:30px;background:url(images/hislider-arrow.png) no-repeat;margin-top:-15px;text-indent:-200px;overflow:hidden;opacity:.2;filter:alpha(opacity:20)}
		.hiSlider-btn-prev{left:10px}
		.hiSlider-btn-next{right:10px;background-position:-30px 0}
		.hiSlider-btn-prev:hover,.hiSlider-btn-next:hover{opacity:1;filter:alpha(opacity:100)}
		.hiSlider-title{bottom:0;width:100%;padding:6px 0;color:#fff;text-indent:10px;background:rgba(0,0,0,.6);z-index:2;font:14px/2 "Microsoft YaHei",Arial,Tahoma}
		.hiSlider-pages{bottom:10px;right:10px;text-align:right}
		.hiSlider-pages a{height:12px;width:12px;margin:0 6px;display:inline-block;overflow:hidden;text-indent:-100px;font-size:0;border-radius:50%;background:#ddd}
		.hiSlider-pages a.active{background:#5472BF}
	</style>
	
	
	
  </head>
  
  <body style="width:1366px;margin:0px auto;">

  	

 

  	
  	
  	
  	
  	
<!-- 2 --><div class="myNav">
	 		<a href="#" style="padding:3px 0px;">
		 		
		 			<img title="主页" src="images/tv.ico" style="position:relative;top:5px;
	width:30px;"/>
		 		
	 		</a>
	 		<a href="${pageContext.request.contextPath }/user/zixun.action?topSubject=资讯">
	 			资讯
	 		</a>
	 		<a href="${pageContext.request.contextPath }/user/luntan.action?topSubject=论坛">
	 			论坛
	 		</a>
	 		<a href="${pageContext.request.contextPath }/user/zhuanqu.action?topSubject=专区">
	 			专区
	 		</a>
	 		<a href="${pageContext.request.contextPath }/user/manhua.action?topSubject=漫画">
	 			漫画
			</a>
			<c:choose>
			<c:when test="${sessionScope.user != null }">
			
			
			
			<div class="myCustomUserCenter">
				<c:choose>
					<c:when test="${sessionScope.user.header != null }">
						<a>
							<img src="${sessionScope.user.header }" id="userHeader" class="img-circle" style="width:40px;height:40px">
						</a>
					</c:when>
					<c:otherwise>
						<a>
							<img src="images/userDefault.png" id="userHeader" class="img-circle" style="width:40px;height:40px">
						</a>
					</c:otherwise>
				</c:choose>
				<div class="myCustomDropdownPanel" style="width:200px;height:280px;">
					<span style="margin-top:30px;margin-bottom:10px;display:block;width:200px;height:30px;text-align:center"><strong>${sessionScope.user.username }</strong></span><hr style="margin:15px auto">
					
					<span style="display:block;margin:0px auto;width:200px;height:30px;text-align:center"><strong><a href="${pageContext.request.contextPath }/user/uploadHeader.action" id="logout">添加头像</a></strong></span><hr>
					<span style="display:block;margin:0px auto;width:200px;height:30px;text-align:center"><strong>邮箱绑定</strong></span><hr>
					<span style="display:block;margin:0px auto;width:200px;height:30px;text-align:center">
					<strong><a href="${pageContext.request.contextPath }/user/logout.action" id="logout" style="left:70px;padding-top:0px">退出</a></strong>
					</span>
				</div>
			</div>
			
			
			
			
			
			<a class="right">
				<span>消息</span>
			</a>
			
			
			<a class="right">
				<span>动态</span>
			</a>
			
			<div class="myCustomFavorite">
				<a>
					
						收藏夹
				
				</a>
				<div class="myCustomDropdownPanel" style="width:200px;height:180px;">
					<ul style="position: absolute;top:10px;left:20px;display: block;margin:0 auto">
						<li><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=tjcdkbnr">铁甲城的卡内巴瑞</a></li>
						<li><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=xdnydqs">希德尼娅的骑士</a></li>
						<li><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=wdyxxy">我的英雄学院</a></li>
						<li><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=jjdqmmx">JOJO的奇妙冒险</a></li>
						<li><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=ylsdyj">野良神</a></li>
						<li><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=myszm">命运石之门</a></li>
					</ul>
				</div>
			</div>
			
			</c:when>
			<c:otherwise>
				<div class="myCustomUserCenter">
					<a>
							<img src="images/userDefault.png" id="userHeader" class="img-circle" style="width:40px;height:40px">
					</a>
				</div>
			</c:otherwise>
			</c:choose>
			
			
			
			<c:if test="${sessionScope.user == null }">
			<a href="${pageContext.request.contextPath }/user/login.action" class="sign" id="login" style="color:#ffffff;margin-left:290px;">
				<span><strong>登录</strong></span>
			</a>
			
			
			<a href="${pageContext.request.contextPath }/user/toRegister.action" class="sign" id="register" style="color:#ffffff;margin-left:2px">
			
				<span><strong>注册</strong></span>
				
			</a>
			</c:if>
	 	</div>
	         
	 	
	 	<!--  -->
	 	
	 	
	 	
	 	
	 	
	 	
	 	
	 	
	 	       <!--       mynavEnd     -->
 		
 			<div class="topImg"></div>
 		
 		
 		
 		
 		
 		
 		
 		
 	
	 	
	 	<nav class="navbar navbar-inverse" role="navigation" style="height:53px;width:1366px;
	align:center;border-radius:0px;margin:0px auto;align:center">
		 	<div class="navbar-header" style="position: absolute;left:100px">
		      <a class="navbar-brand" href="${pageContext.request.contextPath }/user/navSubject.action?itemtab=syxf">四月新番</a>
		    </div>
		 	<div class="navbar-header" style="position: absolute;left:200px">
		      <a class="navbar-brand" href="${pageContext.request.contextPath }/user/navSubject.action?itemtab=zztj">站长推荐</a>
		    </div>
		 	<div class="navbar-header" style="position: absolute;left:300px">
		      <a class="navbar-brand" href="${pageContext.request.contextPath }/user/navSubject1.action?itemtab=jdhj">经典合集</a>
		    </div>
		 	<div class="navbar-header" style="position: absolute;left:400px">
		      <a class="navbar-brand" href="${pageContext.request.contextPath }/user/navSubject1.action?itemtab=gcdm">国产动漫</a>
		    </div>
	
		 
		   
			   <%-- <div class="navbar-header" style="display:inline-block;position:absolute;left:1000px">
			      <a class="navbar-brand" id="searchIcon1" href="${pageContext.request.contextPath }/user/contentFrame.action">搜索</a>
			   </div> --%>
			  
			      <form id="searchForm" action="${pageContext.request.contextPath }/user/search.action" class="navbar-form navbar-left" role="search" style="width:220px;display:inline-block;position:absolute;left:1070px;border:0;float:left;margin:0px;padding-top:10px">
			         <div class="form-group" style="float:left">
			            <input type="text" class="form-control" placeholder="Search" name="searchName">
			   		 </div>&nbsp;&nbsp;
			   		 <div style="display:inline-block;position:absolute;left:215px;top:20px;float:left">
				         <span style="color:#ffffff;cursor:pointer" id="myCustomSearch">
				            <span id="searchIcon" class="glyphicon glyphicon-search"></span>
				         </span>
			         </div>
			       
			      </form>    
			  </nav>
			  
			  
		  
			  
	
			  
			  
			  
			  
			  
			  
			  
	<div style="width:1366px;margin:0px auto;background-color:#F4F5F7;">
	 	
 	
	 	<div class="myContainer">
	 	
	 		<div class="mySpan1">
	 		
	 		
	 		
	 		
	 		
	 		
			 	<div class="myCarousel">
				 	
						    <ul class="hiSlider hiSlider1">
						        <li data-title="命运石之门" class="hiSlider-item">
						        <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=myszm"><img title="命运石之门" src="images/pic1/命运石之门.jpg" class="img-rounded"></a>
								</li>
						        <li data-title="希德尼娅的骑士" class="hiSlider-item"><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=xdnydqs"><img title="希德尼娅的骑士" src="images/pic1/希德尼娅的骑士.jpg" class="img-rounded"></a></li>
						        <li data-title="亚人" class="hiSlider-item"><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yr"><img title="亚人" src="images/pic1/亚人2.jpg" class="img-rounded"></a></li>
						        <li data-title="野良神" class="hiSlider-item"><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=ylsdyj"><img  title="野良神" src="images/pic1/野良神.jpg" class="img-rounded"></a></li>
						        <li data-title="rwby" class="hiSlider-item"><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=rwby"><img  title="rwby" src="images/pic1/rwby.jpg" class="img-rounded"></a></li>
						    </ul>
					
				</div><!-- myCarouselEnd -->
				
				
				
				
				
				
				<div class="smallImg">
					<div class="smallImgItem">
						<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=tjcdkbnr"  class="thumbnail">
							<img title="铁甲城的卡巴内瑞" src="images/pic1/铁甲城的卡巴内瑞.jpg" style="width:218px;height:138px;border-radius:5px;">
						</a>
					</div>
					<div class="smallImgItem">
						<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=wdyxxy" class="thumbnail">
							<img  title="我的英雄学院" src="images/pic1/我的英雄学院.jpg" style="width:218px;height:138px;border-radius:5px;">
						</a>
					</div>
				</div>
				
				
				
				
				
				
			</div>		<!-- span1 END -->
			
			
			
			
			
			
			<div class="myCustomTab">
				<ul id="myTab" class="nav nav-tabs">
				   <li class="myActive1">
				      <a href="#mon" data-toggle="tab" onFocus="if(this.blur)this.blur()">
				         周一
				      </a>
				   </li>
				   <li class="myActive1"><a href="#tue" data-toggle="tab">周二</a></li>
				   <li class="myActive1"><a href="#wed" data-toggle="tab">周三</a></li>
				   <li class="myActive1"><a href="#thu" data-toggle="tab">周四</a></li>
				   <li class="myActive1"><a href="#fri" data-toggle="tab">周五</a></li>
				   <li class="myActive1"><a href="#sat" data-toggle="tab">周六</a></li>
				   <li class="myActive1"><a href="#sun" data-toggle="tab">周日</a></li>
				   
				</ul>
				
				
				
				
				
				
				<!-- tabContentStart -->
				<div id="myTabContent" class="tab-content">
				   <div class="tab-pane fade" id="mon">
				      <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=clksdysjsh" class="list-group-item active" style="background-color:#F16985;border-color:#F16985">
					                      从零开始的异世界生活<span class="badge">新</span>
					  </a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=zdtl" class="list-group-item">战斗陀螺brust<span class="badge">新</span></a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=mbdlhp" class="list-group-item">面包带来和平</a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=rwby" class="list-group-item">RWBY第三季</a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yxw" class="list-group-item">游戏王本</a>
	
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=msnzs" class="list-group-item">美少女战士</a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=bysn" class="list-group-item">爆音少女</a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=mmtt" class="list-group-item">美妙天堂</a>
	
				   </div>
				   <div class="tab-pane fade" id="tue" >
				      <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=asdej" class="list-group-item active" style="background-color:#F16985;border-color:#F16985">
					                      阿松第二季<span class="badge">新</span>
					  </a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=wmzyj" class="list-group-item">我们这一家<span class="badge">25</span></a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=ngwqb" class="list-group-item">女高网球部</a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=jokergame" class="list-group-item">JOKER GAME</a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=zgjqxs" class="list-group-item">中国惊奇先生</a>
				   </div>
				   <div class="tab-pane fade" id="wed">
				      <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhdsj" class="list-group-item active" style="background-color:#F16985;border-color:#F16985">
					                     银魂<span class="badge">新</span>
					  </a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=sxzyys" class="list-group-item">双星之阴阳师<span class="badge">新</span></a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=bmr" class="list-group-item">半面人</a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=zdzh" class="list-group-item">战斗之魂</a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=kssg" class="list-group-item">口水三国</a>
				   </div>
				   <div class="tab-pane fade" id="thu">
				      <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=superlovers" class="list-group-item active" style="background-color:#F16985;border-color:#F16985">
					                      super lovers<span class="badge">新</span>
					  </a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=ctyqx" class="list-group-item">春太与千夏<span class="badge">新</span></a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=gz" class="list-group-item">鬼斩</a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=myjcz" class="list-group-item">命运九重奏</a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=dzgrj" class="list-group-item">段子狗日记</a>
				   </div>
				   <div class="tab-pane fade" id="fri">
				      <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=mj" class="list-group-item active" style="background-color:#F16985;border-color:#F16985">
					                      迷家<span class="badge">新</span>
					  </a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=tjcdkbnr" class="list-group-item">铁甲城的卡巴内瑞<span class="badge">新</span></a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=cqyzjls" class="list-group-item">从前有座剑灵山</a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=asjs" class="list-group-item">暗杀教室</a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=hyxhn" class="list-group-item">狐妖小红娘</a>
				   </div>
				   <div class="tab-pane fade" id="sat">
				      <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yr" class="list-group-item active" style="background-color:#F16985;border-color:#F16985">
					                      亚人<span class="badge">新</span>
					  </a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=cyh" class="list-group-item">潮与虎第二季<span class="badge">新</span></a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yjdwb" class="list-group-item">妖精的尾巴</a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=xzds" class="list-group-item">学战都市</a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yl" class="list-group-item">牙狼</a>
				   </div>
				   <div class="tab-pane fade" id="sun">
				      <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=fxdmn" class="list-group-item active" style="background-color:#F16985;border-color:#F16985">
					                      飞翔的魔女<span class="badge">新</span>
					  </a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=wdyxxy" class="list-group-item">我的英雄学院<span class="badge">新</span></a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=jjcfz" class="list-group-item">境界触发者</a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=lzc" class="list-group-item">龙珠超</a>
					  <a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=crhx" class="list-group-item">超人幻想</a>
				   </div>
				</div><!-- tabContentEnd -->
				
				<div style="width:100%;margin-top:50px">
					<form class="form-inline" role="form">
					  <div class="form-group">
					    <input  id="bdcsMain" type="text" class="form-control" style="width:270px;margin-right:15px;display:inline-block;" placeholder="站内搜索">
					    <button type="submit" style="display:inline-block;" class="btn btn-danger">搜索</button>
					  </div>
					 </form>
					
				</div>
				
				
				
				
			
				<div class="panel panel-success" style="margin-top:50px;margin-bottom: 0px">
				   <div class="panel-heading">
				      <h3 class="panel-title">本周公告</h3>
				   </div>
				</div>
				
				
				


				
				<!-- collapse -->
				
<div class="panel-group" id="accordion" style="margin-top:0px;padding:0px">
    <div class="panel panel-warning"  style="margin:0px;padding:0px">
      <div class="panel-heading">
         <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" 
               href="#collapseOne">
            	   断更
            </a>
         </h4>
      </div>
      <div id="collapseOne" class="panel-collapse collapse in">
         <div class="panel-body">
          由于某些原因导致某些动漫没有及时更新,请大家谅解
         </div>
      </div>
   </div>
   <div class="panel panel-warning"  style="margin:0px;padding:0px">
      <div class="panel-heading">
         <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" 
               href="#collapseTwo">
             	本站最新动态
            </a>
         </h4>
      </div>
      <div id="collapseTwo" class="panel-collapse collapse">
         <div class="panel-body">
      	    本站最近将会有小幅度改版,敬请期待
         </div>
      </div>
   </div>
   <div class="panel panel-warning"  style="margin:0px;padding:0px">
      <div class="panel-heading">
         <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" 
               href="#collapseThree">
             站长感言
            </a>
         </h4>
      </div>
      <div id="collapseThree" class="panel-collapse collapse">
         <div class="panel-body">
        	 网站刚刚建立,可能显得很simple
      	 	 维护一个网站真的好麻烦
         </div>
      </div>
   </div>
   <!-- <div class="panel panel-warning"  style="margin:0px;padding:0px">
      <div class="panel-heading">
         <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" 
               href="#collapseFour">
             4  点击我进行展开，
            </a>
         </h4>
      </div>
      <div id="collapseFour" class="panel-collapse collapse">
         <div class="panel-body">
          44  Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred 
            nesciunt sapiente ea proident. Ad vegan excepteur butcher vice 
            lomo.
         </div>
      </div>
   </div> -->
</div>
				
				
				<!-- collapseEnd -->
				<div style="margin-top:50px;margin-bottom: 0px;box-shadow:0 0 10px rgba(92,92,92,0.4);
	-webkit-box-shadow:0 0 10px rgba(92,92,92,0.4);
	-moz-box-shadow:0 0 10px rgba(92,92,92,0.4);">
					<div style="width:360px;height:33px;">
						<button id="myCustomButtonTab1" type="button" class="btn btn-default" style="color:#ffffff;background-color: #DBA939;margin-left: 6px;margin-right: 3px">站长推荐</button>
						<button id="myCustomButtonTab2" type="button" class="btn btn-default" style="color:#ffffff;background-color: #CA3D40;margin-left: 0px;margin-right: 3px">热血经典</button>
						<button id="myCustomButtonTab3" type="button" class="btn btn-default" style="color:#ffffff;background-color: #4B84C3;margin-left: 0px;margin-right: 3px">又见后宫</button>
						<button id="myCustomButtonTab4" type="button" class="btn btn-default" style="color:#ffffff;background-color: #4B84C3;margin-left: 0px;margin-right: 3px">日常日常</button>
					</div>
					<div class="myCustomButtonTabContent">
						<div class="myCustomButtonTabA">
						
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=tjcdkbnr">铁甲城的卡巴内瑞</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=wdyxxy">我的英雄学院</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=jjdqmmx">JOJO的奇妙冒险(不灭钻石)</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=crhx">超人幻想</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=hbw">海扁王</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=lzc">龙珠超</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=hyrzjfz">火影忍者疾风传</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=zhj">镇魂街</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=nmhx">纳米核心</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=jdzsgd">机动战士高达</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=sxzyys">双星之阴阳师</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=mj">迷家</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=zgzl">至高指令</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yls">野良神 ARAGOTO</a></span>
						</div>
						<div class="myCustomButtonTabB">
							
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=djsy">刀剑神域</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=ss">死神</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=swbj">死亡笔记</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=zewg">罪恶王冠</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=jjdjr">进击的巨人</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=jss">寄生兽</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=djcz">东京喰种</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=xj">黑街</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=mysdxqt">没有神的星期天</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=ab">Angel Beats</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=jjdqmmx">JOJO的奇妙冒险</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=ldqsyxt">落第骑士英雄谭</a></span>
						</div>
						<div class="myCustomButtonTabC">
							
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=mwndtjrc">魔物娘的同居日常</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=ctjyqrmfs">山田君与七人魔法使</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=qdzdxcdxhyc">期待在地下城邂逅有错</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhdzz">约会大作战第一季&第二季</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=zrwbdszjl">最弱无败的神装机龙 </a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=wdqclawygrywt">我的青春恋爱物语果然有问题。 </a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=gjhgxywx">管家后宫学园无修</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhdzzjcbwylcj">约会大作战剧场版 万由里裁决 </a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=jlsdjw">精灵使的剑舞</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=wdpyhs">我的朋友很少</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yndxz">有你的小镇</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=xzds">学战都市Asterisk </a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=xklqswx">星刻龙骑士无修</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=mjj">魔剑姬</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=xsyxdlpbknsns">线上游戏的老婆不可能是女生</a></span>
						</div>
						<div class="myCustomButtonTabD">
							
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=lgcrdxs">凉宫春日的消失</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=gyjddzqsyff">狗与剪刀的正确使用方法</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=mwyh">猫物语（黑） </a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=wyxl2">物语系列2nd season</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=hwy">化物语</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=wyxl-zzb">物语系列-最终部</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=wtetdlzyj">问题儿童都来自异世界</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=dbnyqcn">电波女与青春男</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=shw">死后文</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=zwy">终物语</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=wbbjdgznxdsmyb">我被绑架到贵族女校当“庶民样本”</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=lgcrdyydlj">凉宫春日的忧郁 第二季</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=wohxny">我的狐仙女友</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=zebyytla">中二病也要谈恋爱</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=rcxdynzd">日常系的异能战斗</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=wycwsmw">我要成为双马尾</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=mmtt">我的青春恋爱喜剧果然有问题</a></span>
							<span><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=mmtt">干物妹</a></span>
						</div>
					</div>
				
				</div>
				<!-- 多说评论框 start -->
	<div class="ds-thread" style="width:100%;border:1px solid #ddd;position:relative;margin:30px auto;padding:10px" data-thread-key="contentFrame" data-title="contentFrame" data-url="请替换成文章的网址"></div>
	<!-- 多说评论框 end -->
	<!-- 多说公共JS代码 start (一个网页只需插入一次) -->
	<script type="text/javascript">
	var duoshuoQuery = {short_name:"ttdmapplinzi"};
		(function() {
			var ds = document.createElement('script');
			ds.type = 'text/javascript';ds.async = true;
			ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
			ds.charset = 'UTF-8';
			(document.getElementsByTagName('head')[0] 
			 || document.getElementsByTagName('body')[0]).appendChild(ds);
		})();
	</script>
	<!-- 多说公共JS代码 end -->
				</div> <!-- myTabsEnd -->
			
		
				
			
			 
			<div class="myCustomSpan2">
				
				<ul id="myTab" class="nav nav-tabs nav-pills">
				   <li style="color:#F16985;display: inline-block;width:300px"><strong><big>一周更新列表</big></strong></li>
				   <li class="myActive">
				      <a href="#mon1" data-toggle="tab">
				       	  周一
				      </a>
				   </li>
				   <li class="myActive"><a href="#tue1" data-toggle="tab">周二</a></li>
				   <li class="myActive"><a href="#wed1" data-toggle="tab">周三</a></li>
				   <li class="myActive"><a href="#thu1" data-toggle="tab">周四</a></li>
				   <li class="myActive"><a href="#fri1" data-toggle="tab">周五</a></li>
				   <li class="myActive"><a href="#sat1" data-toggle="tab">周六</a></li>
				   <li class="myActive"><a href="#sun1" data-toggle="tab">周日</a></li>
				  
				</ul>
				
				
				
				
				
				<div id="myTabContent" class="tab-content">
				   <div class="tab-pane fade" id="mon1">
				   <!-- 图片单元 -->
				    <div onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=clksdysjsh'" style="width:240px;position: absolute;left:10px;top:60px;display: inline-block;">
				   	 
						<div class="grid">
						<figure class="effect-zoe">
							<img src="images/pic1/从零开始的异世界生活.jpg" title="从零开始的异世界生活"/>
							<figcaption>
								<h2>从零开始的异世界生活</h2>
								<!-- <p>把人从死亡线上拉回来的超能力</p> -->
								<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=clksdysjsh">View more</a>
							</figcaption>			
						</figure>
						</div>
						<h5><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=clksdysjsh">从零开始的异世界生活</a></h5>
						
					  
					
				     </div>
				     <!-- 图片单元 --> 
				   <!-- 图片单元 -->
				    <div onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=dnhydx'"  style="width:240px;position: absolute;left:260px;top:60px;display: inline-block;">
				   	 
						<div class="grid">
						<figure class="effect-zoe">
							<img src="images/pic1/当女孩遇到熊.jpg" title="当女孩遇到熊"/>
							<figcaption>
								<h2>当女孩遇到熊</h2>
								<p></p>
								<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=dnhydx">View more</a>
							</figcaption>			
						</figure>
						</div>
						<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=dnhydx">当女孩遇到熊</a>
					  
				     </div>
				     <!-- 图片单元 --> 
				    <div onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=mbdlhp'"  style="width:240px;position: absolute;left:510px;top:60px;display: inline-block;">
				   	  
						<div class="grid">
						<figure class="effect-zoe">
							<img src="images/pic1/面包带来和平.jpg" title="面包带来和平"/>
							<figcaption>
								<h2>面包带来和平</h2>
								<p></p>
								<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=mbdlhp">View more</a>
							</figcaption>			
						</figure>
						</div>
						<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=mbdlhp">面包带来和平</a>
					  
				     </div>
				     <!-- 图片单元 --> 
				   <!-- 图片单元 -->
				    <div onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=12s'"  style="width:240px;position: absolute;left:10px;top:250px;display: inline-block;">
				   	  
						<div class="grid">
						<figure class="effect-zoe">
							<img src="images/pic1/12岁.jpg" title="12岁"/>
							<figcaption>
								<h2>12岁</h2>
								<p></p>
								<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=12s">View more</a>
							</figcaption>			
						</figure>
						</div>
						<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=12s">12岁</a>
					
				     </div>
				     <!-- 图片单元 --> 
				   <!-- 图片单元 -->
				    
				     <!-- 图片单元 --> 
				    
				     <!-- 图片单元 --> 
				      
				      
				   </div><!-- Monday -->
				   <div class="tab-pane fade" id="tue1">
				       <div  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=wmzyj'"  style="width:240px;position: absolute;left:10px;top:60px;display: inline-block;">
				   	  
						<div class="grid">
						<figure class="effect-zoe">
							<img src="images/pic1/我们这一家.jpg" title="我们这一家"/>
							<figcaption>
								<h2>我们这一家</h2>
								<p></p>
								<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=wmzyj">View more</a>
							</figcaption>			
						</figure>
						</div>
						<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=wmzyj">我们这一家</a>
					
				     </div>
				       <div  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=jokergame'" style="width:240px;position: absolute;left:260px;top:60px;display: inline-block;">
				   	  
						<div class="grid">
						<figure class="effect-zoe">
							<img src="images/pic1/jokergame.jpg" title="JOKER　GAME"/>
							<figcaption>
								<h2>JOKER　GAME</h2>
								<p></p>
								<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=jokergame">View more</a>
							</figcaption>			
						</figure>
						</div>
						<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=jokergame">JOKER　ＧＡＭＥ</a>
					
				     </div>
				       <div  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=bwzzj'" style="width:240px;position: absolute;left:510px;top:60px;display: inline-block;">
				   	  
						<div class="grid">
						<figure class="effect-zoe">
							<img src="images/pic1/百武装战纪.jpg" title="百武装战纪"/>
							<figcaption>
								<h2>百武装战纪</h2>
								<p></p>
								<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=bwzzj">View more</a>
							</figcaption>			
						</figure>
						</div>
						<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=bwzzj">百武装战纪</a>
					
				     </div>
				     
				     
				     
				     
				     
				     
				     
				     
				     
				     
				   </div>
				   
				   
				   <div class="tab-pane fade" id="wed1">
				      <div  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=yydsj'" style="width:240px;position: absolute;left:10px;top:60px;display: inline-block;">
				   	  
						<div class="grid">
						<figure class="effect-zoe">
							<img src="images/pic1/银魂第三季.jpg" title="银魂第三季"/>
							<figcaption>
								<h2>银魂     第三季</h2>
								<p></p>
								<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yydsj">View more</a>
							</figcaption>			
						</figure>
						</div>
						<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yydsj">银魂</a>
					
				     </div>
				      <div onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=zdzh'"  style="width:240px;position: absolute;left:260px;top:60px;display: inline-block;">
				   	  
						<div class="grid">
						<figure class="effect-zoe">
							<img src="images/pic1/战斗之魂.jpg" title="战斗之魂"/>
							<figcaption>
								<h2>战斗之魂     第八季</h2>
								<p></p>
								<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=zdzh">View more</a>
							</figcaption>			
						</figure>
						</div>
						<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=zdzh">战斗之魂</a>
					
				     </div>
				     
				     
				     
				     
				   </div>
				   <div class="tab-pane fade" id="thu1">
				       <div  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=whyq'" style="width:240px;position: absolute;left:10px;top:60px;display: inline-block;">
				   	  
						<div class="grid">
						<figure class="effect-zoe">
							<img src="images/pic1/文豪野犬.jpg" title="文豪野犬"/>
							<figcaption>
								<h2>文豪野犬</h2>
								<p></p>
								<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=whyq">View more</a>
							</figcaption>			
						</figure>
						</div>
						<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=whyq">文豪野犬</a>
					
				     </div>
				   </div>
				   <div class="tab-pane fade" id="fri1">
				     <div onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=tjcdkbnr'"  style="width:240px;position: absolute;left:10px;top:60px;display: inline-block;">
				   	  
						<div class="grid">
						<figure class="effect-zoe">
							<img src="images/pic1/铁甲城的卡巴内瑞2.jpg" title="铁甲城的卡巴内瑞"/>
							<figcaption>
								<h2>铁甲城的卡巴内瑞</h2>
								<p></p>
								<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=tjcdkbnr">View more</a>
							</figcaption>			
						</figure>
						</div>
						<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=tjcdkbnr">铁甲城的卡巴内瑞</a>
					
				     </div>
				     <div onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=mj'"  style="width:240px;position: absolute;left:260px;top:60px;display: inline-block;">
				   	  
						<div class="grid">
						<figure class="effect-zoe">
							<img src="images/pic1/迷家.jpg" title="迷家"/>
							<figcaption>
								<h2>迷家</h2>
								<p></p>
								<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=mj">View more</a>
							</figcaption>			
						</figure>
						</div>
						<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=mj">迷家</a>
					
				     </div>
				   </div>
				   <div class="tab-pane fade" id="sat1">
				      <div  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=yr'" style="width:240px;position: absolute;left:10px;top:60px;display: inline-block;">
				   	  
						<div class="grid">
						<figure class="effect-zoe">
							<img src="images/pic1/亚人4.jpg" title="亚人"/>
							<figcaption>
								<h2>亚人</h2>
								<p></p>
								<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yr">View more</a>
							</figcaption>			
						</figure>
						</div>
						<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yr">亚人</a>
					
				     </div>
				      <div onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=cyh'"  style="width:240px;position: absolute;left:260px;top:60px;display: inline-block;">
				   	  
						<div class="grid">
						<figure class="effect-zoe">
							<img src="images/pic1/潮与虎.jpg" title="潮与虎"/>
							<figcaption>
								<h2>潮与虎   第二季</h2>
								<p></p>
								<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=cyh">View more</a>
							</figcaption>			
						</figure>
						</div>
						<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=cyh">潮与虎</a>
					
				     </div>
				      <div onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=xzds'"  style="width:240px;position: absolute;left:510px;top:60px;display: inline-block;">
				   	  
						<div class="grid">
						<figure class="effect-zoe">
							<img src="images/pic1/学战都市.jpg" title="学战都市"/>
							<figcaption>
								<h2>学战都市   第二季</h2>
								<p></p>
								<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=xzds">View more</a>
							</figcaption>			
						</figure>
						</div>
						<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=xzds">学战都市</a>
					
				     </div>
				   </div>
				   <div class="tab-pane fade" id="sun1">
				      <div onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=cskys'"  style="width:240px;position: absolute;left:10px;top:60px;display: inline-block;">
				   	  
						<div class="grid">
						<figure class="effect-zoe">
							<img src="images/pic1/超时空要塞.jpg" title="超时空要塞"/>
							<figcaption>
								<h2>超时空要塞</h2>
								<p></p>
								<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=cskys">View more</a>
							</figcaption>			
						</figure>
						</div>
						<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=cskys">超时空要塞</a>
					
				     </div>
				      <div onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=fxdmn'"  style="width:240px;position: absolute;left:260px;height:150px;top:60px;display: inline-block;">
				   	  
						<div class="grid">
						<figure class="effect-zoe">
							<img src="images/pic1/飞翔的魔女.jpg" title="飞翔的魔女" style="width:240px;height:150px"/>
							<figcaption>
								<h2>飞翔的魔女</h2>
								<p></p>
								<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=fxdmn">View more</a>
							</figcaption>			
						</figure>
						</div>
						<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=fxdmn">飞翔的魔女</a>
					
				     </div>
				      <div onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=wdyxxy'"  style="width:240px;position: absolute;left:510px;top:60px;display: inline-block;">
				   	  
						<div class="grid">
						<figure class="effect-zoe">
							<img src="images/pic1/我的英雄学院.jpg" title="我的英雄学院"  style="width:240px;height:150px"/>
							<figcaption>
								<h2>我的英雄学院</h2>
								<p></p>
								<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=wdyxxy">我的英雄学院</a>
							</figcaption>			
						</figure>
						</div>
						<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=wdyxxy">我的英雄学院</a>
					
				     </div>
				      <div onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=mbdlhp'"  style="width:240px;position: absolute;left:10px;top:250px;display: inline-block;">
				   	  
						<div class="grid">
						<figure class="effect-zoe">
							<img src="images/pic1/面包带来和平.jpg" title="面包带来和平"/>
							<figcaption>
								<h2>面包带来和平</h2>
								<p></p>
								<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=mbdlhp">面包带来和平</a>
							</figcaption>			
						</figure>
						</div>
						<a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=mbdlhp">面包带来和平</a>
					
				     </div>
				   </div>
				</div>
			</div><!-- mySpan2End -->
			
			
			
			
			
			
			
			
			
			
			
			
			
	
	<!-- mySpan3 start-->
	
	<div class="myCustomSpan3">

	
		<div class="myCustomBreadcrumb">
			<ol class="breadcrumb" style="background-color:#ffffff;height:40px;margin-bottom: 10px">
			  <li class="active" style="color:#F16985"><h4>经典剧场</h4></li>
			  <li><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=ss">死神</a></li>
			  <li><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=jtjs">家庭教师</a></li>
			  <li><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=lz">龙珠</a></li>
			  <li><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=qyc">犬夜叉</a></li>
			  <li><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=hmbb">海绵宝宝</a></li>
			</ol>
			<hr style="width:740px;height:2px;border:none;border-top:2px solid #F16985;margin-left:10px;margin-top: 0px"/>
		</div>
		
		<div class="cms-home">
			<DIV class="indent-col-main">
				<DIV class="std"><BR>
				</DIV>
				<DIV class="block-slider">
					<DIV class="anythingSlider">
						<UL id="slider_list" class="products-grid">
							<LI class="item first"  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=myszmjcb" > 
							<A class=product-image title="命运石之门剧场版" href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=myszmjcb">
							<IMG title="命运石之门剧场版" src="images/multiPicCoursel/命运石之门剧场版.jpg" width=170 height=257></A>
								<H3 class=product-name>
								<A title="命运石之门剧场版" href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=myszmjcb">命运石之门剧场版</A>
									<BUTTON class="button btn-cart" title="Add to Cart" >
										<SPAN><SPAN>
										</SPAN></SPAN>
									</BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=myszmjcb">命运石之门剧场版</a></h5></div>
							</LI>
							
							<LI class=item  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhzsjcb" ><A class=product-image title="萤火之森" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhzsjcb"><IMG 
			  alt="萤火之森" src="images/multiPicCoursel/萤火之森.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="萤火之森" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhzsjcb">萤火之森</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhzsjcb">萤火之森</a></h5></div>
							</LI>
							
							<LI class=item  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=ssjcb" ><A class=product-image title="死神剧场版大合集" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=ssjcb"><IMG 
			  title="死神" src="images/multiPicCoursel/死神剧场版.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="死神剧场版大合集" href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=ssjcb">死神剧场版大合集</A>
									<BUTTON class="button btn-cart" title="Add to Cart"><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=ssjcb">死神</a></h5></div>
							</LI>
							
							<LI class=item  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=kzjjjcb" ><A class=product-image title="空之境界剧场版" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=kzjjjcb"><IMG 
			  title="空之境界剧场版" src="images/multiPicCoursel/空之境界剧场版.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="空之境界剧场版" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=kzjjjcb">空之境界剧场版</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=kzjjjcb">空之境界</a></h5></div>
							</LI>
							<LI class=item  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhdzzjcb" ><A class=product-image title="约会大作战剧场版" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhdzzjcb"><IMG 
			  title="约会大作战剧场版" src="images/multiPicCoursel/约会大作战剧场版.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="约会大作战剧场版" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhdzzjcb">约会大作战剧场版</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhdzzjcb">约会大作战</a></h5></div>
							</LI>
							<LI class="item last"  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=xdnydqsjcb" ><A class=product-image title="希德尼娅的骑士剧场版" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=xdnydqsjcb"><IMG 
			  title="希德尼娅的骑士剧场版" src="images/multiPicCoursel/希德尼娅的骑士剧场版.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="Lorem ipsum dolor sit 3" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=xdnydqsjcb">希德尼娅的骑士剧场版</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=xdnydqsjcb">希德尼娅的骑士剧场版</a></h5></div>
							</LI>
							<LI class="item last"  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=hyrzjcb" ><A class=product-image title="火影忍者剧场版" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=hyrzjcb"><IMG 
			  title="火影忍者剧场版" src="images/multiPicCoursel/火影忍者剧场版.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="Lorem ipsum dolor sit 3" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=hyrzjcb">火影忍者剧场版大合集</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=hyrzjcb">火影忍者剧场版</a></h5></div>
							</LI>
						</UL>
					</DIV>
				</DIV>
				<DIV id=left_but class="box-left"></DIV>
				<DIV id=right_but class="box-right"></DIV>
			</DIV>
	
	</div>
</div> 
			<!-- mySpan3 End -->
			
			
			
			
			
			
			
			
			
			
			<!-- mySpan4 Start -->
			
			<div class="myCustomSpan4">
			
			
			
			
		<div class="myCustomBreadcrumb">
			<ol class="breadcrumb" style="background-color:#ffffff;height:40px;margin-bottom: 10px">
			  <li class="active" style="color:#F16985"><h4>人气作品</h4></li>
			  <li><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yr">亚人</a></li>
			  <li><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=myszm">命运石之门</a></li>
			  <li><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=zywbczdjd">只有我不存在的街道</a></li>
			  <li><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=tjcdkbnr">铁甲城的卡巴内瑞</a></li>
			  <li><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yjdwb">妖精的尾巴</a></li>
			</ol>
			<hr style="width:740px;height:2px;border:none;border-top:2px solid #F16985;margin-left:10px;margin-top: 0px"/>
		</div>
		
	
			
	<div class="cms-home">
			<DIV class="indent-col-main">
				<DIV class="std"><BR>
				</DIV>
				<DIV class="block-slider">
					<DIV class="anythingSlider">
						<UL id="slider_list" class="products-grid">
							<LI class="item first"  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=qzlr" > 
							<A class=product-image title="全职猎人" href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=qzlr">
							<IMG alt="全职猎人" src="images/multiPicCoursel/全职猎人.jpg" width=170 height=257></A>
								<H3 class=product-name>
								<A title="全职猎人" href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=qzlr">全职猎人</A>
									<BUTTON class="button btn-cart" title="Add to Cart" >
										<SPAN><SPAN>
										</SPAN></SPAN>
									</BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=qzlr">全职猎人</a></h5></div>
							</LI>
							
							<LI class=item  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhzsjcb" ><A class=product-image title="萤火之森" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhzsjcb"><IMG 
			  alt="萤火之森" src="images/multiPicCoursel/萤火之森.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="萤火之森" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhzsjcb">萤火之森</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhzsjcb">萤火之森</a></h5></div>
							</LI>
							
							<LI class=item  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=ssjcb" ><A class=product-image title="死神剧场版大合集" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=ssjcb"><IMG 
			  title="死神" src="images/multiPicCoursel/死神剧场版.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="死神剧场版大合集" href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=ssjcb">死神剧场版大合集</A>
									<BUTTON class="button btn-cart" title="Add to Cart"><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=ssjcb">死神</a></h5></div>
							</LI>
							
							<LI class=item  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=xmyrz" ><A class=product-image title="夏目友人帐" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=xmyrz"><IMG 
			  title="夏目友人帐" src="images/multiPicCoursel/夏目友人帐.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="夏目友人帐" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=xmyrz">夏目友人帐</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=xmyrz">夏目友人帐</a></h5></div>
							</LI>
							<LI class=item  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhdzzjcb" ><A class=product-image title="约会大作战剧场版" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhdzzjcb"><IMG 
			  title="约会大作战剧场版" src="images/multiPicCoursel/约会大作战剧场版.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="约会大作战剧场版" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhdzzjcb">约会大作战剧场版</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhdzzjcb">约会大作战</a></h5></div>
							</LI>
							<LI class="item"  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=qysn" ><A class=product-image title="轻音少女" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=qysn"><IMG 
			  title="轻音少女" src="images/multiPicCoursel/轻音少女.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="Lorem ipsum dolor sit 3" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=qysn">轻音少女</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=qysn">轻音少女</a></h5></div>
							</LI>
							<LI class="item last"  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=hyrzjcb" ><A class=product-image title="火影忍者剧场版" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=hyrzjcb"><IMG 
			  title="火影忍者剧场版" src="images/multiPicCoursel/火影忍者剧场版.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="Lorem ipsum dolor sit 3" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=hyrzjcb">火影忍者剧场版大合集</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=hyrzjcb">火影忍者剧场版</a></h5></div>
							</LI>
						</UL>
					</DIV>
				</DIV>
				<DIV id=left_but class="box-left"></DIV>
				<DIV id=right_but class="box-right"></DIV>
			</DIV>
	
	</div>
	
	
	</div><!-- myspan4End -->
			
			
		
			
			<!-- mySpan4 End -->
		<!-- mySpan5 start-->
	
	<div class="myCustomSpan5">

	
		<div class="myCustomBreadcrumb">
			<ol class="breadcrumb" style="background-color:#ffffff;height:40px;margin-bottom: 10px">
			  <li class="active" style="color:#F16985"><h4>热门日剧</h4></li>
			  <li><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=ss">死神</a></li>
			  <li><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=jtjs">家庭教师</a></li>
			  <li><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=lz">龙珠</a></li>
			  <li><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=qyc">犬夜叉</a></li>
			  <li><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=hmbb">海绵宝宝</a></li>
			</ol>
			<hr style="width:740px;height:2px;border:none;border-top:2px solid #F16985;margin-left:10px;margin-top: 0px"/>
		</div>
		
		<div class="cms-home">
			<DIV class="indent-col-main">
				<DIV class="std"><BR>
				</DIV>
				<DIV class="block-slider">
					<DIV class="anythingSlider">
						<UL id="slider_list" class="products-grid">
							<LI class="item first"  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=myszmjcb" > 
							<A class=product-image title="命运石之门剧场版" href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=myszmjcb">
							<IMG title="命运石之门剧场版" src="images/multiPicCoursel/命运石之门剧场版.jpg" width=170 height=257></A>
								<H3 class=product-name>
								<A title="命运石之门剧场版" href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=myszmjcb">命运石之门剧场版</A>
									<BUTTON class="button btn-cart" title="Add to Cart" >
										<SPAN><SPAN>
										</SPAN></SPAN>
									</BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=myszmjcb">命运石之门剧场版</a></h5></div>
							</LI>
							
							<LI class=item  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhzsjcb" ><A class=product-image title="萤火之森" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhzsjcb"><IMG 
			  alt="萤火之森" src="images/multiPicCoursel/萤火之森.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="萤火之森" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhzsjcb">萤火之森</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhzsjcb">萤火之森</a></h5></div>
							</LI>
							
							<LI class=item  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=ssjcb" ><A class=product-image title="死神剧场版大合集" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=ssjcb"><IMG 
			  title="死神" src="images/multiPicCoursel/死神剧场版.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="死神剧场版大合集"  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=ssjcb">死神剧场版大合集</A>
									<BUTTON class="button btn-cart" title="Add to Cart"><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=ssjcb">死神</a></h5></div>
							</LI>
							
							<LI class=item  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=bzzs" ><A class=product-image title="半泽直树" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=bzzs"><IMG 
			  title="半泽直树" src="images/multiPicCoursel/半泽直树.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="半泽直树" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=bzzs">半泽直树</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=bzzs">半泽直树</a></h5></div>
							</LI>
							<LI class=item  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=syst'" ><A class=product-image title="深夜食堂" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=syst"><IMG 
			  title="深夜食堂" src="images/multiPicCoursel/深夜食堂.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="深夜食堂" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=syst">深夜食堂</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=syst">深夜食堂</a></h5></div>
							</LI>
							<LI class="item last"  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=xdnydqsjcb'" ><A class=product-image title="希德尼娅的骑士剧场版" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=xdnydqsjcb"><IMG 
			  title="希德尼娅的骑士剧场版" src="images/multiPicCoursel/希德尼娅的骑士剧场版.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="Lorem ipsum dolor sit 3" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=xdnydqsjcb">希德尼娅的骑士剧场版</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=xdnydqsjcb">希德尼娅的骑士剧场版</a></h5></div>
							</LI>
							<LI class="item last"  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=hyrzjcb'" ><A class=product-image title="火影忍者剧场版" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=hyrzjcb"><IMG 
			  title="火影忍者剧场版" src="images/multiPicCoursel/火影忍者剧场版.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="Lorem ipsum dolor sit 3" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=hyrzjcb">火影忍者剧场版大合集</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=hyrzjcb">火影忍者剧场版</a></h5></div>
							</LI>
						</UL>
					</DIV>
				</DIV>
				<DIV id=left_but class="box-left"></DIV>
				<DIV id=right_but class="box-right"></DIV>
			</DIV>
	
	</div>
</div> 
			<!-- mySpan5 End -->
			<!-- mySpan6 start-->
	
	<div class="myCustomSpan6">

	
		<div class="myCustomBreadcrumb">
			<ol class="breadcrumb" style="background-color:#ffffff;height:40px;margin-bottom: 10px">
			  <li class="active" style="color:#F16985"><h4>站长精选</h4></li>
			  <li><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=ss">死神</a></li>
			  <li><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=jtjs">家庭教师</a></li>
			  <li><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=lz">龙珠</a></li>
			  <li><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=qyc">犬夜叉</a></li>
			  <li><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=hmbb">海绵宝宝</a></li>
			</ol>
			<hr style="width:740px;height:2px;border:none;border-top:2px solid #F16985;margin-left:10px;margin-top: 0px"/>
		</div>
		
		<div class="cms-home">
			<DIV class="indent-col-main">
				<DIV class="std"><BR>
				</DIV>
				<DIV class="block-slider">
					<DIV class="anythingSlider">
						<UL id="slider_list" class="products-grid">
							<LI class="item first"  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=myszmjcb" > 
							<A class=product-image title="命运石之门剧场版" href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=myszmjcb">
							<IMG title="命运石之门剧场版" src="images/multiPicCoursel/命运石之门剧场版.jpg" width=170 height=257></A>
								<H3 class=product-name>
								<A title="命运石之门剧场版" href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=myszmjcb">命运石之门剧场版</A>
									<BUTTON class="button btn-cart" title="Add to Cart" >
										<SPAN><SPAN>
										</SPAN></SPAN>
									</BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=myszmjcb">命运石之门剧场版</a></h5></div>
							</LI>
							
							<LI class=item  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhzsjcb" ><A class=product-image title="萤火之森" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhzsjcb"><IMG 
			  alt="萤火之森" src="images/multiPicCoursel/萤火之森.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="萤火之森" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhzsjcb">萤火之森</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhzsjcb">萤火之森</a></h5></div>
							</LI>
							
							<LI class=item  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=ssjcb" ><A class=product-image title="死神剧场版大合集" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=ssjcb"><IMG 
			  title="死神" src="images/multiPicCoursel/死神剧场版.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="死神剧场版大合集"  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=ssjcb">死神剧场版大合集</A>
									<BUTTON class="button btn-cart" title="Add to Cart"><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=ssjcb">死神</a></h5></div>
							</LI>
							
							<LI class=item  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=angelbeats" ><A class=product-image title="Angel Beats" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=angelbeats"><IMG 
			  title="Angel Beats" src="images/multiPicCoursel/angelbeats.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="Angel Beats" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=angelbeats">Angel Beats</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=angelbeats">Angel Beats</a></h5></div>
							</LI>
							<LI class=item  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhdzzjcb" ><A class=product-image title="约会大作战剧场版" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhdzzjcb"><IMG 
			  title="约会大作战剧场版" src="images/multiPicCoursel/约会大作战剧场版.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="约会大作战剧场版" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhdzzjcb">约会大作战剧场版</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=yhdzzjcb">约会大作战</a></h5></div>
							</LI>
							<LI class="item last"  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=xdnydqsjcb" ><A class=product-image title="希德尼娅的骑士剧场版" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=xdnydqsjcb"><IMG 
			  title="希德尼娅的骑士剧场版" src="images/multiPicCoursel/希德尼娅的骑士剧场版.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="Lorem ipsum dolor sit 3" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=xdnydqsjcb">希德尼娅的骑士剧场版</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=xdnydqsjcb">希德尼娅的骑士剧场版</a></h5></div>
							</LI>
							<LI class="item last"  onclick="document.location='${pageContext.request.contextPath }/user/contentFrame.action?itemename=charlotte" ><A class=product-image title="charlotte" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=charlotte"><IMG 
			  title="charlotte" src="images/multiPicCoursel/charlotte.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="Lorem ipsum dolor sit 3" 
			  href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=charlotte">charlotte</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="${pageContext.request.contextPath }/user/contentFrame.action?itemename=charlotte">charlotte</a></h5></div>
							</LI>
						</UL>
					</DIV>
				</DIV>
				<DIV id=left_but class="box-left"></DIV>
				<DIV id=right_but class="box-right"></DIV>
			</DIV>
	
	</div>
</div> 
			<!-- mySpan6 End -->
	</div><!-- containerEnd ////////////////////////////-->
	
	
	<div style="width:100%;background-color:#222;">
	<div  style="width:1366px;height:320px;background-color:#222;margin-top:50px;margin-left:auto;margin-right:auto">
		<div style="width:80%;height:100%;margin-left:130px;position:relative">
			<div class="footerMsg">
				<h3 style="color:#fff"><strong>关于</strong></h3>
				<h5 style="margin-top:20px;"><a href="#">在线留言</a></h5>
				<h5 style="margin-top:20px"><a href="#">联系投稿</a></h5>
				<h5 style="margin-top:20px"><a href="#">经验交流</a></h5>
				<h5 style="margin-top:20px"><a href="#">github</a></h5>
				<h5 style="margin-top:20px"><a href="#">历史改版</a></h5>
				<h5 style="margin-top:20px"><a href="#">兴趣爱好</a></h5>
			</div>
			<div class="footerMsg">
				<h3 style="color:#fff"><strong>友情链接</strong></h3>
				<h5 style="margin-top:20px"><a href="#">另一个小站</a></h5>
				<h5 style="margin-top:20px"><a href="#">感兴趣</a></h5>
				<h5 style="margin-top:20px"><a href="#">有意思</a></h5>
				<h5 style="margin-top:20px"><a href="#">干货</a></h5>
				<h5 style="margin-top:20px"><a href="#">我的收藏</a></h5>
				<h5 style="margin-top:20px"><a href="#">联系我</a></h5>
			</div>
			<div style="width:400px;height:200px;position:absolute;bottom:60px;left:400px">
				<img src="images/tv.ico" style="width:80px;margin-top:50px;float:left"/>
				<h3 style="display:inline-block;margin-top:60px;margin-left:20px;color:#aaa">我的个人资源分享小博客</h3><br>
				<h6 style="display:inline-block;color:#aaa;margin-left:20px;">http://www.ybcome.com</h6>
			</div>
			
			<div style="width:100%;height:30px;text-align:center;margin-top:10px;display:inline-block;">
				<p style="color:#fff;display:inline-block;">&copy;我的个人资源分享小博客|本站是个动漫分享的个人小博客,本站资源均网络收集,无任何盈利目的,如有侵权,联系24小时内删除</p>&nbsp;&nbsp;
				<script type="text/javascript">
					var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
					document.write(unescape("%3Cspan id='cnzz_stat_icon_1259150916'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s4.cnzz.com/z_stat.php%3Fid%3D1259150916%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));
				</script>
			</div>
				
		
		</div>
	</div>
		
	</div>
	
	
	
</div><!-- 最顶层div -->
	 <!--  -->
	
<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/myDefault.js"></script>	


 	<script type="text/javascript">
					$(function(){
						var i = null;
						$.fn.changeTabState=function(index1){
						$('.myCustomButtonTabA,.myCustomButtonTabB,.myCustomButtonTabC,.myCustomButtonTabD').each(function(index,element) {
							if(index != index1){
								$(this).css('display', 'none');
							}else{
								$(this).css('display', 'block');
							}
						});
							}
							
					$('#myCustomButtonTab1,#myCustomButtonTab2,#myCustomButtonTab3,#myCustomButtonTab4').each(function(index, element) {
						var color = null;
						$(this).hover(function(){
							color = $(this).css('background-color');
							$(this).css('background-color', '#767676');
							i=index;
							$().changeTabState(i);
						},function(){
							$(this).css('background-color', color);
						});
						
					});
					
					});
					
				</script>
				
    
     
     <!-- search -->
     <script type="text/javascript">
     	$(function(){
     		$('#myCustomSearch').hover(function(){
     			$(this).css('color','#F16985');
     		});
     		$('#myCustomSearch').mouseleave(function(){
     			$(this).css('color','#ffffff');
     		});
     		
     	});
     </script>
	<!-- collapse -->
	<script type="text/javascript">
	   $(function () { $('#collapseOne').collapse('toggle')});
	   $(function () { $('#collapseTwo').collapse('toggle')});
	   $(function () { $('#collapseThree').collapse('toggle')});
	   $(function () { $('#collapseFour').collapse({
	      toggle: false
	   })});
	</script>  

	 

	<!-- collapse -->
  	
 
 	<!-- picture轮播 -->
 	<script src="js/jquery.hiSlider.min.js"></script>
 	<script>
 		$(function(){
 			$('.hiSlider1').hiSlider();
 		});
	    
	</script>
	<!-- picture轮播 -->
	
	<!-- 导航栏nav -->
 	<script>
	$(function () {
	    $(window).scroll(function () {
	        var winTop = $(window).scrollTop();
	        if (winTop >= 120) {
	        
	            $('nav').addClass('navbar-fixed-top');
	          	$('.myContainer').css("top", "50px");
	        } else {
	       		
	            $('nav').removeClass('navbar-fixed-top');
	            $('.myContainer').css("top", "10px");
	        }
	    });
	});
	
	
		$(document).ready(function(){
			$('.navbar-header').mouseenter(function(){
				$(this).css('background-color', 'black');
			});
			$('.navbar-header').mouseleave(function(){
				$(this).css('background-color', 'rgba(34,34,34,1)');
			});
			$('.myNavLi').mouseenter(function(){
				$(this).css('background-color', 'black');
			});
			$('.myNavLi').mouseleave(function(){
				$(this).css('background-color','rgba(34,34,34,1)');
			});
		});
	</script>
	<!-- 导航栏nav -->
	<script src="js/jquery.scrollUp.min.js"></script>
		<script type="text/javascript">

            // Parse URL Queries Method
            (function ($) {
                $.getQuery = function (query) {
                    query = query.replace(/[\[]/, '\\\[').replace(/[\]]/, '\\\]');
                    var expr = '[\\?&]' + query + '=([^&#]*)';
                    var regex = new RegExp(expr);
                    var results = regex.exec(window.location.href);
                    if (results !== null) {
                        return results[1];
                    } else {
                        return false;
                    }
                };
            })(jQuery);

			$(function () {
				
                        $.scrollUp({
                            animation: 'fade',
                            activeOverlay: '#00FFFF',
                            scrollImg: {
                                active: true,
                                type: 'background',
                                src: 'images/top.png'
                            }
                        });
                    
                    $('#scrollUpTheme').attr('href', 'css/image.css?1.1');
                    $('.image-switch').addClass('active');
			});
        </script>
        
        
    <!--     <script type="text/javascript">
		
		
		$(function(){
			$('.myCustomUserCenter').hover(function(){
				$('#userHeader').animate({width:'70px',height:'70px'}, 200);
				
				$('.myCustomUserCenter .myCustomDropdownPanel').slideDown(200);
			}, function(){
				$('#userHeader').animate({width:'40px',height:'40px'}, 200);
				$('.myCustomUserCenter .myCustomDropdownPanel').slideUp(200);
			
			});
			
			
			$('.myCustomFavorite').hover(function(){				
				$('.myCustomFavorite .myCustomDropdownPanel').slideDown(200);
			}, function(){
				$('.myCustomFavorite .myCustomDropdownPanel').slideUp(200);
			
			});
			
			
		});
	</script> -->
        
    <SCRIPT type="text/javascript" src="js/multiPicCourselslider.js"></SCRIPT>
	<SCRIPT type="text/javascript" src="js/multiPicCourselslider_options.js"></SCRIPT> 
	
	
	<script type="text/javascript">
		$(function(){
			var today = new Date();
			var day = today.getDay();
			var x = new Array("#mon1", "#tue1", "#wed1", "#thu1", "#fri1","#sat1","#sun1");
			var y = new Array("#mon", "#tue", "#wed", "#thu", "#fri","#sat","#sun");
			$('.myActive').each(function(index){
				if(index<6){
					
						if(day == index+1){
							$(this).addClass("active");
							$(x[index]).addClass("in");
							$(x[index]).addClass("active");
						}
				
							}else{
								if(day==0){
									$(this).addClass("active");
									$(x[index]).addClass("in");
									$(x[index]).addClass("active");
								}
									
							}
				
			});
			$('.myActive1').each(function(index){
					if(index<6){
					
						if(day == index+1){
							$(this).addClass("active");
							$(y[index]).addClass("in");
							$(y[index]).addClass("active");
						}
				
							}else{
								if(day==0){
									$(this).addClass("active");
									$(y[index]).addClass("in");
									$(y[index]).addClass("active");
								}
									
							}
				
			});
		});
	</script>
	
	<script type="text/javascript">
		$(function(){
			$('#searchIcon').on('click', function(){
				$('#searchForm').submit();
			})
		});
	</script>
	<!-- 百度站内搜索 -->
	<script type="text/javascript">
		(function(){document.write(unescape('%3Cdiv id="bdcs"%3E%3C/div%3E'));
		var bdcs = document.createElement('script');
		bdcs.type = 'text/javascript';
		bdcs.async = true;
		bdcs.src = 'http://znsv.baidu.com/customer_search/api/js?sid=10316886824104394470' + '&plate_url=' + encodeURIComponent(window.location.href) + '&t=' + Math.ceil(new Date()/3600000);
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(bdcs, s);})();
	</script>
 	<!-- End -->
  </body>

</html>
