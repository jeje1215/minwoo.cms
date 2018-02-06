<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ include file="../../common/header.jsp"%>
<style>@import url("<c:url value="/css/user/join/userJoin.css"/>");</style>
<script src="<c:url value="/js/user/join/userJoin.js"/>"></script>

<div class="col-md-12">
	<div class="page-header">
		<h1>회원가입</h1>
	</div>
	<form class="form-horizontal" id="joinForm">
		<div class="form-group">
			<label class="col-sm-3 control-label" for="inputId">ID</label>
			<div class="col-sm-6">
				<input class="form-control" id="inputId" type="text" required
					placeholder="ID" name="userId">
				<button type="button" name=""/>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-3 control-label" for="inputEmail">이메일</label>
			<div class="col-sm-6">
				<input class="form-control" id="inputEmail" type="email" required
					placeholder="이메일" name="userMail">
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
			<div class="col-sm-6">
				<input class="form-control" id="inputPassword" type="password"
					placeholder="비밀번호" name="userPwd">
				<p class="help-block">숫자, 특수문자 포함 8자 이상</p>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호
				확인</label>
			<div class="col-sm-6">
				<input class="form-control" id="inputPasswordCheck" type="password"
					placeholder="비밀번호 확인">
				<p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-3 control-label" for="inputName">이름</label>
			<div class="col-sm-6">
				<input class="form-control" id="inputName" type="text"
					placeholder="이름" required name="userNm">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-3 control-label" for="inputNic">닉네임</label>
			<div class="col-sm-6">
				<input class="form-control" id="inputNic" type="text"
					placeholder="닉네임" required name="userNic">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-3 control-label" for="inputBirth">생년월일</label>
			<div class="col-sm-6">
				<input class="form-control" id="inputBirth" type="date"
					placeholder="생년월일" required name="userBirth">
			</div>
		</div>

<!-- 		<div class="form-group">
			<label class="col-sm-3 control-label" for="inputAgree">약관 동의</label>
			<div class="col-sm-6" data-toggle="buttons">
				<label class="btn btn-warning active"> <input id="agree"
					type="checkbox" autocomplete="off" chacked> <span
					class="fa fa-check"></span>
				</label> <a href="#">이용약관</a> 에 동의 합니다.
			</div>
		</div> -->
		<div class="form-group">
			<div class="col-sm-12 text-center">
				<button class="btn btn-primary" id="userJoin">
					회원가입<i class="fa fa-check spaceLeft"></i>
				</button>
				<button class="btn btn-danger" onclick="javacript:if(confirm('정말 취소하시겠습니까?')){history.back();}">
					가입취소<i class="fa fa-times spaceLeft"></i>
				</button>
			</div>
		</div>
	</form>
</div>
<%@ include file="../../common/footer.jsp"%>