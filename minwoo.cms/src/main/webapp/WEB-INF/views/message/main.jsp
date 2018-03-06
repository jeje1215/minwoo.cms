<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>
<%@ include file="../common/modal.jsp"%>

<style>@import url("<c:url value="/css/message/msg.css"/>");</style>
<script src="<c:url value="/js/message/message.js"/>"></script>
<script>
$(function() {
	var parentId = opener.document.getElementById( "mesId" ).value;
	$("#chk11").val(parentId);
});
</script>
<body>
<form id="msgSend">
	<div class="box">
		<div class="letterpage">
			<div id="header">쪽지보내세요!</div>
			<div id="recipient">
				<label for="who" class="recipient"> 받는사람 아이디</label>
				<input type="text" name="mesGetId" id="chk11" value="" readonly>	
				<hr>
			</div>

			<div class="writing_area">
				<textarea id="writeNote" name="mesContent" style="resize: none;" rows="12" cols="64">		
				</textarea>
			</div>
			<div id="recipient">
			<label for="who" class="recipient"> 보낸사람 아이디 : </label>
				${sessionScope.user.loginId}
				<input type="text" name="userId"  id="userId" value="${sessionScope.user.loginId}"  style="display:none;">
			</div>
			<div class="let">
				<button type="button" class="btn btn-info" id="sendMsg"
					style="background-color: #ff80a0;"  >
					<span class="glyphicon glyphicon-envelope" style="font-family: HY강B;" >
						쪽지보내기
					</span>
				</button>
			</div>
		</div>
	</div>
</form>
</body>