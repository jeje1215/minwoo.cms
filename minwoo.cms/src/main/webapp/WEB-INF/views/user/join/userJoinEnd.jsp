<%@ page language="java" contentType="text/html; charset=UTF-8" 	pageEncoding="UTF-8"%>	
<%@ include file="../../common/header.jsp"%>
<style>@import url("<c:url value="/css/user/join/userjoinEnd.css"/>");</style>

 <div class="error">
	<img src="<c:url value="/img/joinend.png"/>">
	<h3>	축하합니다.<br> </h3>
		<h4>	회원가입이 완료되었습니다	</h4>
 </div>
	<div class="form-group text-center">
		<a href="#" onclick="goUrl('common/cover', urlForm)" style="cursor:pointer;">
		<span class="glyphicon glyphicon-home"></span>Home</a>
	</div>
<%@ include file="../../common/footer.jsp"%>