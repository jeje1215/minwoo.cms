<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script src="<c:url value="/js/login.js"/>">



</script>

<c:choose>
	<c:when test="${sessionScope.user == null}">
		<form id="loginForm">
		<h3>  Login</h3>
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
					ID</a> | <a href="#"
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
							<a  href="#" onclick="window.open('<c:url value="/message"/>','window','location=no, directories=no,resizable=no,status=no,toolbar=no,menubar=no, width=700,height=700,left=0, top=0, scrollbars=yes');return false">
								${sessionScope.user.loginId}님!
							</a>
						</h5>
						<p>CMS에오신것을환영합니다.</p>
					</div>
					<ul class="pro">
						<li class="plan-feature"><i class="far fa-calendar-alt"
							aria-hidden="true"></i> 가입일: ${ sessionScope.user.regDate }</li>
						<li class="plan-feature"><i class="fas fa-chart-line"
							aria-hidden="true"></i> 회원등급: ${sessionScope.user.userLevel == "A" ? "관리자":"일반"}</li>
						<!-- <li class="plan-feature"><i class="far fa-edit"
							aria-hidden="true"></i> 게시글: 0</li> -->
						<div class="row">
							<button type="button" class="btn btn-default"
								style="width: 80px;"
								onclick="menuUrl('update', urlForm)">
								<i class="fa fa-paw" aria-hidden="true"></i>MyPage
							</button>
							<button type="button" class="btn btn-default"
								style="background-color: #ffc4d7; width: 80px;"
								id="logout">
								<i class="fas fa-sign-in-alt" aria-hidden="true"></i>Logout
							</button>
							<input type="text" style="display: none" id="loginId"
								value="${ sessionScope.user.loginId }">
							<input type="text" style="display: none" id="mesId"
								value="${ sessionScope.user.loginId }">
						</div>
					</ul>
				</div>
			</div>
	</c:when>
</c:choose>