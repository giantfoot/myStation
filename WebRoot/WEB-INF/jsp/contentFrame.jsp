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
   
    <title>天天动漫  ${requestScope.item.itemname }</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="${requestScope.item.itemname }">
	<meta http-equiv="description" content="${requestScope.item.itemname }">
	<link href="${pageContext.request.contextPath }/images/favicon.ico" rel="shortcut icon">
	<link rel="Bookmark" href="${pageContext.request.contextPath }/images/favicon.ico" />
	<link type="text/css" href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet"/>
	<link rel="stylesheet" type="text/css" href="css/myDefault.css"/>
	
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
		 color:#F16985;
		}
		a:active {
		 text-decoration: none;
		 color:#F16985;
		}
		a:focus,input{outline:none;}
	    area, a, a img,input{blr:expression_r(this.onFocus=this.blur());}
	    
	    
	</style>
  </head>
  
  <body style="width: 1366px;margin:0 auto">
  
   <div class="myNav">
	 		<a href="#" style="padding:3px 0px;">
		 		
		 			<img alt="主页" src="images/tv.ico" style="position:relative;top:5px;
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
			<c:if test="${sessionScope.user != null }">
			
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
						<li><a href="#">铁甲城的卡内巴瑞</a></li>
						<li><a href="#">铁甲城的卡内巴瑞</a></li>
						<li><a href="#">铁甲城的卡内巴瑞</a></li>
						<li><a href="#">铁甲城的卡内巴瑞</a></li>
						<li><a href="#">铁甲城的卡内巴瑞</a></li>
						<li><a href="#">铁甲城的卡内巴瑞</a></li>
					</ul>
				</div>
			</div>
			</c:if>
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
	 	
	 	<div class="topImg" style="background-image: url('${pageContext.request.contextPath }/images/nav/nav1.jpg')"></div>
	 	
	 	<div style="width:1366px;margin:0px auto;background-color: #F2F7F1;">
	 	
	 	
	 	<div style="box-shadow:0 0 5px rgba(92,92,92,0.4);
	-webkit-box-shadow:0 0 5px rgba(92,92,92,0.4);
	-moz-box-shadow:0 0 5px rgba(92,92,92,0.4);background-color:#fff;width:800px;height:30px;border:1px solid #ddd;position: relative;margin:0px auto;top:30px">
	 		&nbsp;&nbsp;现在的位置:<a href="#">&nbsp;首页</a>&nbsp;&gt;${requestScope.item.itemname }
	 		
	 		<span style="position:absolute;left:580px;font-weight:blod;color:#F16985">
	 		
	 			<script type="text/javascript">
	 				var today = new Date();
	 				var day;var date;var hello;
	 				var hour=new Date().getHours();
	 				if(hour < 6){
	 					hello=' 凌晨好! ';
	 				}else if(hour<9){
	 					hello=' 早上好! ';
	 				}else if(hour<12){
	 					hello=' 上午好! ';
	 				}else if(hour<14){
	 					hello=' 中午好! ';
	 				}else if(hour<17){
	 					hello='  下午好! ';
	 				}else if(hour<19){
	 					hello='  傍晚好! ';
	 				}else if(hour>22){
	 					hello='  凌晨好! ';
	 				}else{
	 					hello=' 夜深了! ';
	 				}
	 				document.write(' '+hello);
	 				
	 				var tdate,tday, x,year; 
	 				var x = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五","星期六");
					var MSIE=navigator.userAgent.indexOf("MSIE");
					if(MSIE != -1)
					year =(today.getFullYear());
					else
					year = (today.getYear()+1900);
					tdate= year+ "年" + (today.getMonth() + 1 ) + "月" + today.getDate() + "日" + " " + x[today.getDay()];
					document.write('&nbsp;'+tdate);
	 			</script>
	 			
	 		</span>
	 	</div>
	 	
	 	<div style="background-color:#fff;width:800px;border:1px solid #ddd;position: relative;top:30px;margin:30px auto;padding:10px;box-shadow:0 0 20px rgba(92,92,92,0.4);
	-webkit-box-shadow:0 0 20px rgba(92,92,92,0.4);
	-moz-box-shadow:0 0 20px rgba(92,92,92,0.4);">
	 		<c:choose>
	 			<c:when test="${requestScope.item!=null }">
	 				<h4><strong>${requestScope.item.itemname }/百度云盘下载</strong></h4>
	 				<p>${requestScope.item.itemdesc }</p>
			 		 <div>
			 			<img src="${requestScope.item.itemimgurl }" style="background-color:#f3f3f3;padding:5px;border:1px solid #eee;border-radius:5px">
			 		</div>
			 		<h5><strong>${requestScope.item.itemname } &nbsp;&nbsp;&nbsp;百度网盘密码:&nbsp;&nbsp;${requestScope.item.itempassword }</strong></h5>
			 		
			 		<c:if test="${1 <= requestScope.item.itemnum }"><a href="${requestScope.item.itemurl }">第一集.HDTV.字幕版.MP4</a><br></c:if>
			 		<c:if test="${2<=requestScope.item.itemnum }"><a href="${requestScope.item.itemurl }">第二集.HDTV.字幕版.MP4</a><br></c:if>
			 		<c:if test="${3<=requestScope.item.itemnum }"><a href="${requestScope.item.itemurl }">第三集.HDTV.字幕版.MP4</a><br></c:if>
			 		<c:if test="${4<=requestScope.item.itemnum }"><a href="${requestScope.item.itemurl }">第四集.HDTV.字幕版.MP4</a><br></c:if>
			 		<c:if test="${5<=requestScope.item.itemnum }"><a href="${requestScope.item.itemurl }">第五集.HDTV.字幕版.MP4</a><br></c:if>
			 		<c:if test="${6<=requestScope.item.itemnum }"><a href="${requestScope.item.itemurl }">第六集.HDTV.字幕版.MP4</a><br></c:if>
			 		<c:if test="${7<=requestScope.item.itemnum }"><a href="${requestScope.item.itemurl }">第七集.HDTV.字幕版.MP4</a><br></c:if>
			 		<c:if test="${8<=requestScope.item.itemnum }"><a href="${requestScope.item.itemurl }">第八集.HDTV.字幕版.MP4</a><br></c:if>
			 		<c:if test="${9<=requestScope.item.itemnum }"><a href="${requestScope.item.itemurl }">第九集.HDTV.字幕版.MP4</a><br></c:if>
			 		<c:if test="${10<=requestScope.item.itemnum }"><a href="${requestScope.item.itemurl }">第十集.HDTV.字幕版.MP4</a><br></c:if>
			 		<c:if test="${11<=requestScope.item.itemnum }"><a href="${requestScope.item.itemurl }">第十一集.HDTV.字幕版.MP4</a><br></c:if>
			 		<c:if test="${12<=requestScope.item.itemnum }"><a href="${requestScope.item.itemurl }">第十二集.HDTV.字幕版.MP4</a><br></c:if>
			 		<c:if test="${13<=requestScope.item.itemnum }"><a href="${requestScope.item.itemurl }">第十三集.HDTV.字幕版.MP4</a><br></c:if>
			 		<c:if test="${14<=requestScope.item.itemnum }"><a href="${requestScope.item.itemurl }">第十四集.HDTV.字幕版.MP4</a><br></c:if>
			 		<c:if test="${15<=requestScope.item.itemnum }"><a href="${requestScope.item.itemurl }">第十五集.HDTV.字幕版.MP4</a><br></c:if>
			 		<c:if test="${16<=requestScope.item.itemnum }"><a href="${requestScope.item.itemurl }">第十六集.HDTV.字幕版.MP4</a><br></c:if>
			 		<c:if test="${17<=requestScope.item.itemnum }"><a href="${requestScope.item.itemurl }">第十七集.HDTV.字幕版.MP4</a><br></c:if>
			 		<c:if test="${18<=requestScope.item.itemnum }"><a href="${requestScope.item.itemurl }">第十八集.HDTV.字幕版.MP4</a><br></c:if>
			 		<c:if test="${19<=requestScope.item.itemnum }"><a href="${requestScope.item.itemurl }">第十九集.HDTV.字幕版.MP4</a><br></c:if>
			 		<c:if test="${20<=requestScope.item.itemnum }"><a href="${requestScope.item.itemurl }">第二十集.HDTV.字幕版.MP4</a><br></c:if>
			 		
	 			</c:when>
	 			<c:otherwise>
	 				<h3>不好意思!您要找的资源还未收录</h3>
	 			</c:otherwise>
	 		</c:choose>
	 		
	 	</div>
	 	<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
	 <script type="text/javascript" src="js/myDefault.js"></script>
	 <!-- 多说评论框 start -->
	<div class="ds-thread" style="width:800px;border:1px solid #ddd;position:relative;margin:60px auto;padding:10px" data-thread-key="contentFrame" data-title="contentFrame" data-url="请替换成文章的网址"></div>
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
	<!-- cnzz统计 -->
	 <!-- <div style="background-color:#222;width:100%;height:40px;text-align:center;">
		<p style="color:#fff;display:inline-block;margin-top:5px;margin-bottom:0px">&copy;我的个人资源分享小博客|本站是个动漫分享的个人小博客,本站资源均网络收集,无任何盈利目的,如有侵权,联系24小时内删除</p>&nbsp;&nbsp;
		<script type="text/javascript">
			var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
			document.write(unescape("%3Cspan id='cnzz_stat_icon_1258953832'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s11.cnzz.com/z_stat.php%3Fid%3D1258953832%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));
		</script>
	</div>     -->    
	
	
	<%@ include file="/common/cnzz.jsp"%>
	
	</div>
  </body>
</html>
