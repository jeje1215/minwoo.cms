<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../common/header.jsp"%>
<style>@import url("<c:url value="/css/user/find/idpwFind.css"/>");</style>
<script src="<c:url value="/js/user/find/idpwFind.js"/>"></script>
<div class="allBox">
	<div class="box1">
		<form id="findIdForm">
			<h3>아이디 찾기</h3>
			<div class="form-group input-group">
				<span class="input-group-addon"><i
					class="glyphicon glyphicon-user"></i></span> <input class="form-control"
					type="text" name='userNm' placeholder="NAME" />
			</div>
			<div class="form-group input-group">
				<span class="input-group-addon"><i
					class="glyphicon glyphicon-envelope"></i></span> <input
					class="form-control" name="userMail" type="email" autofocus required
					placeholder="MAIL" id="userMail_id"/>
			</div>
			<div class="form-group text-center">
				<a href="#" onclick="goUrl('common/cover', urlForm)"><span class="glyphicon glyphicon-home"></span>Home</a>
				<div class="form-group">
					<button type="button" class="btn btn-def btn-block" id="idFind" style="background-color: #0084cd">ID 찾기</button>
				</div>
			</div>
		</form>
	</div>
	<div class="box2">
		<form id="findPwForm">
			<h3>비밀번호 찾기</h3>
			<div class="form-group input-group">
				<span class="input-group-addon"><i
					class="glyphicon glyphicon-user"></i></span> <input class="form-control"
					type="text" name='userId' placeholder="ID" />
			</div>
			<div class="form-group input-group">
				<span class="input-group-addon"><i
					class="glyphicon glyphicon-envelope"></i></span> <input
					class="form-control" name="userMail" type="email" autofocus required
					placeholder="MAIL" id="userMail_pwd"/>
			</div>
			<div class="form-group text-center">
				<a href="#" onclick="goUrl('common/cover', urlForm)"><span class="glyphicon glyphicon-home"></span>Home</a>
				<div class="form-group">
					<button type="button" class="btn btn-def btn-block" style="background-color: #0084cd" id="pwdFind">PW 찾기</button>
				</div>
			</div>
		</form>
	</div>	
</div>	
<%@ include file="../../common/footer.jsp"%>
	
