<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/header.jsp"%>
<%@ include file="../../menu/topMenu.jsp"%>
<%@ include file="../../menu/leftMenu.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>@import url("<c:url value="/css/user/manuser/manuser.css"/>");</style>
<script src="<c:url value="/js/user/manuser/manuser.js"/>"></script>

<section id="post">
	<div class="container">
		<div class="name">
			<i class="fa fa-users" aria-hidden="true"></i> 회원관리
		</div>
		<br>
		<div class="d1">
			<select class="click">
				<option value="">번호</option>
				<option value="제목">제목</option>
				<option value="날짜">날짜</option>
				<option value="조회수">조회수</option>
			</select>

			<div class="form">
				<input type="text" placeholder="검색어 입력">
				<button type="submit" class="1"></button>
			</div>
			<br> <br>
		</div>

		<div class="btn-group">
			<button type="button" class="btn btn-primary">회원등급변경</button>

			<div class="select level" id="slevel">
				<select id="ulevel" name="ulevel">
					<option value="">선택</option>
					<option value="A">관리자</option>
					<option value="B">일반회원</option>
				</select>
			</div>
		</div>
	</div>
	<br> <br>


	<div class="list">
		<table class="table table-hover">
			<thead>
				<tr>
					<td></td>
					<th>닉네임(아이디)</th>
					<th class="title">이름</th>
					<th>이메일</th>
					<th style="color: #EA990B;">등급</th>
					<!--                   <th style="color: #EA990B;"><b>조회수</b></th> -->
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${man_userlist}" var="manuserlist">
					<tr>
						<td><input type="checkbox" id="cb1" name="index" />${manuserlist.userNic}</td>
						<td>${manuserlist.userId}</td> <!-- test -->
						<td>${manuserlist.userNm}</td>
						<td>${manuserlist.userMail}</td>
						<td>${manuserlist.userLevel}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<button class="del" data-toggle="modal" data-target="#myModal">
			<i class="fa fa-trash-o" aria-hidden="true"></i> 변경
		</button>
	</div>

	<br> <br>
	<div class="text-center">
		<ul class="pagination">
			<li class="disabled"><a href="#"><span
					class="glyphicon glyphicon-chevron-left"></span></a></li>
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li class="active"><a href="#">5</a></li>
			<li><a href="#">6</a></li>
			<li><a href="#">7</a></li>
			<li><a href="#">8</a></li>
			<li><a href="#">9</a></li>
			<li><a href="#">10</a></li>
			<li><a href="#"><span
					class="glyphicon glyphicon-chevron-right"></span></a></li>
		</ul>
	</div>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">변경되었습니다.</h4>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-primary" class="close"
						data-dismiss="modal">확인</button>
				</div>
			</div>
		</div>
	</div>
</section>
<%@ include file="../../common/footer.jsp"%>
