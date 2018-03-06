<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<title>게시글 작성</title>
<%@ include file="../common/header.jsp"%>
<%@ include file="../menu/topMenu.jsp"%>
<%@ include file="../menu/leftMenu.jsp"%>
<style>@import url("<c:url value="/css/board/list.css"/>");</style>
<script src="<c:url value="/js/board/write.js"/>"></script>
<style>


</style>


<body>
	<section id="post">
		<div class="container">
			<form id="boardForm">
				<table class="table table-hover">
					<caption>게시글 작성</caption>

					<tfoot>
						<td>제 목</td>
						<td><input type="text" name="usbTitle" size="80"
							placeholder="제목을 입력해주세요"></td>

						<tr>
							<td>내용</td>
							<td><textarea name="usbContent" rows="10" cols="100"
									style="width: 600px; height: 400px" placeholder="내용을 입력해주세요"></textarea></td>
						</tr>
						<c:if test="${sessionScope.user != null}">
							<tr>
								<td>아이디</td>
								<td><input type="text" name="userId" size="25"
									value="${ sessionScope.user.loginId }" readonly></td>
							</tr>
						</c:if>
					</tfoot>
				</table>
			</form>
			

	<div class="form-group">
			<div class="col-sm-12 text-right">
				<button class="btn btn-primary"  id="addBtn" >
					 <i class="fa fa-check spaceLeft"></i>등록
				</button>
			
				<button class="btn btn-danger" id="listBtn" onclick="menuUrl('main', urlForm)" >
					 <i class="fa fa-times spaceLeft"></i>취소
				</button>
			
			</div>
		</div>
		
		
		<div class="modal fade" id="resultModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title" id="msg"></h4>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
<%@ include file="../common/footer.jsp"%>