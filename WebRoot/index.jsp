<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	
  	<%@ include file="/common/header.jsp"%>
    <base href="<%=basePath%>">
    
    <title>My Station</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="美剧,动漫,电影">
	<meta http-equiv="description" content="美剧,动漫,电影下载">
  
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="css/myDefault.css"/>
	<link rel="Shortcut Icon" href="images/tv.ico" />
	
	<link rel="stylesheet" type="text/css" href="css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="css/defaultSlider.css" />
	<link rel="stylesheet" href="css/jquery.hiSlider.min.css" />
	
	<link rel="stylesheet" type="text/css" href="css/normalizePicShadow.css" />
	<link rel="stylesheet" type="text/css" href="css/componentPicShadow.css" />
	
	
	<SCRIPT type="text/javascript" src="js/multiPicCourselslider.js"></SCRIPT>
	<SCRIPT type="text/javascript" src="js/multiPicCourselslider_options.js"></SCRIPT> 
	 
	
	<link rel="stylesheet" type="text/css" href="css/multiPicCoursel.css" />
	
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
		 
	</style>
	
	<style type="text/css">
    /* Custom Styles */
    .myCustomAffix ul.nav-tabs{
        width: 50px;
        margin-top: 20px;
        border-radius: 4px;
        border: 1px solid #ddd;
        box-shadow: 0 1px 4px rgba(0, 0, 0, 0.067);
    }
    .myCustomAffix ul.nav-tabs li{
        margin: 0;
        border-top: 1px solid #ddd;
    }
    .myCustomAffix ul.nav-tabs li:first-child{
        border-top: none;
    }
    .myCustomAffix ul.nav-tabs li a{
        margin: 0;
        padding: 8px 16px;
        border-radius: 0;
    }
    .myCustomAffix ul.nav-tabs li.active a, ul.nav-tabs li.active a:hover{
        color: #fff;
        background: #0088cc;
        border: 1px solid #0088cc;
    }
    .myCustomAffix ul.nav-tabs li:first-child a{
        border-radius: 4px 4px 0 0;
    }
    .myCustomAffix ul.nav-tabs li:last-child a{
        border-radius: 0 0 4px 4px;
    }
    .myCustomAffix ul.nav-tabs.affix{
        top: 265px; /* Set the top position of pinned element */
        
    }
</style>
	
	<script type="text/javascript">
		
		
		$(function(){
			$('.myCustomUserCenter').hover(function(){
				$('#userHeader').animate({width:'70px'}, 200);
				
				$('.myCustomUserCenter .myCustomDropdownPanel').slideDown(200);
			}, function(){
				$('#userHeader').animate({width:'40px'}, 200);
				$('.myCustomUserCenter .myCustomDropdownPanel').slideUp(200);
			
			});
			
			
			$('.myCustomFavorite').hover(function(){				
				$('.myCustomFavorite .myCustomDropdownPanel').slideDown(200);
			}, function(){
				$('.myCustomFavorite .myCustomDropdownPanel').slideUp(200);
			
			});
			
			
		});
	</script>
	
  </head>
  
  <body style="width: 1366px;height:4000px"  data-spy="scroll" data-target="#myScrollspy">
  
  	
  	
  	
  	<p class="sr-only" id="section-1">顶部</p>
  	
  	
  	
