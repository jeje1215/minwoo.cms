<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<style>@import url("<c:url value="/css/menu.css"/>");</style>
	
	<div class="allPage">
		<header>
			<img src="<c:url value="/img/logo.png"/>" style="width: 300px; height: 95px; margin-left: 39%;" onclick="goUrl('common/cover', urlForm)" style="cursor:pointer;">
	
			<nav class="navbar navbar-default navbar-fixed">
				<ul class="nav navbar-nav">
					<li id="top_home" class="active"><a href="#" onclick="menuUrl('main', urlForm)">
						<span class="glyphicon glyphicon-home"> HOME </span></a>
					</li>
					
     			 	<c:if test="${sessionScope.user != null}">
						<li id="top_mypage">
							<a href="#" onclick="menuUrl('update', urlForm)">
								<span class="glyphicon glyphicon-heart"><b> MYPAGE </b></span>
							</a>
						</li>
	     			 	<c:choose>
	     			 		<c:when test="${ sessionScope.user.userLevel eq 'A' }">
								<li id="top_setting">
									<a href="#" onclick="menuUrl('manboard/manageBoard', urlForm)">
										<span class="glyphicon glyphicon-cog"><b> SETTING </b></span>
									</a>
								</li>
	     			 		</c:when>
	     			 	</c:choose>	   
					</c:if>
										
				</ul>
			</nav>
		</header>