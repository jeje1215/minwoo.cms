<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/header.jsp"%>

<style>@import url("<c:url value="/css/user/login/coverLogin.css"/>");</style>
<script src="<c:url value="/js/login.js"/>"></script>

	<div id="msgModal" class="modal fade">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<p id="msg"></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="close" data-dismiss="modal">확인</button>
				</div>
			</div>
		</div>
	</div>	
	<div class="box">
		<form id="loginForm">
			<h3>Login</h3>
			<div id="loginTxt"></div>
			<div class="form-group input-group">
				<span class="input-group-addon"><i
					class="glyphicon glyphicon-user"></i></span> 
					<input class="form-control" type="text" name='loginId' placeholder="id" />
			</div>
			<div class="form-group input-group">
				<span class="input-group-addon"><i
					class="glyphicon glyphicon-lock"></i></span> 
					<input class="form-control" type="password" name='loginPw' placeholder="password" />
			</div>
			<div class="form-group text-center">
				<a href="#" onclick="goUrl('common/cover', urlForm)"><span class="glyphicon glyphicon-home"></span>Home</a>
				<div class="form-group">
					<button type="button" class="btn btn-def btn-block" id="loginBtn">로그인</button>
					<button type="button" class="btn btn-def btn-block"
						style="background-color: #ffc4d7" onclick="goUrl('user/find/idpwFind', urlForm)">ID/PW 찾기</button>
				</div>
			</div>		
		</form>
	</div>

</body>
</html>