<!-- 2 --><div class="myNav">
	 		<a href="#" style="padding:3px 0px;">
		 		
		 			<img alt="主页" src="images/tv.ico" style="position:relative;top:5px;
	width:30px;"/>
		 		
	 		</a>
	 		<a>
	 			资讯
	 		</a>
	 		<a>
	 			论坛
	 		</a>
	 		<a>
	 			专区
	 		</a>
	 		<a>
	 			漫画
			</a>
			
			<div class="myCustomUserCenter">
				
				<a>
						<img src="images/userDefault.png" id="userHeader" class="img-circle" style="width:40px">
				
				</a>
				<div class="myCustomDropdownPanel" style="width:200px;height:280px;">
					<span style="margin-top:30px;margin-bottom:10px;display:block;width:200px;height:30px;text-align:center"><strong>用户名</strong></span><hr style="margin:15px auto">
					<span style="display:block;margin:0px auto;width:200px;height:30px;text-align:center"><strong>个人中心</strong></span><hr>
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
						<li><a href="#">铁甲城的卡内巴瑞</a></li>
						<li><a href="#">铁甲城的卡内巴瑞</a></li>
						<li><a href="#">铁甲城的卡内巴瑞</a></li>
						<li><a href="#">铁甲城的卡内巴瑞</a></li>
						<li><a href="#">铁甲城的卡内巴瑞</a></li>
						<li><a href="#">铁甲城的卡内巴瑞</a></li>
					</ul>
				</div>
			</div>
			<c:if test="${sessionScope.user == null}">
			<a href="${pageContext.request.contextPath }/user/login.action" class="sign" id="login" style="color:#ffffff;margin-left:100px;">
				<span><strong>登录</strong></span>
			</a>
			
			
			<a href="${pageContext.request.contextPath }/user/toRegister.action" class="sign" id="register" style="color:#ffffff;margin-left:2px">
			
				<span><strong>注册</strong></span>
				
			</a>
			</c:if>
	 	</div>
	         
	 	
	 	
	 	
	 	
	 	
	 	
	 	
	 	
	 	
	 	
	 	       <!--       mynavEnd     -->
 		<div class="topImg"></div>
 		
 		
 		
 		
 		
 		
 		
 	
	 	
	 	<nav class="navbar navbar-inverse" role="navigation" style="height:54px;width:1366px;
	align:center;">
		 	<div class="navbar-header" style="position: absolute;left:100px">
		      <a class="navbar-brand" href="#">一月新番</a>
		    </div>
		 	<div class="navbar-header" style="position: absolute;left:200px">
		      <a class="navbar-brand" href="#">一月新番</a>
		    </div>
		 	<div class="navbar-header" style="position: absolute;left:300px">
		      <a class="navbar-brand" href="#">一月新番</a>
		    </div>
		 	<div class="navbar-header" style="position: absolute;left:400px">
		      <a class="navbar-brand" href="#">一月新番</a>
		    </div>
	
		 
		   
			   <div class="navbar-header" style="display:inline-block;position:absolute;left:1000px">
			      <a class="navbar-brand" href="#">搜索</a>
			   </div>
			  
			      <form class="navbar-form navbar-left" role="search" style="width:220px;display:inline-block;position:absolute;left:1080px;border:0;float:left;margin:0px;padding-top:10px">
			         <div class="form-group" style="float:left">
			            <input type="text" class="form-control" placeholder="Search">
			   		 </div>&nbsp;&nbsp;
			   		 <div style="display:inline-block;position:absolute;left:200px;top:20px;float:left">
				         <a href="#" style="color:#ffffff;" id="myCustomSearch">
				            <span class="glyphicon glyphicon-search"></span>
				         </a>
			         </div>
			      </form>    
			  </nav>
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
	 	
 	
	 	<div class="myContainer">
	 	
	 		<div class="mySpan1">
	 		
	 		
	 		
	 		
	 		
	 		
			 	<div class="myCarousel">
				 	
						    <ul class="hiSlider hiSlider1">
						        <li data-title="11111" class="hiSlider-item">
						        <img src="images/1.jpg" class="img-rounded">
								</li>
						        <li data-title="22222" class="hiSlider-item"><img src="images/2.jpg" class="img-rounded"></li>
						        <li data-title="33333" class="hiSlider-item"><img src="images/3.jpg" class="img-rounded"></li>
						        <li data-title="44444" class="hiSlider-item"><img src="images/4.jpg" class="img-rounded"></li>
						        <li data-title="55555" class="hiSlider-item"><img src="images/5.jpg" class="img-rounded"></li>
						    </ul>
					
				</div><!-- myCarouselEnd -->
				
				
				
				
				
				
				<div class="smallImg">
					<a href="#" class="thumbnail" style="width:220px;padding:5px;height:146px;margin:5px">
						<img src="images/aa.png" style="width:210px;height:136px">
					</a>
					<a href="#" class="thumbnail" style="width:220px;padding:5px;height:146px;margin:5px">
						<img src="images/bb.png" style="width:210px;height:136px">
					</a>
				</div>
				
				
				
				
				
				
			</div>		<!-- span1 END -->
			
			
			
			
			
			
			<div class="myCustomTab">
				<ul id="myTab" class="nav nav-tabs">
				   <li class="active">
				      <a href="#mon" data-toggle="tab" onFocus="if(this.blur)this.blur()">
				         周一
				      </a>
				   </li>
				   <li><a href="#tue" data-toggle="tab">周二</a></li>
				   <li><a href="#wed" data-toggle="tab">周三</a></li>
				   <li><a href="#thu" data-toggle="tab">周四</a></li>
				   <li><a href="#fri" data-toggle="tab">周五</a></li>
				   <li><a href="#sat" data-toggle="tab">周六</a></li>
				   <li><a href="#sun" data-toggle="tab">周日</a></li>
				   
				</ul>
				
				
				
				
				
				
				<!-- tabContentStart -->
				<div id="myTabContent" class="tab-content">
				   <div class="tab-pane fade in active" id="mon">
				      <a href="#" class="list-group-item active">
					                      免费域名注册<span class="badge">新</span>
					  </a>
					  <a href="#" class="list-group-item">24*7 支持<span class="badge">新</span></a>
					  <a href="#" class="list-group-item">免费 Window 空间托管</a>
					  <a href="#" class="list-group-item">图像的数量</a>
					  <a href="#" class="list-group-item">每年更新成本</a>
	
					  <a href="#" class="list-group-item">免费 Window 空间托管</a>
					  <a href="#" class="list-group-item">图像的数量</a>
					  <a href="#" class="list-group-item">每年更新成本</a>
	
				   </div>
				   <div class="tab-pane fade" id="tue">
				      <a href="#" class="list-group-item active">
					                      免费域名注册<span class="badge">新</span>
					  </a>
					  <a href="#" class="list-group-item">24*7 支持<span class="badge">新</span></a>
					  <a href="#" class="list-group-item">免费 Window 空间托管</a>
					  <a href="#" class="list-group-item">图像的数量</a>
					  <a href="#" class="list-group-item">每年更新成本</a>
				   </div>
				   <div class="tab-pane fade" id="wed">
				      <a href="#" class="list-group-item active">
					                      免费域名注册<span class="badge">新</span>
					  </a>
					  <a href="#" class="list-group-item">24*7 支持<span class="badge">新</span></a>
					  <a href="#" class="list-group-item">免费 Window 空间托管</a>
					  <a href="#" class="list-group-item">图像的数量</a>
					  <a href="#" class="list-group-item">每年更新成本</a>
				   </div>
				   <div class="tab-pane fade" id="thu">
				      <a href="#" class="list-group-item active">
					                      免费域名注册<span class="badge">新</span>
					  </a>
					  <a href="#" class="list-group-item">24*7 支持<span class="badge">新</span></a>
					  <a href="#" class="list-group-item">免费 Window 空间托管</a>
					  <a href="#" class="list-group-item">图像的数量</a>
					  <a href="#" class="list-group-item">每年更新成本</a>
				   </div>
				   <div class="tab-pane fade" id="fri">
				      <a href="#" class="list-group-item active">
					                      免费域名注册<span class="badge">新</span>
					  </a>
					  <a href="#" class="list-group-item">24*7 支持<span class="badge">新</span></a>
					  <a href="#" class="list-group-item">免费 Window 空间托管</a>
					  <a href="#" class="list-group-item">图像的数量</a>
					  <a href="#" class="list-group-item">每年更新成本</a>
				   </div>
				   <div class="tab-pane fade" id="sat">
				      <a href="#" class="list-group-item active">
					                      免费域名注册<span class="badge">新</span>
					  </a>
					  <a href="#" class="list-group-item">24*7 支持<span class="badge">新</span></a>
					  <a href="#" class="list-group-item">免费 Window 空间托管</a>
					  <a href="#" class="list-group-item">图像的数量</a>
					  <a href="#" class="list-group-item">每年更新成本</a>
				   </div>
				   <div class="tab-pane fade" id="sun">
				      <a href="#" class="list-group-item active">
					                      免费域名注册<span class="badge">新</span>
					  </a>
					  <a href="#" class="list-group-item">24*7 支持<span class="badge">新</span></a>
					  <a href="#" class="list-group-item">免费 Window 空间托管</a>
					  <a href="#" class="list-group-item">图像的数量</a>
					  <a href="#" class="list-group-item">每年更新成本</a>
				   </div>
				</div><!-- tabContentEnd -->
				
				
				
				
				
				
			
				<div class="panel panel-success" style="margin-top:50px;margin-bottom: 0px">
				   <div class="panel-heading">
				      <h3 class="panel-title">消息面板</h3>
				   </div>
				</div>
				
				
				


				
				<!-- collapse -->
				
