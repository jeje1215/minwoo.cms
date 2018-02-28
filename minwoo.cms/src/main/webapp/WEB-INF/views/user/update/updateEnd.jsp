<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ include file="../../common/header.jsp"%>
<style>@import url("<c:url value="/css/user/update/update.css"/>");</style>

<div class="col-md-12">
	<div class="page-header" style="text-align:center;">
		<h1>수정이 완료되었습니다.</h1>
	</div>
	<div class="form-group">
		<div class="col-sm-12 text-center">
			<button class="btn btn-primary"
				onclick="goUrl('common/cover', urlForm)">
				돌아가기<i class="fa fa-check spaceLeft"></i>
			</button>
		</div>
	</div>
</div>
<%@ include file="../../common/footer.jsp"%>