<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<%@ include file="../common/header.jsp"%>
<%@ include file="../menu/topMenu.jsp"%>
<%@ include file="../menu/leftMenu.jsp"%>
<style>@import url("<c:url value="/css/manboard/manageBoard.css"/>");</style>
<script src="<c:url value="/js/manboard/manageBoard.js"/>"></script>

<section id="post">
	<div class="container">
		<div class="name">
			<i class="far fa-list-alt" aria-hidden="true"></i> 관리자 게시판
		</div>
		<div class="list">
			<table class="table table-hover">
				<thead>
					<tr>
						<th class="title">카테고리 전체보기</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${man_boardlist}" var="manlist">
						<tr>
							<td><b>${manlist.mabNm}</b></td>
						</tr>
						<c:forEach items="${sub_boardlist}" var="sublist">
							<c:if test="${manlist.mabId eq sublist.mabId}">
								<tr>
									<td>&nbsp;&nbsp;&nbsp; └${sublist.subNm}</td>
								</tr>
							</c:if>
						</c:forEach>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="list1">
			<form name="manboardForm">
				<table id="yuri">
					<tr>
						<td>게시판 구분</td>
						<td>
							<select name="boardGubun" onchange="go_boardGubun(this);">
								<option value="X">구분 선택</option>
								<option value="M">메인게시판</option>
								<option value="S">서브게시판</option>
							</select>
						</td>
					</tr>
				</table>
				<table>
					<tr>
						<td>게시판 명</td>
						<td><input type=text name="" size=35></td>
					</tr>
					<tr>
						<td>공개설정</td>
						<td>
							<input type="radio" name="memory" value="1">공개 
							&nbsp;&nbsp;
							<input type="radio" name="memory" value="2">비공개
						</td>
					</tr>
					<td>카테고리 정렬 </td>
					<td>
						<button id="up">위</button>
						<button id="down">아래</button>
					</td>
				</table>
			</form>
		</div>


		<div class="form-group">
			<div class="col-sm-12 text-right">
				<button class="btn btn-primary" type="submit" data-toggle="modal"
					data-target="#myModal">
					등록 <i class="fa fa-check spaceLeft"></i>
				</button>
				<button class="btn btn-warning" type="submit" data-toggle="modal"
					data-target="#myModal2">
					<i class="fas fa-sync-alt"></i> 수정

				</button>
				<button class="btn btn-danger" data-toggle="modal"
					data-target="#myModal3">
					삭제 <i class="fa fa-times spaceLeft"></i>
				</button>
			</div>
		</div>
	</div>
</section>
<%@ include file="../common/footer.jsp"%>