<div class="panel-group" id="accordion" style="margin-top:0px;padding:0px">
    <div class="panel panel-warning"  style="margin:0px;padding:0px">
      <div class="panel-heading">
         <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" 
               href="#collapseOne">
               11点击我进行展开
            </a>
         </h4>
      </div>
      <div id="collapseOne" class="panel-collapse collapse in">
         <div class="panel-body">
          1  Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred 
            nesciunt sapiente ea proident. Ad vegan excepteur butcher vice 
            lomo.
         </div>
      </div>
   </div>
   <div class="panel panel-warning"  style="margin:0px;padding:0px">
      <div class="panel-heading">
         <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" 
               href="#collapseTwo">
             2  点击我进行展开，
            </a>
         </h4>
      </div>
      <div id="collapseTwo" class="panel-collapse collapse">
         <div class="panel-body">
           2 Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred 
            nesciunt sapiente ea proident. Ad vegan excepteur butcher vice 
            lomo.
         </div>
      </div>
   </div>
   <div class="panel panel-warning"  style="margin:0px;padding:0px">
      <div class="panel-heading">
         <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" 
               href="#collapseThree">
             3  点击我进行展开
            </a>
         </h4>
      </div>
      <div id="collapseThree" class="panel-collapse collapse">
         <div class="panel-body">
          33  Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred 
            nesciunt sapiente ea proident. Ad vegan excepteur butcher vice 
            lomo.
         </div>
      </div>
   </div>
   <div class="panel panel-warning"  style="margin:0px;padding:0px">
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
   </div>
