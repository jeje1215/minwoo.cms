<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../common/header.jsp"%>
<style>
@import url("<c:url value="/css/user/find/find.css"/>");
</style>
	<div class="box">
		<form action="" id="loginForm">
			<h3>아이디 찾기</h3>
			<div class="form-group input-group">
				<span class="input-group-addon"><i
					class="glyphicon glyphicon-user"></i></span> <input class="form-control"
					type="text" name='name' placeholder="NAME" />
			</div>
			<div class="form-group input-group">
				<span class="input-group-addon"><i
					class="glyphicon glyphicon-envelope"></i></span> <input
					class="form-control" id="inputEmail" type="email" autofocus required
					placeholder="이메일" />
			</div>
			<div class="form-group text-center">
				<a href="#" onclick="goUrl('common/cover', urlForm)"><span class="glyphicon glyphicon-home"></span>Home</a>
				<div class="form-group">
					<button type="button" class="btn btn-def btn-block"
						 id="popbutton"
						 style="background-color: #0084cd">ID 찾기</button>
				</div>
			</div>
		</form>
	</div>
	<div class="box">
		<form action="" id="loginForm">
			<h3>비밀번호 찾기</h3>
			<div class="form-group input-group">
				<span class="input-group-addon"><i
					class="glyphicon glyphicon-user"></i></span> <input class="form-control"
					type="text" name='ID' placeholder="ID" />
			</div>
			<div class="form-group input-group">
				<span class="input-group-addon"><i
					class="glyphicon glyphicon-envelope"></i></span> <input
					class="form-control" id="inputEmail" type="email" autofocus required
					placeholder="이메일" />
			</div>
			<div class="form-group text-center">
				<a href="#" onclick="goUrl('common/cover', urlForm)"><span class="glyphicon glyphicon-home"></span>Home</a>
				<div class="form-group">
					<button type="button" class="btn btn-def btn-block"
						style="background-color: #0084cd" data-toggle="modal"
						data-target="#myModal2">PW 찾기</button>
				</div>
			</div>
		</form>
	</div>	
<%@ include file="../../common/footer.jsp"%>
	
