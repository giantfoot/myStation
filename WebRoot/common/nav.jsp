<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
  	
<!-- 2 --><div class="myNav">
	 		<a href="#" style="padding:3px 0px;">
		 		
		 			<img alt="主页" src="${pageContext.request.contextPath }/images/tv.ico" style="position:relative;top:5px;
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
							<img src="${pageContext.request.contextPath }${sessionScope.user.header }" id="userHeader" class="img-circle" style="width:40px;height:40px">
						</a>
					</c:when>
					<c:otherwise>
						<a>
							<img src="${pageContext.request.contextPath }/images/userDefault.png" id="userHeader" class="img-circle" style="width:40px;height:40px">
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
	         
	 	
	 	<!--  -->

