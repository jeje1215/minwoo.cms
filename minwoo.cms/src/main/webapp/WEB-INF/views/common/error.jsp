<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="./header.jsp"%>
<style>@import url("<c:url value="/css/common/error.css"/>");</style>

	<div class="error">
		<img src="<c:url value="/img/error.JPG"/>">
		<h3>
			죄송합니다.<br> 요청하신 페이지를 찾을 수 없습니다.
		</h3>
		<h4>
			방문하시려는 페이지의 주소가 잘못 입력되었거나, <br> 페이지의 주소가 변경 혹은 삭제되어 요청하신 페이지를 찾을
			수 없습니다.<br> 입력하신 주소가 정확한지 다시 한번 확인해 주시기 바랍니다.
		</h4>
	</div>
	<div class="form-group text-center">
		<a href="#" onclick="goUrl('common/cover', urlForm)" style="cursor:pointer;"><span class="glyphicon glyphicon-home"></span>Home</a>
	</div>
<%@ include file="../common/footer.jsp"%>