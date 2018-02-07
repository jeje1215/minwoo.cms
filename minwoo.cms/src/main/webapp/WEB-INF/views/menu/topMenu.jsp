<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>@import url("<c:url value="/css/menu.css"/>");</style>
	<div class="allPage">
		<header>
			<img src="<c:url value="/img/logo.png"/>" style="width: 300px; height: 95px; margin-left: 39%;">
	
			<nav class="navbar navbar-default navbar-fixed">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#" onclick="goUrl('common/cover', urlForm)"><span class="glyphicon glyphicon-home"> HOME </span></a></li>
					<li><a href="#" onclick="goUrl('', urlForm)"><span class="glyphicon glyphicon-heart"><b> MYPAGE </b></span></a></li>
					<li><a href="#" onclick="goUrl('manboard/manageBoard', urlForm)"><span class="glyphicon glyphicon-cog"><b> SETTING </b></span></a></li>
				</ul>
			</nav>
		</header>