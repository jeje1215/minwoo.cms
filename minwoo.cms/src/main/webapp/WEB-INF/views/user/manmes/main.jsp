<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/header.jsp"%>
<%@ include file="../../menu/topMenu.jsp"%>
<%@ include file="../../menu/leftMenu.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>@import url("<c:url value="/css/user/manmes/manmes.css"/>");</style>
<script src="<c:url value="/js/user/manmes/manmes.js"/>"></script>

<body>
<section id="post">
	<div class="container">
		<h4>Cms.메세지함</h4>
			<br>
		<form id="mesFom" method="post">
		<input name="checked" id="checked" style="display:none";>
			<table class="table table-hover">
				<thead>
						<tr>					
						<th ></th>
						<th>닉네임(아이디)<input type="text" name="userId" id="userId" value="${sessionScope.user.loginId}" style="display:none";></th>
						<th>이름</th>
						<th>이메일</th>
						<th>메세지</th>						
					</tr>				
				</thead>				  
				<tbody id="mesList">
				</tbody>
			</table>
   			<button type="button" class="btn btn-danger btn-md" id="delBtnMes" >
		   <i class="glyphicon glyphicon-trash"></i> 삭제
		</button>
		</form>
	</div>
</section>

<%@ include file="../../common/footer.jsp"%>