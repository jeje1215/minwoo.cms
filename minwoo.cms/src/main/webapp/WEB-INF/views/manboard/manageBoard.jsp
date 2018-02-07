<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../common/header.jsp"%>
<%@ include file="../menu/topMenu.jsp"%>
<%@ include file="../menu/leftMenu.jsp"%>
<style>@import url("<c:url value="/css/manboard/manageBoard.css"/>");</style>
<script src="<c:url value="/js/manboard/manageBoard.js"/>"></script>

<section id="post">
	<div class="container">
		<div class="name">
			<i class="far fa-list-alt" aria-hidden="true"></i> 게시판 관리
		</div>
		<div class="list">
			<table class="table table-hover">
				<thead>
					<tr>
						<th class="title">카테고리 전체보기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><strong>게시판</strong></td>
					</tr>
					<tr>
						<td>일상</td>
					</tr>
					<tr>
						<td>냠냠</td>
					</tr>
					<tr>
						<td><strong>여행</strong></td>
					</tr>
					<tr>
						<td>유럽</td>
					</tr>
					<tr>
						<td>태국</td>
					</tr>
					<tr>
						<td>베트남</td>
					</tr>
					<tr>
						<td>홍콩</td>
					</tr>
					<tr>
						<td>마카오</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="list1">
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
				<!--             <tr> -->
				<!--                <td>글쓰기 권한</td> -->
				<!--                <td><select name="category"> -->
				<!--                      <option value="">분류선택</option> -->
				<!--                      <option value="일반">나만 쓰는 게시판</option> -->
				<!--                      <option value="일반">공용 게시판</option> -->
				<!--                </select></td> -->
				<!--             <tr> -->
				<td>카테고리 정렬 ▶</td>
				<td><button id="up">위</button>
					<button id="down">아래</button> <!--                   <button id="left">왼쪽</button> -->
					<!--                   <button id="right">오른쪽</button>  --></td>
				</tr>
				<!--             <tr> -->
				<!--                <td>카테고리 접기</td> -->
				<!--                <td><input type="radio" name="show" value="1">펼치기 <input -->
				<!--                   type="radio" name="show" value="2">접기<br></td> -->
				<!--             </tr> -->
			</table>
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

