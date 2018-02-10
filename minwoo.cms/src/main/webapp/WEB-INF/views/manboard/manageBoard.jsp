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
						<c:forEach items="${boardlist}" var="boardls">
							<tr>
								<td><b>${boardls.mabNm}</b></td>
							</tr>
							<c:forEach items="${boardlist}" var="boardls">
								<tr>
									<td>	└욥!!</td>
								</tr>
							</c:forEach>
						</c:forEach>					
					</tbody>
				</table>
			</div>
			<div class="list1">
				<form name="manboardForm">
					<table id="yuri">
						<tr>
							<td>카테고리 명 공백</td>
							<td><input type=text name=title size=35></td>
						</tr>
						<!--             <tr> -->
						<!--                <td></td> -->
						<!--                <td><input type="checkbox" id="cb1" />게시판명 앞에 포스트수표시 <select -->
						<!--                   name="category"> -->
						<!--                      <option value="">분류선택</option> -->
						<!--                      <option value="일반">일반</option> -->
						<!--                      <option value="일반">공지사항</option> -->
						<!--                </select></td> -->
						<!--             </tr> -->
						<tr>
							<td>공개설정</td>
							<td><input type="radio" name="memory" value="1">공개 <input
								type="radio" name="memory" value="2">비공개<br></td>
						</tr>
						<td>카테고리 정렬 ▶</td>
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