</div>
				
				
				<!-- collapseEnd -->
				<div style="margin-top:50px;margin-bottom: 0px;">
					<div style="width:360px;height:33px;">
						<button id="myCustomButtonTab1" type="button" class="btn btn-default" style="color:#ffffff;background-color: #DBA939;margin-left: 6px;margin-right: 3px">默认按钮</button>
						<button id="myCustomButtonTab2" type="button" class="btn btn-default" style="color:#ffffff;background-color: #CA3D40;margin-left: 0px;margin-right: 3px">默认按钮</button>
						<button id="myCustomButtonTab3" type="button" class="btn btn-default" style="color:#ffffff;background-color: #4B84C3;margin-left: 0px;margin-right: 3px">默认按钮</button>
						<button id="myCustomButtonTab4" type="button" class="btn btn-default" style="color:#ffffff;background-color: #4B84C3;margin-left: 0px;margin-right: 3px">默认按钮</button>
					</div>
					<div class="myCustomButtonTabContent">
						<div class="myCustomButtonTabA">
							<span style="height:10px"></span>
							<span><a href="#">罪恶王冠联合出品的热血新番   铁甲城的卡巴内瑞</a></span>
							<span><a href="#">超人大战蝙蝠侠</a></span>
							<span><a href="#">美国队长3</a></span>
							<span><a href="#">罪恶王冠联合出品的热血新番   铁甲城的卡巴内瑞</a></span>
							<span><a href="#">超人大战蝙蝠侠</a></span>
							<span><a href="#">美国队长3</a></span>
							<span><a href="#">美国队长3</a></span>
						</div>
						<div class="myCustomButtonTabB">
							<span style="height:10px"></span>
							<span><a href="#">罪恶王冠联合出品的热血新番   铁甲城的卡巴内瑞</a></span>
							<span><a href="#">超人大战蝙蝠侠</a></span>
							<span><a href="#">美国队长3</a></span>
							<span><a href="#">罪恶王冠联合出品的热血新番   铁甲城的卡巴内瑞</a></span>
							<span><a href="#">超人大战蝙蝠侠</a></span>
							<span><a href="#">美国队长3</a></span>
							<span><a href="#">超人大战蝙蝠侠</a></span>
							<span><a href="#">美国队长3</a></span>
							<span><a href="#">超人大战蝙蝠侠</a></span>
							<span><a href="#">美国队长3</a></span>
						</div>
						<div class="myCustomButtonTabC">
							<span style="height:10px"></span>
							<span><a href="#">罪恶王冠联合出品的热血新番   铁甲城的卡巴内瑞</a></span>
							<span><a href="#">超人大战蝙蝠侠</a></span>
							<span><a href="#">美国队长3</a></span>
							<span><a href="#">罪恶王冠联合出品的热血新番   铁甲城的卡巴内瑞</a></span>
							<span><a href="#">超人大战蝙蝠侠</a></span>
							<span><a href="#">美国队长3</a></span>
							<span><a href="#">超人大战蝙蝠侠</a></span>
							<span><a href="#">美国队长3</a></span>
							<span><a href="#">美国队长3</a></span>
							<span><a href="#">超人大战蝙蝠侠</a></span>
							<span><a href="#">美国队长3</a></span>
							<span><a href="#">美国队长3</a></span>
							<span><a href="#">超人大战蝙蝠侠</a></span>
							<span><a href="#">美国队长3</a></span>
						</div>
						<div class="myCustomButtonTabD">
							<span style="height:10px"></span>
							<span><a href="#">罪恶王冠联合出品的热血新番   铁甲城的卡巴内瑞</a></span>
							<span><a href="#">超人大战蝙蝠侠</a></span>
							<span><a href="#">美国队长3</a></span>
							<span><a href="#">罪恶王冠联合出品的热血新番   铁甲城的卡巴内瑞</a></span>
							<span><a href="#">超人大战蝙蝠侠</a></span>
							<span><a href="#">美国队长3</a></span>
							<span><a href="#">罪恶王冠联合出品的热血新番   铁甲城的卡巴内瑞</a></span>
							<span><a href="#">超人大战蝙蝠侠</a></span>
							<span><a href="#">美国队长3</a></span>
							<span><a href="#">超人大战蝙蝠侠</a></span>
							<span><a href="#">美国队长3</a></span>
							<span><a href="#">罪恶王冠联合出品的热血新番   铁甲城的卡巴内瑞</a></span>
							<span><a href="#">超人大战蝙蝠侠</a></span>
							<span><a href="#">美国队长3</a></span>
							<span><a href="#">美国队长3</a></span>
							<span><a href="#">罪恶王冠联合出品的热血新番   铁甲城的卡巴内瑞</a></span>
							<span><a href="#">超人大战蝙蝠侠</a></span>
							<span><a href="#">美国队长3</a></span>
						</div>
					</div>
				
				</div>
				
				</div> <!-- myTabsEnd -->
			
		
				
			<p class="sr-only" id="section-2">一周更新列表</p>
			 
			<div class="myCustomSpan2">
				
				<ul id="myTab" class="nav nav-tabs nav-pills">
				   <li style="color:#F16985;display: inline-block;width:300px"><strong><big>一周更新列表</big></strong></li>
				   <li class="active">
				      <a href="#mon1" data-toggle="tab">
				       	  周一
				      </a>
				   </li>
				   <li><a href="#tue1" data-toggle="tab">周二</a></li>
				   <li><a href="#wed1" data-toggle="tab">周三</a></li>
				   <li><a href="#thu1" data-toggle="tab">周四</a></li>
				   <li><a href="#fri1" data-toggle="tab">周五</a></li>
				   <li><a href="#sat1" data-toggle="tab">周六</a></li>
				   <li><a href="#sun1" data-toggle="tab">周日</a></li>
				  
				</ul>
				
				
				
				
				
				<div id="myTabContent" class="tab-content">
				   <div class="tab-pane fade in active" id="mon1">
				   <!-- 图片单元 -->
				    <div style="width:240px;;position: absolute;left:10px;top:60px;display: inline-block;">
				   	 
						<div class="grid">
						<figure class="effect-zoe">
							<img src="images/111.jpg" alt="img111"/>
							<figcaption>
								<h2>Creative</h2>
								<p>Zoe never had the patience of her sisters. She deliberately punched the bear in his face.</p>
								<a href="#">View more</a>
							</figcaption>			
						</figure>
						</div>
						<a href="#"><h5>一月新番</h5></a>
						
					  
					
				     </div>
				     <!-- 图片单元 --> 
				   <!-- 图片单元 -->
				    <div style="width:240px;position: absolute;left:260px;top:60px;display: inline-block;">
				   	 
						<div class="grid">
						<figure class="effect-zoe">
							<img src="images/222.jpg" alt="img222"/>
							<figcaption>
								<h2>Creative</h2>
								<p>Zoe never had the patience of her sisters. She deliberately punched the bear in his face.</p>
								<a href="#">View more</a>
							</figcaption>			
						</figure>
						</div>
						<a href="#"><h5>一月新番</h5></a>
					  
				     </div>
				     <!-- 图片单元 --> 
				    <div style="width:240px;position: absolute;left:520px;top:60px;display: inline-block;">
				   	  
						<div class="grid">
						<figure class="effect-zoe">
							<img src="images/333.jpg" alt="img333"/>
							<figcaption>
								<h2>Creative</h2>
								<p>Zoe never had the patience of her sisters. She deliberately punched the bear in his face.</p>
								<a href="#">View more</a>
							</figcaption>			
						</figure>
						</div>
						<a href="#"><h5>一月新番</h5></a>
					  
				     </div>
				     <!-- 图片单元 --> 
				   <!-- 图片单元 -->
				    <div style="width:240px;;position: absolute;left:10px;top:250px;display: inline-block;">
				   	  
						<div class="grid">
						<figure class="effect-zoe">
							<img src="images/111.jpg" alt="img111"/>
							<figcaption>
								<h2>Creative</h2>
								<p>Zoe never had the patience of her sisters. She deliberately punched the bear in his face.</p>
								<a href="#">View more</a>
							</figcaption>			
						</figure>
						</div>
						<a href="#"><h5>一月新番</h5></a>
					
				     </div>
				     <!-- 图片单元 --> 
				   <!-- 图片单元 -->
				    <div style="width:240px;position: absolute;left:260px;top:250px;display: inline-block;">
				   	 
						<div class="grid">
						<figure class="effect-zoe">
							<img src="images/222.jpg" alt="img222"/>
							<figcaption>
								<h2>Creative</h2>
								<p>Zoe never had the patience of her sisters. She deliberately punched the bear in his face.</p>
								<a href="#">View more</a>
							</figcaption>			
						</figure>
						</div>
						<a href="#"><h5>一月新番</h5></a>
					  
				     </div>
				     <!-- 图片单元 --> 
				    <div style="width:240px;position: absolute;left:520px;top:250px;display: inline-block">
				   
						<div class="grid">
						<figure class="effect-zoe">
							<img src="images/333.jpg" alt="img333"/>
							<figcaption>
								<h2>Creative</h2>
								<p>Zoe never had the patience of her sisters. She deliberately punched the bear in his face.</p>
								<a href="#">View more</a>
							</figcaption>			
						</figure>
						</div>
						<a href="#"><h5>一月新番</h5></a>
					
				     </div>
				     <!-- 图片单元 --> 
				      
				      
				   </div><!-- Monday -->
				   <div class="tab-pane fade" id="tue1">
				      <p>iOS 是一个由苹果公司开发和发布的手机操作系统。最初是于 2007 年首次发布 iPhone、iPod Touch 和 Apple 
				      TV。iOS 派生自 OS X，它们共享 Darwin 基础。OS X 操作系统是用在苹果电脑上，iOS 是苹果的移动版本。</p>
				   </div>
				   <div class="tab-pane fade" id="wed1">
				      <p>jMeter 是一款开源的测试软件。它是 100% 纯 Java 应用程序，用于负载和性能测试。</p>
				   </div>
				   <div class="tab-pane fade" id="thu1">
				      <p>Enterprise Java Beans（EJB）是一个创建高度可扩展性和强大企业级应用程序的开发架构，部署在兼容应用程序服务器（比如 JBOSS、Web Logic 等）的 J2EE 上。
				      </p>
				   </div>
				   <div class="tab-pane fade" id="fri1">
				      <p>Enterprise Java Beans（EJB）是一个创建高度可扩展性和强大企业级应用程序的开发架构，部署在兼容应用程序服务器（比如 JBOSS、Web Logic 等）的 J2EE 上。
				      </p>
				   </div>
				   <div class="tab-pane fade" id="sat1">
				      <p>Enterprise Java Beans（EJB）是一个创建高度可扩展性和强大企业级应用程序的开发架构，部署在兼容应用程序服务器（比如 JBOSS、Web Logic 等）的 J2EE 上。
				      </p>
				   </div>
				   <div class="tab-pane fade" id="sun1">
				      <p>Enterprise Java Beans（EJB）是一个创建高度可扩展性和强大企业级应用程序的开发架构，部署在兼容应用程序服务器（比如 JBOSS、Web Logic 等）的 J2EE 上。
				      </p>
				   </div>
				</div>
			</div><!-- mySpan2End -->
			
			
			
			
			
			
			
			
			
			
			
			
			<p class="sr-only" id="section-3">人气经典</p>>
	
	<!-- mySpan3 start-->
	
	<div class="myCustomSpan3">

	
		<div class="myCustomBreadcrumb">
			<ol class="breadcrumb" style="background-color:#ffffff;height:40px;margin-bottom: 10px">
			  <li class="active" style="color:#F16985"><h4>人气经典</h4></li>
			  <li><a href="#">死神</a></li>
			  <li><a href="#">家庭教师</a></li>
			  <li><a href="#">龙珠</a></li>
			  <li><a href="#">犬夜叉</a></li>
			  <li><a href="#">海绵宝宝</a></li>
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
							<LI class="item first"> <A class=product-image title="Lorem ipsum dolor sit" href="#"><IMG 
			  alt="Lorem ipsum dolor sit" src="images/multiPicCoursel/prod.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="Lorem ipsum dolor sit" 
			  href="#">Lorem 
									ipsum dolor sit</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
							<div style="position:absolute;top:260px;left:30px"><h5><a href="#">新番</a></h5></div>
							</LI>
							
							<LI class=item><A class=product-image title="Lorem ipsum dolor sit 2" 
			  href="#"><IMG 
			  alt="Lorem ipsum dolor sit 2" src="images/multiPicCoursel/prod_2.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="Lorem ipsum dolor sit 2" 
			  href="#">Lorem 
									ipsum dolor sit 2</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="#">新番</a></h5></div>
							</LI>
							<LI class=item><A class=product-image title="Lorem ipsum dolor sit 4" 
			  href="#"><IMG 
			  alt="Lorem ipsum dolor sit 4" src="images/multiPicCoursel/prod_3.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="Lorem ipsum dolor sit 4" 
			  href="#">Lorem 
									ipsum dolor sit 4</A>
									<BUTTON class="button btn-cart" title="Add to Cart"><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="#">新番</a></h5></div>
							</LI>
							<LI class=item><A class=product-image title="Lorem ipsum dolor sit 8" 
			  href="#"><IMG 
			  alt="Lorem ipsum dolor sit 8" src="images/multiPicCoursel/prod_4.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="Lorem ipsum dolor sit 8" 
			  href="#">Lorem 
									ipsum dolor sit 8</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="#">新番</a></h5></div>
							</LI>
							<LI class=item><A class=product-image title="Lorem ipsum dolor sit 7" 
			  href="#"><IMG 
			  alt="Lorem ipsum dolor sit 7" src="images/multiPicCoursel/prod_5.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="Lorem ipsum dolor sit 7" 
			  href="#">Lorem 
									ipsum dolor sit 7</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="#">新番</a></h5></div>
							</LI>
							<LI class="item last"><A class=product-image title="Lorem ipsum dolor sit 3" 
			  href="#"><IMG 
			  alt="Lorem ipsum dolor sit 3" src="images/multiPicCoursel/prod_6.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="Lorem ipsum dolor sit 3" 
			  href="#">Lorem 
									ipsum dolor sit 3</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="#">新番</a></h5></div>
							</LI>
							<LI class="item last"><A class=product-image title="Lorem ipsum dolor sit 3" 
			  href="#"><IMG 
			  alt="Lorem ipsum dolor sit 3" src="images/multiPicCoursel/prod_6.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="Lorem ipsum dolor sit 3" 
			  href="#">Lorem 
									ipsum dolor sit 3</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="#">新番</a></h5></div>
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
			
			<p class="sr-only" id="section-4">热血新番</p>
			
			
			
		<div class="myCustomBreadcrumb">
			<ol class="breadcrumb" style="background-color:#ffffff;height:40px;margin-bottom: 10px">
			  <li class="active" style="color:#F16985"><h4>热血新番</h4></li>
			  <li><a href="#">亚人</a></li>
			  <li><a href="#">命运石之门</a></li>
			  <li><a href="#">只有我不存在的街道</a></li>
			  <li><a href="#">黑街</a></li>
			  <li><a href="#">妖精的尾巴</a></li>
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
							<LI class="item first"> <A class=product-image title="Lorem ipsum dolor sit" href="#"><IMG 
			  alt="Lorem ipsum dolor sit" src="images/multiPicCoursel/prod.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="Lorem ipsum dolor sit" 
			  href="#">Lorem 
									ipsum dolor sit</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="#">新番</a></h5></div>
							</LI>
							
							<LI class=item><A class=product-image title="Lorem ipsum dolor sit 2" 
			  href="#"><IMG 
			  alt="Lorem ipsum dolor sit 2" src="images/multiPicCoursel/prod_2.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="Lorem ipsum dolor sit 2" 
			  href="#">Lorem 
									ipsum dolor sit 2</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="#">新番</a></h5></div>
							</LI>
							<LI class=item><A class=product-image title="Lorem ipsum dolor sit 4" 
			  href="#"><IMG 
			  alt="Lorem ipsum dolor sit 4" src="images/multiPicCoursel/prod_3.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="Lorem ipsum dolor sit 4" 
			  href="#">Lorem 
									ipsum dolor sit 4</A>
									<BUTTON class="button btn-cart" title="Add to Cart"><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="#">新番</a></h5></div>
							</LI>
							<LI class=item><A class=product-image title="Lorem ipsum dolor sit 8" 
			  href="#"><IMG 
			  alt="Lorem ipsum dolor sit 8" src="images/multiPicCoursel/prod_4.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="Lorem ipsum dolor sit 8" 
			  href="#">Lorem 
									ipsum dolor sit 8</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="#">新番</a></h5></div>
							</LI>
							<LI class=item><A class=product-image title="Lorem ipsum dolor sit 7" 
			  href="#"><IMG 
			  alt="Lorem ipsum dolor sit 7" src="images/multiPicCoursel/prod_5.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="Lorem ipsum dolor sit 7" 
			  href="#">Lorem 
									ipsum dolor sit 7</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="#">新番</a></h5></div>
							</LI>
							<LI class="item last"><A class=product-image title="Lorem ipsum dolor sit 3" 
			  href="#"><IMG 
			  alt="Lorem ipsum dolor sit 3" src="images/multiPicCoursel/prod_6.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="Lorem ipsum dolor sit 3" 
			  href="#">Lorem 
									ipsum dolor sit 3</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="#">新番</a></h5></div>
							</LI>
							<LI class="item last"><A class=product-image title="Lorem ipsum dolor sit 3" 
			  href="#"><IMG 
			  alt="Lorem ipsum dolor sit 3" src="images/multiPicCoursel/prod_6.jpg" width=170 
			  height=257></A>
								<H3 class=product-name><A title="Lorem ipsum dolor sit 3" 
			  href="#">Lorem 
									ipsum dolor sit 3</A>
									<BUTTON class="button btn-cart" title="Add to Cart" ><SPAN><SPAN>Add 
									to Cart</SPAN></SPAN></BUTTON>
								</H3>
								<div style="position:absolute;top:260px;left:30px"><h5><a href="#">新番</a></h5></div>
							</LI>
						</UL>
					</DIV>
				</DIV>
				<DIV id=left_but class="box-left"></DIV>
				<DIV id=right_but class="box-right"></DIV>
			</DIV>
	
	</div>
			
			
		<p class="sr-only" id="section-5">尾部</p>
			
			<!-- mySpan4 End -->
			
			
		<!-- Testcontent -->
		
	</div><!-- containerEnd -->
	
	
	<div class="myCustomAffix">
		<div id="myScrollspy">
            <ul class="nav nav-tabs nav-stacked" data-spy="affix" data-offset-top="125">
                <li><a href="#section-1">顶部</a></li>
                <li><a href="#section-2">第二</a></li>
                <li><a href="#section-3">第三</a></li>
                <li><a href="#section-4">第四</a></li>
                <li><a href="#section-5">第五</a></li>
            </ul>
        </div>
	</div>
	
	
	
 	<!-- End -->
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
	    $('.hiSlider1').hiSlider();
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
  </body>
</html>
