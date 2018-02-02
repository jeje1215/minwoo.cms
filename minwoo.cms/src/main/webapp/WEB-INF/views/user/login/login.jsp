<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script src="<c:url value="/js/login.js"/>"></script>

<c:choose>
	<c:when test="${sessionScope.user == null}">
		<form id="loginForm">
			<h3>&nbsp;Login</h3>
			<div id="loginTxt"></div>
			<div class="form-group input-group">
				<span class="input-group-addon"><i
					class="glyphicon glyphicon-user"></i></span> <input class="form-control"
					type="text" name='loginId' placeholder="id" />
			</div>
			<div class="form-group input-group">
				<span class="input-group-addon"><i
					class="glyphicon glyphicon-lock"></i> </span> <input class="form-control"
					type="password" name='loginPw' placeholder="password" />
			</div>

			<div class="form-group">
				<button type="button" class="btn btn-def btn-block" id="loginBtn">Login</button>
			</div>
			<div class="form-group text-center">
				<a href="#" onclick="goUrl('user/find/idpwFind', urlForm)">Find
					ID</a>&nbsp;|&nbsp; <a href="#"
					onclick="goUrl('user/find/idpwFind', urlForm)">Find PW</a><br>
				<a href="#" onclick="goUrl('user/join/userJoin', urlForm)"><b>Sign</b></a>
			</div>
		</form>
	</c:when>

	<c:when test="${sessionScope.user != null}">
		<div class="profile">
			<div class="pricing-table pricing-three-column row">
				<div class="plan col-sm-4 col-lg-4">
					<div class="plan-name-bronze">
						<img src="<c:url value="/img/pro.jpg"/>" style="width: 90px; height: 90px">
						<h5>
							<i class="fa fa-child" aria-hidden="true" style="float: center"></i>
							${ sessionScope.user.loginId }님!
						</h5>
						<p>CMS에오신것을환영합니다.</p>

					</div>
					<ul class="pro">
						<li class="plan-feature"><i class="far fa-calendar-alt"
							aria-hidden="true"></i> 가입일: ${ sessionScope.user.regDate }</li>
						<li class="plan-feature"><i class="fas fa-chart-line"
							aria-hidden="true"></i> 회원등급: ${sessionScope.user.userLevel == "A" ? "관리자":"일반"}</li>
						<li class="plan-feature"><i class="far fa-edit"
							aria-hidden="true"></i> 게시글: 0</li>
						<div class="row">
							<button type="button" class="btn btn-default"
								style="width: 80px;"
								onclick="javascript:location.href='../user/04.html'">
								<i class="fa fa-paw" aria-hidden="true"></i>MyPage
							</button>
							<button type="button" class="btn btn-default"
								style="background-color: #ffc4d7; width: 80px;"
								id="logout">
								<i class="fas fa-sign-in-alt" aria-hidden="true"></i>Logout
							</button>
							<input type="text" style="display: none" id="loginId"
								value="${ sessionScope.user.loginId }">
						</div>
					</ul>
				</div>
			</div>
	</c:when>
</c:choose>
<!-- 	<div id="msgModal" class="modal fade">
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
	</div> -->