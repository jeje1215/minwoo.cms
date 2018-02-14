<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>
<%@ include file="../menu/topMenu.jsp"%>
<%@ include file="../menu/leftMenu.jsp"%>

<style>@import url("<c:url value="/css/manad/manad.css"/>");</style>
<script src="<c:url value="/js/manad/manAd.js"/>"></script>

<!-- 광고작성자는 null 값입니다. db 오류 입니다 . -->
<!-- 페이지 번호 순서대로 하는것 해야합니다.  -->


<body>
	<section id="post">
		<div class="container">
			<br>
<!-- 			<div class="d1"> -->
<!-- 				<select> -->
<!-- 					<option value="">매체</option> -->
<!-- 					<option value="제목">광고 종류</option> -->
<!-- 					<option value="날짜">시작일</option> -->
<!-- 					<option value="조회수">만료일</option> -->
<!-- 					<option value="조회수">금액</option> -->
<!-- 					<option value="조회수">관리자</option> -->
<!-- 				</select> -->
<!-- 				<div class="form"> -->
<!-- 					<input type="text" placeholder="검색어 입력"> -->
<!-- 					<button type="submit"></button> -->
<!-- 				</div> -->
<!-- 			</div> -->


			<h3>Cms.광고관리</h3>
			<div class="btn-group-center">
				<button type="button" class="btn btn-primary btn-md" id="addBtn">
					<i class="glyphicon glyphicon-ok"></i> 등록
				</button>
				<button type="button" class="btn btn-success btn-md" id="listBtn">
					<i class="glyphicon glyphicon-list-alt"></i> 목록
				</button>
				<button type="button" class="btn btn-warning btn-md" id="updateBtn">
					<i class="glyphicon glyphicon-refresh"></i> 수정
				</button>
				<button type="button" class="btn btn-danger btn-md" id="delBtnAd">
					<i class="glyphicon glyphicon-trash"></i> 삭제
				</button>
			</div>
			<br>

		<table class="table table-hover" >
			<thead>
				<tr>
					<th>번호</th>
					<th>광고이름</th>
					<th>광고관리자</th>
					<th>광고금액</th>
					<th>광고시작일</th>
					<th>광고종료일</th>
					<th>광고작성자</th> 
					<th>광고Url</th>
				</tr>
			</thead>
			<form id="adFormAdd">
				<input type="text" name="adsId_tmp" style="display:none;">
				<tr>
					<td></td>
					<td><input type="text" name="adsCompany" value="" ></td>
					<td><input type="text" name="adsMan" value="" ></td>
					<td><input type="text" name="adsMoney" value=""></td>
					<td><input type="text" name="adsStartDate" value="" ></td>
					<td><input type="text" name="adsEndDate" value="" ></td>
					<td><input type="text" name="userId" value=""></td>
					<td><input type="text" name="adsUrl" value="" ></td>
				</tr>
			</form>
		<tbody id="adList">
		</tbody>
	</table>

	<br> <br>
<!-- 			<div class="text-center">
				<ul class="pagination">
					<li class="disabled"><a href="#"><span
							class="glyphicon glyphicon-chevron-left"></span></a></li>
					<li class="active"><a href="#">1</a></li>
					<li><a href="#"><span
							class="glyphicon glyphicon-chevron-right"></span></a></li>
				</ul>
			</div>
 -->
		<div class="modal fade" id="resultModal">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title" id="msg"></h4>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>
</div>
</section>

<%@ include file="../common/footer.jsp"%>